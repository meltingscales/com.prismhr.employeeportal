package com.example.prismhr;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u000fJ\"\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u000fH\u0014J\u000e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u000fJ\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0003J\b\u0010\"\u001a\u00020\u000fH\u0002J\b\u0010#\u001a\u00020\u000fH\u0002J\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/example/prismhr/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "accessCodeAPIEndpoint", "", "browser", "Landroid/webkit/WebView;", "customTabs", "Landroidx/browser/customtabs/CustomTabsIntent;", "qrScanIntegrator", "Lcom/google/zxing/integration/android/IntentIntegrator;", "siteOpen", "", "getUrl", "getUrlFromAccessCode", "", "code", "launchSite", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "saveUrl", "url", "scanQRCode", "setupBrowser", "context", "Landroid/content/Context;", "setupCustomTabs", "setupScanner", "showAlert", "title", NotificationCompat.CATEGORY_MESSAGE, "app_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MainActivity extends AppCompatActivity {
    private final String accessCodeAPIEndpoint = "https://epycorp-ep.prismhr.com/apis/ep/peos?fwdClientCode=";
    private WebView browser;
    private CustomTabsIntent customTabs;
    private IntentIntegrator qrScanIntegrator;
    private boolean siteOpen;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.hide();
        }
        setContentView(com.prismhr.employeeportal.R.layout.activity_main);
        setupBrowser(this);
        setupScanner();
        setupCustomTabs();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        Log.d("-->", "Resumed");
        super.onResume();
        if (!this.siteOpen) {
            launchSite();
        } else {
            this.siteOpen = false;
        }
    }

    private final void setupBrowser(Context context) {
        View findViewById = findViewById(com.prismhr.employeeportal.R.id.prismWebView);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.prismWebView)");
        WebView webView = (WebView) findViewById;
        this.browser = webView;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView = null;
        }
        webView.getSettings().setJavaScriptEnabled(true);
        WebView webView3 = this.browser;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView3 = null;
        }
        webView3.getSettings().setAllowContentAccess(true);
        WebView webView4 = this.browser;
        if (webView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView4 = null;
        }
        webView4.getSettings().setAllowFileAccess(true);
        WebView webView5 = this.browser;
        if (webView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView5 = null;
        }
        webView5.getSettings().setMixedContentMode(0);
        WebView webView6 = this.browser;
        if (webView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView6 = null;
        }
        MainActivity mainActivity = this;
        WebView webView7 = this.browser;
        if (webView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
            webView7 = null;
        }
        webView6.addJavascriptInterface(new JSInterface(mainActivity, webView7), "Android");
        WebView webView8 = this.browser;
        if (webView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("browser");
        } else {
            webView2 = webView8;
        }
        webView2.loadUrl("file:///android_asset/index.html");
    }

    private final void setupScanner() {
        this.qrScanIntegrator = new IntentIntegrator(this);
    }

    private final void setupCustomTabs() {
        MainActivity mainActivity = this;
        CustomTabsIntent build = new CustomTabsIntent.Builder().setUrlBarHidingEnabled(true).setShowTitle(false).setShareState(2).setToolbarColor(ContextCompat.getColor(mainActivity, com.prismhr.employeeportal.R.color.black)).setSecondaryToolbarColor(ContextCompat.getColor(mainActivity, com.prismhr.employeeportal.R.color.accent_material_dark)).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n      .setUrlB…ial_dark))\n      .build()");
        this.customTabs = build;
        if (build == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customTabs");
            build = null;
        }
        build.intent.addFlags(67108864);
    }

    public final void saveUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        SharedPreferences preferences = getPreferences(0);
        if (preferences == null) {
            return;
        }
        SharedPreferences.Editor edit = preferences.edit();
        edit.putString("prismUrl", url);
        edit.apply();
    }

    public final String getUrl() {
        SharedPreferences preferences = getPreferences(0);
        if (preferences == null) {
            return null;
        }
        return preferences.getString("prismUrl", null);
    }

    public final void launchSite() {
        String url = getUrl();
        if (url == null) {
            return;
        }
        CustomTabsIntent customTabsIntent = this.customTabs;
        if (customTabsIntent == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customTabs");
            customTabsIntent = null;
        }
        customTabsIntent.launchUrl(this, Uri.parse(url));
        this.siteOpen = true;
    }

    public final void showAlert(String title, String msg) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(msg, "msg");
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(msg).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.example.prismhr.MainActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        create.setTitle(title);
        create.show();
    }

    public final void getUrlFromAccessCode(String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        RequestQueue newRequestQueue = Volley.newRequestQueue(this);
        Intrinsics.checkNotNullExpressionValue(newRequestQueue, "newRequestQueue(this)");
        newRequestQueue.add(new JsonArrayRequest(0, Intrinsics.stringPlus(this.accessCodeAPIEndpoint, code), null, new Response.Listener() { // from class: com.example.prismhr.MainActivity$$ExternalSyntheticLambda2
            @Override // com.android.volley.Response.Listener
            public final void onResponse(Object obj) {
                MainActivity.m39getUrlFromAccessCode$lambda3(MainActivity.this, (JSONArray) obj);
            }
        }, new Response.ErrorListener() { // from class: com.example.prismhr.MainActivity$$ExternalSyntheticLambda1
            @Override // com.android.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                MainActivity.m40getUrlFromAccessCode$lambda4(MainActivity.this, volleyError);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getUrlFromAccessCode$lambda-3  reason: not valid java name */
    public static final void m39getUrlFromAccessCode$lambda3(MainActivity this$0, JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (jSONArray.length() == 0) {
            this$0.showAlert("Invalid Access Code", "Please try again.");
            return;
        }
        Object obj = jSONArray.get(0);
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
        JSONObject jSONObject = (JSONObject) obj;
        this$0.saveUrl("https://" + ((Object) jSONObject.getString("rootHostname")) + '/' + ((Object) jSONObject.getString("path")) + "/auth/#/login?lang=en");
        this$0.launchSite();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getUrlFromAccessCode$lambda-4  reason: not valid java name */
    public static final void m40getUrlFromAccessCode$lambda4(MainActivity this$0, VolleyError volleyError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showAlert("Invalid Access Code", "Please try again.");
    }

    public final void scanQRCode() {
        IntentIntegrator intentIntegrator = this.qrScanIntegrator;
        if (intentIntegrator == null) {
            return;
        }
        intentIntegrator.initiateScan();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        IntentResult parseActivityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        if (parseActivityResult != null) {
            if (parseActivityResult.getContents() == null) {
                showAlert("No QR Code found.", "Please try again.");
                return;
            }
            String contents = parseActivityResult.getContents();
            Intrinsics.checkNotNullExpressionValue(contents, "result.contents");
            saveUrl(contents);
            launchSite();
            return;
        }
        showAlert("Error", "QR Code read scan error.");
    }
}
