package com.google.androidbrowserhelper.trusted;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsService;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class TwaProviderPicker {
    private static final String TAG = "TWAProviderPicker";
    private static String sPackageNameForTesting;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LaunchMode {
        public static final int BROWSER = 2;
        public static final int CUSTOM_TAB = 1;
        public static final int TRUSTED_WEB_ACTIVITY = 0;
    }

    /* loaded from: classes.dex */
    public static class Action {
        public final int launchMode;
        public final String provider;

        public Action(int i, String str) {
            this.launchMode = i;
            this.provider = str;
        }
    }

    public static Action pickProvider(PackageManager packageManager) {
        String str = null;
        Intent data = new Intent().setAction("android.intent.action.VIEW").addCategory("android.intent.category.BROWSABLE").setData(Uri.fromParts("http", "", null));
        String str2 = sPackageNameForTesting;
        if (str2 != null) {
            data.setPackage(str2);
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(data, 65536);
        if (Build.VERSION.SDK_INT >= 23) {
            queryIntentActivities.addAll(packageManager.queryIntentActivities(data, 131072));
        }
        Map<String, Integer> launchModesForCustomTabsServices = getLaunchModesForCustomTabsServices(packageManager);
        String str3 = null;
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str4 = resolveInfo.activityInfo.packageName;
            int intValue = launchModesForCustomTabsServices.containsKey(str4) ? launchModesForCustomTabsServices.get(str4).intValue() : 2;
            if (intValue == 0) {
                Log.d(TAG, "Found TWA provider, finishing search: " + str4);
                return new Action(0, str4);
            } else if (intValue == 1) {
                Log.d(TAG, "Found Custom Tabs provider: " + str4);
                if (str == null) {
                    str = str4;
                }
            } else if (intValue == 2) {
                Log.d(TAG, "Found browser: " + str4);
                if (str3 == null) {
                    str3 = str4;
                }
            }
        }
        if (str != null) {
            Log.d(TAG, "Found no TWA providers, using first Custom Tabs provider: " + str);
            return new Action(1, str);
        }
        Log.d(TAG, "Found no TWA providers, using first browser: " + str3);
        return new Action(2, str3);
    }

    static void restrictToPackageForTesting(String str) {
        sPackageNameForTesting = str;
    }

    private static Map<String, Integer> getLaunchModesForCustomTabsServices(PackageManager packageManager) {
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 64);
        HashMap hashMap = new HashMap();
        for (ResolveInfo resolveInfo : queryIntentServices) {
            String str = resolveInfo.serviceInfo.packageName;
            int i = 0;
            if (ChromeLegacyUtils.supportsTrustedWebActivities(packageManager, str)) {
                hashMap.put(str, 0);
            } else {
                if (resolveInfo.filter != null && resolveInfo.filter.hasCategory(CustomTabsService.TRUSTED_WEB_ACTIVITY_CATEGORY)) {
                    i = 1;
                }
                hashMap.put(str, Integer.valueOf(i ^ 1));
            }
        }
        return hashMap;
    }
}
