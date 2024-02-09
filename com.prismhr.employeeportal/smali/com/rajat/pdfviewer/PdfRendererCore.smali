.class public final Lcom/rajat/pdfviewer/PdfRendererCore;
.super Ljava/lang/Object;
.source "PdfRendererCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PdfRendererCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfRendererCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfRendererCore.kt\ncom/rajat/pdfviewer/PdfRendererCore\n*L\n1#1,143:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 !2\u00020\u0001:\u0001!B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u000e0\u0012H\u0002J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0016\u001a\u00020\u0010J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002JL\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102<\u0008\u0002\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001cJ\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0013H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfRendererCore;",
        "",
        "context",
        "Landroid/content/Context;",
        "pdfFile",
        "Ljava/io/File;",
        "pdfQuality",
        "Lcom/rajat/pdfviewer/PdfQuality;",
        "(Landroid/content/Context;Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V",
        "cachePath",
        "",
        "pdfRenderer",
        "Landroid/graphics/pdf/PdfRenderer;",
        "buildBitmap",
        "",
        "pageNo",
        "",
        "onBitmap",
        "Lkotlin/Function1;",
        "Landroid/graphics/Bitmap;",
        "closePdfRender",
        "getBitmapFromCache",
        "getPageCount",
        "initCache",
        "openPdfFile",
        "prefetchNext",
        "renderPage",
        "onBitmapReady",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "bitmap",
        "writeBitmapToCache",
        "Companion",
        "pdfViewer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/rajat/pdfviewer/PdfRendererCore$Companion;

.field private static final PREFETCH_COUNT:I = 0x3


# instance fields
.field private final cachePath:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

.field private pdfRenderer:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rajat/pdfviewer/PdfRendererCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rajat/pdfviewer/PdfRendererCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rajat/pdfviewer/PdfRendererCore;->Companion:Lcom/rajat/pdfviewer/PdfRendererCore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfQuality"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

    const-string p1, "___pdf___cache___"

    .line 36
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->cachePath:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/rajat/pdfviewer/PdfRendererCore;->initCache()V

    .line 41
    invoke-direct {p0, p2}, Lcom/rajat/pdfviewer/PdfRendererCore;->openPdfFile(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$buildBitmap(Lcom/rajat/pdfviewer/PdfRendererCore;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererCore;->buildBitmap(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final buildBitmap(ILkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/rajat/pdfviewer/PdfRendererCore;->getBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfRenderer:Landroid/graphics/pdf/PdfRenderer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v0

    const-string v1, "pdfPage"

    .line 120
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

    invoke-virtual {v2}, Lcom/rajat/pdfviewer/PdfQuality;->getRatio()I

    move-result v2

    mul-int/2addr v1, v2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

    invoke-virtual {v3}, Lcom/rajat/pdfviewer/PdfQuality;->getRatio()I

    move-result v3

    mul-int/2addr v2, v3

    .line 122
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 126
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 127
    invoke-direct {p0, p1, v1}, Lcom/rajat/pdfviewer/PdfRendererCore;->writeBitmapToCache(ILandroid/graphics/Bitmap;)V

    .line 129
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final getBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private final initCache()V
    .locals 3

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->cachePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private final openPdfFile(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 76
    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 77
    new-instance v0, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v0, p1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfRenderer:Landroid/graphics/pdf/PdfRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final prefetchNext(I)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererCore;->getPageCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 104
    invoke-static {p0, p1, v2, v1, v2}, Lcom/rajat/pdfviewer/PdfRendererCore;->renderPage$default(Lcom/rajat/pdfviewer/PdfRendererCore;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic renderPage$default(Lcom/rajat/pdfviewer/PdfRendererCore;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 85
    move-object p3, p2

    check-cast p3, Lkotlin/jvm/functions/Function2;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererCore;->renderPage(ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final writeBitmapToCache(ILandroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 67
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p1

    check-cast v1, Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 70
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public final closePdfRender()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfRenderer:Landroid/graphics/pdf/PdfRenderer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfRendererCore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final getPageCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererCore;->pdfRenderer:Landroid/graphics/pdf/PdfRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final renderPage(ILkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Bitmap;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererCore;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/rajat/pdfviewer/PdfRendererCore$renderPage$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/rajat/pdfviewer/PdfRendererCore$renderPage$1;-><init>(Lcom/rajat/pdfviewer/PdfRendererCore;ILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    return-void
.end method
