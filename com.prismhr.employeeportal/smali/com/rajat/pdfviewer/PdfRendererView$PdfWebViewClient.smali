.class public final Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PdfRendererView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PdfRendererView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PdfWebViewClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J.\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "statusListener",
        "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;",
        "(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "errorCode",
        "",
        "description",
        "failingUrl",
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
.field private final statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;


# direct methods
.method public constructor <init>(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onDownloadSuccess()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Web resource error"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 199
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Web resource error"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
