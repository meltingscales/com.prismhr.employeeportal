.class public final Lcom/example/prismhr/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u000fJ\"\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u000fH\u0014J\u000e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u000fJ\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0003J\u0008\u0010\"\u001a\u00020\u000fH\u0002J\u0008\u0010#\u001a\u00020\u000fH\u0002J\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/example/prismhr/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "accessCodeAPIEndpoint",
        "",
        "browser",
        "Landroid/webkit/WebView;",
        "customTabs",
        "Landroidx/browser/customtabs/CustomTabsIntent;",
        "qrScanIntegrator",
        "Lcom/google/zxing/integration/android/IntentIntegrator;",
        "siteOpen",
        "",
        "getUrl",
        "getUrlFromAccessCode",
        "",
        "code",
        "launchSite",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "saveUrl",
        "url",
        "scanQRCode",
        "setupBrowser",
        "context",
        "Landroid/content/Context;",
        "setupCustomTabs",
        "setupScanner",
        "showAlert",
        "title",
        "msg",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final accessCodeAPIEndpoint:Ljava/lang/String;

.field private browser:Landroid/webkit/WebView;

.field private customTabs:Landroidx/browser/customtabs/CustomTabsIntent;

.field private qrScanIntegrator:Lcom/google/zxing/integration/android/IntentIntegrator;

.field private siteOpen:Z


# direct methods
.method public static synthetic $r8$lambda$1RqUvGiJDQalRdbUcWmLMWP_aZo(Lcom/example/prismhr/MainActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/prismhr/MainActivity;->getUrlFromAccessCode$lambda-4(Lcom/example/prismhr/MainActivity;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8uyRXNES5VTmGYq9r5-qfS2PLGw(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/prismhr/MainActivity;->showAlert$lambda-2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vz8K_6n-92u1Lzw2Rym9c9ywHpE(Lcom/example/prismhr/MainActivity;Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/prismhr/MainActivity;->getUrlFromAccessCode$lambda-3(Lcom/example/prismhr/MainActivity;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "https://epycorp-ep.prismhr.com/apis/ep/peos?fwdClientCode="

    .line 21
    iput-object v0, p0, Lcom/example/prismhr/MainActivity;->accessCodeAPIEndpoint:Ljava/lang/String;

    return-void
.end method

.method private static final getUrlFromAccessCode$lambda-3(Lcom/example/prismhr/MainActivity;Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Invalid Access Code"

    const-string v0, "Please try again."

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/example/prismhr/MainActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rootHostname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/auth/#/login?lang=en"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/example/prismhr/MainActivity;->saveUrl(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->launchSite()V

    :goto_0
    return-void
.end method

.method private static final getUrlFromAccessCode$lambda-4(Lcom/example/prismhr/MainActivity;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Invalid Access Code"

    const-string v0, "Please try again."

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/example/prismhr/MainActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setupBrowser(Landroid/content/Context;)V
    .locals 5

    const p1, 0x7f080160

    .line 50
    invoke-virtual {p0, p1}, Lcom/example/prismhr/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.prismWebView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    const/4 v0, 0x0

    const-string v1, "browser"

    if-nez p1, :cond_0

    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    iget-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 53
    iget-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 54
    iget-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 55
    iget-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    new-instance v2, Lcom/example/prismhr/JSInterface;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez v4, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v0

    :cond_5
    invoke-direct {v2, v3, v4}, Lcom/example/prismhr/JSInterface;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    const-string v3, "Android"

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/example/prismhr/MainActivity;->browser:Landroid/webkit/WebView;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, p1

    :goto_0
    const-string p1, "file:///android_asset/index.html"

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final setupCustomTabs()V
    .locals 3

    .line 64
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 68
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050021

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const v2, 0x7f050019

    .line 69
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSecondaryToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "Builder()\n      .setUrlB\u2026ial_dark))\n      .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object v0, p0, Lcom/example/prismhr/MainActivity;->customTabs:Landroidx/browser/customtabs/CustomTabsIntent;

    if-nez v0, :cond_0

    const-string v0, "customTabs"

    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private final setupScanner()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/prismhr/MainActivity;->qrScanIntegrator:Lcom/google/zxing/integration/android/IntentIntegrator;

    return-void
.end method

.method private static final showAlert$lambda-2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/example/prismhr/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "prismUrl"

    .line 84
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrlFromAccessCode(Ljava/lang/String;)V
    .locals 8

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "newRequestQueue(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/example/prismhr/MainActivity;->accessCodeAPIEndpoint:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    new-instance p1, Lcom/android/volley/toolbox/JsonArrayRequest;

    new-instance v6, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/example/prismhr/MainActivity;)V

    new-instance v7, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/example/prismhr/MainActivity;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 123
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public final launchSite()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/example/prismhr/MainActivity;->customTabs:Landroidx/browser/customtabs/CustomTabsIntent;

    if-nez v1, :cond_1

    const-string v1, "customTabs"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/example/prismhr/MainActivity;->siteOpen:Z

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "No QR Code found."

    const-string p2, "Please try again."

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/example/prismhr/MainActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    const-string p2, "result.contents"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/example/prismhr/MainActivity;->saveUrl(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->launchSite()V

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    const-string p2, "QR Code read scan error."

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/example/prismhr/MainActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :goto_0
    const p1, 0x7f0b001c

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/prismhr/MainActivity;->setContentView(I)V

    .line 33
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/example/prismhr/MainActivity;->setupBrowser(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/example/prismhr/MainActivity;->setupScanner()V

    .line 35
    invoke-direct {p0}, Lcom/example/prismhr/MainActivity;->setupCustomTabs()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "-->"

    const-string v1, "Resumed"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 41
    iget-boolean v0, p0, Lcom/example/prismhr/MainActivity;->siteOpen:Z

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->launchSite()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/example/prismhr/MainActivity;->siteOpen:Z

    :goto_0
    return-void
.end method

.method public final saveUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/example/prismhr/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prismUrl"

    .line 77
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final scanQRCode()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/example/prismhr/MainActivity;->qrScanIntegrator:Lcom/google/zxing/integration/android/IntentIntegrator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :goto_0
    return-void
.end method

.method public final showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v1, "OK"

    .line 100
    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda0;

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 103
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
