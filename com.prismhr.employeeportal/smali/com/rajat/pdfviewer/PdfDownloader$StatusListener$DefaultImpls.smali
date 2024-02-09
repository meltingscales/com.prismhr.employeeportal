.class public final Lcom/rajat/pdfviewer/PdfDownloader$StatusListener$DefaultImpls;
.super Ljava/lang/Object;
.source "PdfDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static onDownloadProgress(Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;JJ)V
    .locals 0

    return-void
.end method

.method public static onDownloadStart(Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;)V
    .locals 0

    return-void
.end method

.method public static onDownloadSuccess(Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;Ljava/lang/String;)V
    .locals 0

    const-string p0, "absolutePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onError(Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "error"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
