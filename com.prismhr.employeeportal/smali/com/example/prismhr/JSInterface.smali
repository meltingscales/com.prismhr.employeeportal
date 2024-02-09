.class public final Lcom/example/prismhr/JSInterface;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/prismhr/JSInterface;",
        "",
        "context",
        "Landroid/content/Context;",
        "browser",
        "Landroid/webkit/WebView;",
        "(Landroid/content/Context;Landroid/webkit/WebView;)V",
        "callWebKit",
        "",
        "msg",
        "",
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
.field private final browser:Landroid/webkit/WebView;

.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$YhEmgPNG7Q7wq1-CLmmyZngNanY(Lcom/example/prismhr/JSInterface;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/prismhr/JSInterface;->callWebKit$lambda-1(Lcom/example/prismhr/JSInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fqOwCP27aY5ZXjvgEDxXJ-fjkyU(Lcom/example/prismhr/JSInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/example/prismhr/JSInterface;->callWebKit$lambda-0(Lcom/example/prismhr/JSInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/prismhr/JSInterface;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/example/prismhr/JSInterface;->browser:Landroid/webkit/WebView;

    return-void
.end method

.method private static final callWebKit$lambda-0(Lcom/example/prismhr/JSInterface;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/example/prismhr/JSInterface;->context:Landroid/content/Context;

    check-cast p0, Lcom/example/prismhr/MainActivity;

    invoke-virtual {p0}, Lcom/example/prismhr/MainActivity;->scanQRCode()V

    return-void
.end method

.method private static final callWebKit$lambda-1(Lcom/example/prismhr/JSInterface;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/example/prismhr/JSInterface;->context:Landroid/content/Context;

    check-cast p0, Lcom/example/prismhr/MainActivity;

    invoke-virtual {p0, p1}, Lcom/example/prismhr/MainActivity;->getUrlFromAccessCode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final callWebKit(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qr-code"

    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/example/prismhr/JSInterface;->browser:Landroid/webkit/WebView;

    new-instance v0, Lcom/example/prismhr/JSInterface$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/prismhr/JSInterface$$ExternalSyntheticLambda0;-><init>(Lcom/example/prismhr/JSInterface;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/example/prismhr/JSInterface;->browser:Landroid/webkit/WebView;

    new-instance v1, Lcom/example/prismhr/JSInterface$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/example/prismhr/JSInterface$$ExternalSyntheticLambda1;-><init>(Lcom/example/prismhr/JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
