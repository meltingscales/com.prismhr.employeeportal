.class public interface abstract Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;
.super Ljava/lang/Object;
.source "PdfRendererView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PdfRendererView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusCallBack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;",
        "",
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


# virtual methods
.method public abstract onDownloadProgress(IJLjava/lang/Long;)V
.end method

.method public abstract onDownloadStart()V
.end method

.method public abstract onDownloadSuccess()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onPageChanged(II)V
.end method
