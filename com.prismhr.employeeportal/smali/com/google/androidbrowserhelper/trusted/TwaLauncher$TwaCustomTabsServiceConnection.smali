.class Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "TwaLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/TwaLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwaCustomTabsServiceConnection"
.end annotation


# instance fields
.field private mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

.field private mOnSessionCreatedRunnable:Ljava/lang/Runnable;

.field private mOnSessionCreationFailedRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;


# direct methods
.method constructor <init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/customtabs/CustomTabsCallback;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 308
    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->setSessionCreationRunnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSessionCreationRunnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreatedRunnable:Ljava/lang/Runnable;

    .line 314
    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreationFailedRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    .line 321
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$100(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$200(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsLaunchWithoutWarmup(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 322
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$400(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;I)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$302(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsSession;

    .line 326
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$300(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreatedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 327
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$300(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreationFailedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 329
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreatedRunnable:Ljava/lang/Runnable;

    .line 333
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->mOnSessionCreationFailedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->access$302(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsSession;

    return-void
.end method
