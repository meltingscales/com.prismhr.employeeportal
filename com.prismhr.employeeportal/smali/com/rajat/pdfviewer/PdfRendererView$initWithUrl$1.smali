.class public final Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;
.super Ljava/lang/Object;
.source "PdfRendererView.kt"

# interfaces
.implements Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfRendererView;->initWithUrl(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;Lcom/rajat/pdfviewer/PdfEngine;)V
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/rajat/pdfviewer/PdfRendererView$initWithUrl$1",
        "Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;",
        "getContext",
        "Landroid/content/Context;",
        "onDownloadProgress",
        "",
        "currentBytes",
        "",
        "totalBytes",
        "onDownloadStart",
        "onDownloadSuccess",
        "absolutePath",
        "",
        "onError",
        "error",
        "",
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
.field final synthetic $pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfRendererView;


# direct methods
.method constructor <init>(Lcom/rajat/pdfviewer/PdfRendererView;Lcom/rajat/pdfviewer/PdfQuality;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rajat/pdfviewer/PdfQuality;",
            ")V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    iput-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->$pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDownloadProgress(JJ)V
    .locals 2

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {v1}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onDownloadProgress(IJLjava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public onDownloadStart()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onDownloadStart()V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "absolutePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->$pdfQuality:Lcom/rajat/pdfviewer/PdfQuality;

    invoke-virtual {v0, p1, v1}, Lcom/rajat/pdfviewer/PdfRendererView;->initWithPath(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;)V

    .line 83
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {p1}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onDownloadSuccess()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
