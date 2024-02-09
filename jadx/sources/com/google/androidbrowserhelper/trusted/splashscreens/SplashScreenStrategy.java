package com.google.androidbrowserhelper.trusted.splashscreens;

import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.trusted.TrustedWebActivityIntentBuilder;

/* loaded from: classes.dex */
public interface SplashScreenStrategy {
    void configureTwaBuilder(TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, CustomTabsSession customTabsSession, Runnable runnable);

    void onTwaLaunchInitiated(String str, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder);
}
