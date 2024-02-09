.class public final Lcom/rajat/pdfviewer/PdfViewerActivity$enableDownload$1;
.super Ljava/lang/Object;
.source "PdfViewerActivity.kt"

# interfaces
.implements Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfViewerActivity;->enableDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/rajat/pdfviewer/PdfViewerActivity$enableDownload$1",
        "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;",
        "onDownloadProgress",
        "",
        "progress",
        "",
        "downloadedBytes",
        "",
        "totalBytes",
        "(IJLjava/lang/Long;)V",
        "onDownloadStart",
        "onDownloadSuccess",
        "onError",
        "error",
        "",
        "onPageChanged",
        "currentPage",
        "totalPage",
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
.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfViewerActivity;


# direct methods
.method constructor <init>(Lcom/rajat/pdfviewer/PdfViewerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfViewerActivity$enableDownload$1;->this$0:Lcom/rajat/pdfviewer/PdfViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(IJLjava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public onDownloadStart()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfViewerActivity$enableDownload$1;->this$0:Lcom/rajat/pdfviewer/PdfViewerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$showProgressBar(Lcom/rajat/pdfviewer/PdfViewerActivity;Z)V

    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfViewerActivity$enableDownload$1;->this$0:Lcom/rajat/pdfviewer/PdfViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$showProgressBar(Lcom/rajat/pdfviewer/PdfViewerActivity;Z)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfViewerActivity$enableDownload$1;->this$0:Lcom/rajat/pdfviewer/PdfViewerActivity;

    invoke-static {p1}, Lcom/rajat/pdfviewer/PdfViewerActivity;->access$onPdfError(Lcom/rajat/pdfviewer/PdfViewerActivity;)V

    return-void
.end method

.method public onPageChanged(II)V
    .locals 0

    return-void
.end method
