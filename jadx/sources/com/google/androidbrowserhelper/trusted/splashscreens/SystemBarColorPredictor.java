package com.google.androidbrowserhelper.trusted.splashscreens;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.trusted.TrustedWebActivityIntentBuilder;
import com.google.androidbrowserhelper.trusted.ChromeLegacyUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
class SystemBarColorPredictor {
    private Map<String, SupportedFeatures> mSupportedFeaturesCache = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getExpectedStatusBarColor(Context context, String str, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder) {
        Intent intent = trustedWebActivityIntentBuilder.buildCustomTabsIntent().intent;
        if (providerSupportsColorSchemeParams(context, str)) {
            return CustomTabsIntent.getColorSchemeParams(intent, getExpectedColorScheme(context, trustedWebActivityIntentBuilder)).toolbarColor;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        return (Integer) extras.get(CustomTabsIntent.EXTRA_TOOLBAR_COLOR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getExpectedNavbarColor(Context context, String str, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder) {
        Intent intent = trustedWebActivityIntentBuilder.buildCustomTabsIntent().intent;
        if (!providerSupportsNavBarColorCustomization(context, str)) {
            return ChromeLegacyUtils.usesWhiteNavbar(str) ? -1 : null;
        } else if (providerSupportsColorSchemeParams(context, str)) {
            return CustomTabsIntent.getColorSchemeParams(intent, getExpectedColorScheme(context, trustedWebActivityIntentBuilder)).navigationBarColor;
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return null;
            }
            return (Integer) extras.get(CustomTabsIntent.EXTRA_NAVIGATION_BAR_COLOR);
        }
    }

    private boolean providerSupportsNavBarColorCustomization(Context context, String str) {
        return getSupportedFeatures(context, str).navbarColorCustomization;
    }

    private boolean providerSupportsColorSchemeParams(Context context, String str) {
        return getSupportedFeatures(context, str).colorSchemeCustomization;
    }

    private SupportedFeatures getSupportedFeatures(Context context, String str) {
        SupportedFeatures supportedFeatures = this.mSupportedFeaturesCache.get(str);
        if (supportedFeatures != null) {
            return supportedFeatures;
        }
        if (ChromeLegacyUtils.supportsNavbarAndColorCustomization(context.getPackageManager(), str)) {
            SupportedFeatures supportedFeatures2 = new SupportedFeatures(true, true);
            this.mSupportedFeaturesCache.put(str, supportedFeatures2);
            return supportedFeatures2;
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(new Intent().setAction(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION).setPackage(str), 64);
        SupportedFeatures supportedFeatures3 = new SupportedFeatures(hasCategory(resolveService, CustomTabsService.CATEGORY_NAVBAR_COLOR_CUSTOMIZATION), hasCategory(resolveService, CustomTabsService.CATEGORY_COLOR_SCHEME_CUSTOMIZATION));
        this.mSupportedFeaturesCache.put(str, supportedFeatures3);
        return supportedFeatures3;
    }

    private static boolean hasCategory(ResolveInfo resolveInfo, String str) {
        return (resolveInfo == null || resolveInfo.filter == null || !resolveInfo.filter.hasCategory(str)) ? false : true;
    }

    private static int getExpectedColorScheme(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder) {
        Bundle extras = trustedWebActivityIntentBuilder.buildCustomTabsIntent().intent.getExtras();
        Integer num = extras == null ? null : (Integer) extras.get(CustomTabsIntent.EXTRA_COLOR_SCHEME);
        if (num == null || num.intValue() == 0) {
            return (context.getResources().getConfiguration().uiMode & 48) == 32 ? 2 : 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SupportedFeatures {
        public final boolean colorSchemeCustomization;
        public final boolean navbarColorCustomization;

        private SupportedFeatures(boolean z, boolean z2) {
            this.navbarColorCustomization = z;
            this.colorSchemeCustomization = z2;
        }
    }
}
