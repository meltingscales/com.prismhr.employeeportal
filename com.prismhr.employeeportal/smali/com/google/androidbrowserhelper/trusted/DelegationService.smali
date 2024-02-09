.class public Lcom/google/androidbrowserhelper/trusted/DelegationService;
.super Landroidx/browser/trusted/TrustedWebActivityService;
.source "DelegationService.java"


# instance fields
.field private final mExtraCommandHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/androidbrowserhelper/trusted/ExtraCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenStore:Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mExtraCommandHandlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTokenStore()Landroidx/browser/trusted/TokenStore;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mTokenStore:Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mTokenStore:Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    .line 48
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/DelegationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/ChromeOsSupport;->isRunningOnArc(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mTokenStore:Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    const-string v2, "org.chromium.arc.payment_app"

    invoke-static {v2, v0}, Landroidx/browser/trusted/Token;->create(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroidx/browser/trusted/Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;->store(Landroidx/browser/trusted/Token;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mTokenStore:Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    return-object v0
.end method

.method public onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;)Landroid/os/Bundle;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mExtraCommandHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/androidbrowserhelper/trusted/ExtraCommandHandler;

    .line 65
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/google/androidbrowserhelper/trusted/ExtraCommandHandler;->handleExtraCommand(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success"

    .line 66
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 70
    :cond_1
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public registerExtraCommandHandler(Lcom/google/androidbrowserhelper/trusted/ExtraCommandHandler;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/DelegationService;->mExtraCommandHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
