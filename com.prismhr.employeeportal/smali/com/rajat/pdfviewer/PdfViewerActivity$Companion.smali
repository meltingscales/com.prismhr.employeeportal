.class public final Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;
.super Ljava/lang/Object;
.source "PdfViewerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PdfViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JB\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010$\u001a\u0004\u0018\u00010\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010&\u001a\u00020\u0010J8\u0010\'\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010(\u001a\u0004\u0018\u00010\u00042\u0008\u0010$\u001a\u0004\u0018\u00010\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\"\u0004\u0008\u001e\u0010\u0014\u00a8\u0006)"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;",
        "",
        "()V",
        "ENABLE_FILE_DOWNLOAD",
        "",
        "FILE_DIRECTORY",
        "FILE_TITLE",
        "FILE_URL",
        "FROM_ASSETS",
        "PERMISSION_CODE",
        "",
        "getPERMISSION_CODE",
        "()I",
        "setPERMISSION_CODE",
        "(I)V",
        "enableDownload",
        "",
        "getEnableDownload",
        "()Z",
        "setEnableDownload",
        "(Z)V",
        "engine",
        "Lcom/rajat/pdfviewer/PdfEngine;",
        "getEngine",
        "()Lcom/rajat/pdfviewer/PdfEngine;",
        "setEngine",
        "(Lcom/rajat/pdfviewer/PdfEngine;)V",
        "isFromAssets",
        "setFromAssets",
        "isPDFFromPath",
        "setPDFFromPath",
        "launchPdfFromPath",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "path",
        "pdfTitle",
        "directoryName",
        "fromAssets",
        "launchPdfFromUrl",
        "pdfUrl",
        "pdfViewer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic launchPdfFromPath$default(Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Landroid/content/Intent;
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 75
    invoke-virtual/range {v0 .. v6}, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;->launchPdfFromPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic launchPdfFromUrl$default(Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Landroid/content/Intent;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;->launchPdfFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getEnableDownload()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$getEnableDownload$cp()Z

    move-result v0

    return v0
.end method

.method public final getEngine()Lcom/rajat/pdfviewer/PdfEngine;
    .locals 1

    .line 46
    invoke-static {}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$getEngine$cp()Lcom/rajat/pdfviewer/PdfEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getPERMISSION_CODE()I
    .locals 1

    .line 50
    invoke-static {}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$getPERMISSION_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final isFromAssets()Z
    .locals 1

    .line 49
    invoke-static {}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$isFromAssets$cp()Z

    move-result v0

    return v0
.end method

.method public final isPDFFromPath()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$isPDFFromPath$cp()Z

    move-result v0

    return v0
.end method

.method public final launchPdfFromPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rajat/pdfviewer/PdfViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "pdf_file_url"

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pdf_file_title"

    .line 79
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pdf_file_directory"

    .line 80
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "enable_download"

    .line 81
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "from_assests"

    .line 82
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    move-object p1, p0

    check-cast p1, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;->setPDFFromPath(Z)V

    return-object v0
.end method

.method public final launchPdfFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rajat/pdfviewer/PdfViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "pdf_file_url"

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pdf_file_title"

    .line 62
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pdf_file_directory"

    .line 63
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "enable_download"

    .line 64
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    move-object p1, p0

    check-cast p1, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;->setPDFFromPath(Z)V

    return-object v0
.end method

.method public final setEnableDownload(Z)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$setEnableDownload$cp(Z)V

    return-void
.end method

.method public final setEngine(Lcom/rajat/pdfviewer/PdfEngine;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$setEngine$cp(Lcom/rajat/pdfviewer/PdfEngine;)V

    return-void
.end method

.method public final setFromAssets(Z)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$setFromAssets$cp(Z)V

    return-void
.end method

.method public final setPDFFromPath(Z)V
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$setPDFFromPath$cp(Z)V

    return-void
.end method

.method public final setPERMISSION_CODE(I)V
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$setPERMISSION_CODE$cp(I)V

    return-void
.end method
