.class final Lcom/rajat/pdfviewer/PdfRendererView$init$2;
.super Ljava/lang/Object;
.source "PdfRendererView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfRendererView;->init(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfRendererView;


# direct methods
.method constructor <init>(Lcom/rajat/pdfviewer/PdfRendererView;)V
    .locals 0

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$init$2;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$init$2;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    sget v1, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {v0, v1}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "pageNo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
