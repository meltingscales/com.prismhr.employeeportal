package com.google.androidbrowserhelper.trusted;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.TrustedWebUtils;
import androidx.browser.trusted.Token;
import androidx.browser.trusted.TokenStore;
import androidx.browser.trusted.TrustedWebActivityIntent;
import androidx.browser.trusted.TrustedWebActivityIntentBuilder;
import com.google.androidbrowserhelper.trusted.TwaProviderPicker;
import com.google.androidbrowserhelper.trusted.splashscreens.SplashScreenStrategy;

/* loaded from: classes.dex */
public class TwaLauncher {
    private static final int DEFAULT_SESSION_ID = 96375;
    private static final String TAG = "TwaLauncher";
    private Context mContext;
    private boolean mDestroyed;
    private final int mLaunchMode;
    private final String mProviderPackage;
    private TwaCustomTabsServiceConnection mServiceConnection;
    private CustomTabsSession mSession;
    private final int mSessionId;
    private TokenStore mTokenStore;
    public static final FallbackStrategy CCT_FALLBACK_STRATEGY = new FallbackStrategy() { // from class: com.google.androidbrowserhelper.trusted.TwaLauncher$$ExternalSyntheticLambda0
        @Override // com.google.androidbrowserhelper.trusted.TwaLauncher.FallbackStrategy
        public final void launch(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, String str, Runnable runnable) {
            TwaLauncher.lambda$static$0(context, trustedWebActivityIntentBuilder, str, runnable);
        }
    };
    public static final FallbackStrategy WEBVIEW_FALLBACK_STRATEGY = new FallbackStrategy() { // from class: com.google.androidbrowserhelper.trusted.TwaLauncher$$ExternalSyntheticLambda1
        @Override // com.google.androidbrowserhelper.trusted.TwaLauncher.FallbackStrategy
        public final void launch(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, String str, Runnable runnable) {
            TwaLauncher.lambda$static$1(context, trustedWebActivityIntentBuilder, str, runnable);
        }
    };

    /* loaded from: classes.dex */
    public interface FallbackStrategy {
        void launch(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, String str, Runnable runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$static$0(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, String str, Runnable runnable) {
        CustomTabsIntent buildCustomTabsIntent = trustedWebActivityIntentBuilder.buildCustomTabsIntent();
        if (str != null) {
            buildCustomTabsIntent.intent.setPackage(str);
        }
        if (ChromeOsSupport.isRunningOnArc(context.getPackageManager())) {
            buildCustomTabsIntent.intent.putExtra(TrustedWebUtils.EXTRA_LAUNCH_AS_TRUSTED_WEB_ACTIVITY, true);
        }
        buildCustomTabsIntent.launchUrl(context, trustedWebActivityIntentBuilder.getUri());
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$static$1(Context context, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, String str, Runnable runnable) {
        context.startActivity(WebViewFallbackActivity.createLaunchIntent(context, trustedWebActivityIntentBuilder.getUri(), LauncherActivityMetadata.parse(context)));
        if (runnable != null) {
            runnable.run();
        }
    }

    public TwaLauncher(Context context) {
        this(context, null);
    }

    public TwaLauncher(Context context, String str) {
        this(context, str, DEFAULT_SESSION_ID, new SharedPreferencesTokenStore(context));
    }

    public TwaLauncher(Context context, String str, int i, TokenStore tokenStore) {
        this.mContext = context;
        this.mSessionId = i;
        this.mTokenStore = tokenStore;
        if (str == null) {
            TwaProviderPicker.Action pickProvider = TwaProviderPicker.pickProvider(context.getPackageManager());
            this.mProviderPackage = pickProvider.provider;
            this.mLaunchMode = pickProvider.launchMode;
            return;
        }
        this.mProviderPackage = str;
        this.mLaunchMode = 0;
    }

    public void launch(Uri uri) {
        launch(new TrustedWebActivityIntentBuilder(uri), new QualityEnforcer(), null, null, null);
    }

    public void launch(TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, CustomTabsCallback customTabsCallback, SplashScreenStrategy splashScreenStrategy, Runnable runnable, FallbackStrategy fallbackStrategy) {
        if (this.mDestroyed) {
            throw new IllegalStateException("TwaLauncher already destroyed");
        }
        if (this.mLaunchMode == 0) {
            launchTwa(trustedWebActivityIntentBuilder, customTabsCallback, splashScreenStrategy, runnable, fallbackStrategy);
        } else {
            fallbackStrategy.launch(this.mContext, trustedWebActivityIntentBuilder, this.mProviderPackage, runnable);
        }
        if (ChromeOsSupport.isRunningOnArc(this.mContext.getPackageManager())) {
            return;
        }
        this.mTokenStore.store(Token.create(this.mProviderPackage, this.mContext.getPackageManager()));
    }

    public void launch(TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, CustomTabsCallback customTabsCallback, SplashScreenStrategy splashScreenStrategy, Runnable runnable) {
        launch(trustedWebActivityIntentBuilder, customTabsCallback, splashScreenStrategy, runnable, CCT_FALLBACK_STRATEGY);
    }

    private void launchTwa(final TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, CustomTabsCallback customTabsCallback, final SplashScreenStrategy splashScreenStrategy, final Runnable runnable, final FallbackStrategy fallbackStrategy) {
        if (splashScreenStrategy != null) {
            splashScreenStrategy.onTwaLaunchInitiated(this.mProviderPackage, trustedWebActivityIntentBuilder);
        }
        Runnable runnable2 = new Runnable() { // from class: com.google.androidbrowserhelper.trusted.TwaLauncher$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TwaLauncher.this.m43x790cbe22(trustedWebActivityIntentBuilder, splashScreenStrategy, runnable);
            }
        };
        if (this.mSession != null) {
            runnable2.run();
            return;
        }
        Runnable runnable3 = new Runnable() { // from class: com.google.androidbrowserhelper.trusted.TwaLauncher$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                TwaLauncher.this.m44x6476fa3(fallbackStrategy, trustedWebActivityIntentBuilder, runnable);
            }
        };
        if (this.mServiceConnection == null) {
            this.mServiceConnection = new TwaCustomTabsServiceConnection(customTabsCallback);
        }
        this.mServiceConnection.setSessionCreationRunnables(runnable2, runnable3);
        CustomTabsClient.bindCustomTabsServicePreservePriority(this.mContext, this.mProviderPackage, this.mServiceConnection);
    }

    /* renamed from: lambda$launchTwa$3$com-google-androidbrowserhelper-trusted-TwaLauncher  reason: not valid java name */
    public /* synthetic */ void m44x6476fa3(FallbackStrategy fallbackStrategy, TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, Runnable runnable) {
        fallbackStrategy.launch(this.mContext, trustedWebActivityIntentBuilder, this.mProviderPackage, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: launchWhenSessionEstablished */
    public void m43x790cbe22(final TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, SplashScreenStrategy splashScreenStrategy, final Runnable runnable) {
        CustomTabsSession customTabsSession = this.mSession;
        if (customTabsSession == null) {
            throw new IllegalStateException("mSession is null in launchWhenSessionEstablished");
        }
        if (splashScreenStrategy != null) {
            splashScreenStrategy.configureTwaBuilder(trustedWebActivityIntentBuilder, customTabsSession, new Runnable() { // from class: com.google.androidbrowserhelper.trusted.TwaLauncher$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    TwaLauncher.this.m45x7c9e7502(trustedWebActivityIntentBuilder, runnable);
                }
            });
        } else {
            m45x7c9e7502(trustedWebActivityIntentBuilder, runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: launchWhenSplashScreenReady */
    public void m45x7c9e7502(TrustedWebActivityIntentBuilder trustedWebActivityIntentBuilder, Runnable runnable) {
        if (this.mDestroyed || this.mSession == null) {
            return;
        }
        Log.d(TAG, "Launching Trusted Web Activity.");
        TrustedWebActivityIntent build = trustedWebActivityIntentBuilder.build(this.mSession);
        FocusActivity.addToIntent(build.getIntent(), this.mContext);
        build.launchTrustedWebActivity(this.mContext);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void destroy() {
        if (this.mDestroyed) {
            return;
        }
        TwaCustomTabsServiceConnection twaCustomTabsServiceConnection = this.mServiceConnection;
        if (twaCustomTabsServiceConnection != null) {
            this.mContext.unbindService(twaCustomTabsServiceConnection);
        }
        this.mContext = null;
        this.mDestroyed = true;
    }

    public String getProviderPackage() {
        return this.mProviderPackage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TwaCustomTabsServiceConnection extends CustomTabsServiceConnection {
        private CustomTabsCallback mCustomTabsCallback;
        private Runnable mOnSessionCreatedRunnable;
        private Runnable mOnSessionCreationFailedRunnable;

        TwaCustomTabsServiceConnection(CustomTabsCallback customTabsCallback) {
            this.mCustomTabsCallback = customTabsCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSessionCreationRunnables(Runnable runnable, Runnable runnable2) {
            this.mOnSessionCreatedRunnable = runnable;
            this.mOnSessionCreationFailedRunnable = runnable2;
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            Runnable runnable;
            Runnable runnable2;
            if (!ChromeLegacyUtils.supportsLaunchWithoutWarmup(TwaLauncher.this.mContext.getPackageManager(), TwaLauncher.this.mProviderPackage)) {
                customTabsClient.warmup(0L);
            }
            TwaLauncher twaLauncher = TwaLauncher.this;
            twaLauncher.mSession = customTabsClient.newSession(this.mCustomTabsCallback, twaLauncher.mSessionId);
            if (TwaLauncher.this.mSession == null || (runnable2 = this.mOnSessionCreatedRunnable) == null) {
                if (TwaLauncher.this.mSession == null && (runnable = this.mOnSessionCreationFailedRunnable) != null) {
                    runnable.run();
                }
            } else {
                runnable2.run();
            }
            this.mOnSessionCreatedRunnable = null;
            this.mOnSessionCreationFailedRunnable = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            TwaLauncher.this.mSession = null;
        }
    }
}
