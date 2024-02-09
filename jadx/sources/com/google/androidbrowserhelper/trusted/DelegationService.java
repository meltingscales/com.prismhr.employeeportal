package com.google.androidbrowserhelper.trusted;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.browser.trusted.Token;
import androidx.browser.trusted.TokenStore;
import androidx.browser.trusted.TrustedWebActivityCallbackRemote;
import androidx.browser.trusted.TrustedWebActivityService;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DelegationService extends TrustedWebActivityService {
    private final List<ExtraCommandHandler> mExtraCommandHandlers = new ArrayList();
    private SharedPreferencesTokenStore mTokenStore;

    @Override // androidx.browser.trusted.TrustedWebActivityService
    public TokenStore getTokenStore() {
        if (this.mTokenStore == null) {
            this.mTokenStore = new SharedPreferencesTokenStore(this);
            PackageManager packageManager = getPackageManager();
            if (ChromeOsSupport.isRunningOnArc(packageManager)) {
                this.mTokenStore.store(Token.create(ChromeOsSupport.ARC_PAYMENT_APP, packageManager));
            }
        }
        return this.mTokenStore;
    }

    @Override // androidx.browser.trusted.TrustedWebActivityService
    public Bundle onExtraCommand(String str, Bundle bundle, TrustedWebActivityCallbackRemote trustedWebActivityCallbackRemote) {
        for (ExtraCommandHandler extraCommandHandler : this.mExtraCommandHandlers) {
            Bundle handleExtraCommand = extraCommandHandler.handleExtraCommand(this, str, bundle, trustedWebActivityCallbackRemote);
            if (handleExtraCommand.getBoolean(ExtraCommandHandler.EXTRA_COMMAND_SUCCESS)) {
                return handleExtraCommand;
            }
        }
        return Bundle.EMPTY;
    }

    public void registerExtraCommandHandler(ExtraCommandHandler extraCommandHandler) {
        this.mExtraCommandHandlers.add(extraCommandHandler);
    }
}
