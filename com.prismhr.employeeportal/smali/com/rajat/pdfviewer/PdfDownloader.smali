.class public final Lcom/rajat/pdfviewer/PdfDownloader;
.super Ljava/lang/Object;
.source "PdfDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfDownloader.kt\ncom/rajat/pdfviewer/PdfDownloader\n*L\n1#1,68:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfDownloader;",
        "",
        "url",
        "",
        "listener",
        "Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;",
        "(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;)V",
        "download",
        "",
        "downloadUrl",
        "StatusListener",
        "pdfViewer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final listener:Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;)V
    .locals 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rajat/pdfviewer/PdfDownloader;->listener:Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;

    .line 26
    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/rajat/pdfviewer/PdfDownloader$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/rajat/pdfviewer/PdfDownloader$1;-><init>(Lcom/rajat/pdfviewer/PdfDownloader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic access$download(Lcom/rajat/pdfviewer/PdfDownloader;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/rajat/pdfviewer/PdfDownloader;->download(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/rajat/pdfviewer/PdfDownloader;)Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/rajat/pdfviewer/PdfDownloader;->listener:Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;

    return-object p0
.end method

.method private final download(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    .line 30
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/rajat/pdfviewer/PdfDownloader$download$1;

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lcom/rajat/pdfviewer/PdfDownloader$download$1;-><init>(Lcom/rajat/pdfviewer/PdfDownloader;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/rajat/pdfviewer/PdfDownloader;->listener:Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;

    invoke-interface {v2}, Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "downloaded_pdf.pdf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/16 v2, 0x2000

    .line 36
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    const-string v5, "connection"

    .line 40
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 41
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v7, 0x0

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_0
    new-array v9, v2, [B

    .line 47
    invoke-virtual {v5, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 66
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    const/4 v11, 0x0

    new-instance v2, Lcom/rajat/pdfviewer/PdfDownloader$download$4;

    invoke-direct {v2, v1, v0, v8}, Lcom/rajat/pdfviewer/PdfDownloader$download$4;-><init>(Lcom/rajat/pdfviewer/PdfDownloader;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    if-lez v4, :cond_2

    .line 51
    :try_start_1
    iget v11, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v11, v2

    iput v11, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 52
    sget-object v11, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    const/4 v14, 0x0

    new-instance v11, Lcom/rajat/pdfviewer/PdfDownloader$download$2;

    invoke-direct {v11, v1, v6, v4, v8}, Lcom/rajat/pdfviewer/PdfDownloader$download$2;-><init>(Lcom/rajat/pdfviewer/PdfDownloader;Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    move-object v15, v11

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 59
    :cond_2
    invoke-virtual {v3, v9, v7, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    const/4 v11, 0x0

    new-instance v2, Lcom/rajat/pdfviewer/PdfDownloader$download$3;

    invoke-direct {v2, v1, v0, v8}, Lcom/rajat/pdfviewer/PdfDownloader$download$3;-><init>(Lcom/rajat/pdfviewer/PdfDownloader;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
