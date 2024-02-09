package com.google.androidbrowserhelper.trusted;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Base64;
import androidx.browser.trusted.Token;
import androidx.browser.trusted.TokenStore;

/* loaded from: classes.dex */
public class SharedPreferencesTokenStore implements TokenStore {
    private static final String KEY_TOKEN = "SharedPreferencesTokenStore.TOKEN";
    private static final String SHARED_PREFERENCES_NAME = "com.google.androidbrowserhelper";
    private Context mContext;

    public SharedPreferencesTokenStore(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override // androidx.browser.trusted.TokenStore
    public void store(Token token) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("com.google.androidbrowserhelper", 0);
        if (token == null) {
            sharedPreferences.edit().remove(KEY_TOKEN).apply();
            return;
        }
        sharedPreferences.edit().putString(KEY_TOKEN, Base64.encodeToString(token.serialize(), 3)).apply();
    }

    @Override // androidx.browser.trusted.TokenStore
    public Token load() {
        String string = this.mContext.getSharedPreferences("com.google.androidbrowserhelper", 0).getString(KEY_TOKEN, null);
        if (string == null) {
            return null;
        }
        return Token.deserialize(Base64.decode(string, 3));
    }

    public void setVerifiedProvider(String str, PackageManager packageManager) {
        store(Token.create(str, packageManager));
    }
}
