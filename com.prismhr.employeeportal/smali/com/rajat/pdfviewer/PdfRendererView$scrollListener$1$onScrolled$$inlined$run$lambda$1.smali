.class final Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "PdfRendererView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;


# direct methods
.method constructor <init>(Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

    iget-object v0, v0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

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
