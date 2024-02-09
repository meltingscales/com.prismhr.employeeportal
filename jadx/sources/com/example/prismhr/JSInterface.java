package com.example.prismhr;

import android.content.Context;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/example/prismhr/JSInterface;", "", "context", "Landroid/content/Context;", "browser", "Landroid/webkit/WebView;", "(Landroid/content/Context;Landroid/webkit/WebView;)V", "callWebKit", "", NotificationCompat.CATEGORY_MESSAGE, "", "app_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class JSInterface {
    private final WebView browser;
    private final Context context;

    public JSInterface(Context context, WebView browser) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(browser, "browser");
        this.context = context;
        this.browser = browser;
    }

    @JavascriptInterface
    public final void callWebKit(final String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (Intrinsics.areEqual(msg, "qr-code")) {
            this.browser.post(new Runnable() { // from class: com.example.prismhr.JSInterface$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    JSInterface.m35callWebKit$lambda0(JSInterface.this);
                }
            });
        } else {
            this.browser.post(new Runnable() { // from class: com.example.prismhr.JSInterface$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    JSInterface.m36callWebKit$lambda1(JSInterface.this, msg);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: callWebKit$lambda-0  reason: not valid java name */
    public static final void m35callWebKit$lambda0(JSInterface this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((MainActivity) this$0.context).scanQRCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: callWebKit$lambda-1  reason: not valid java name */
    public static final void m36callWebKit$lambda1(JSInterface this$0, String msg) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        ((MainActivity) this$0.context).getUrlFromAccessCode(msg);
    }
}
