.class public final Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PdfViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PdfViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PdfPageViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfViewAdapter.kt\ncom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/rajat/pdfviewer/PdfViewAdapter;Landroid/view/View;)V",
        "bind",
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
.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfViewAdapter;


# direct methods
.method public constructor <init>(Lcom/rajat/pdfviewer/PdfViewAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->this$0:Lcom/rajat/pdfviewer/PdfViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->itemView:Landroid/view/View;

    .line 35
    sget v1, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->this$0:Lcom/rajat/pdfviewer/PdfViewAdapter;

    invoke-static {v1}, Lcom/rajat/pdfviewer/PdfViewAdapter;->access$getRenderer$p(Lcom/rajat/pdfviewer/PdfViewAdapter;)Lcom/rajat/pdfviewer/PdfRendererCore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->getAdapterPosition()I

    move-result v2

    new-instance v3, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;

    invoke-direct {v3, v0, p0}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;-><init>(Landroid/view/View;Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v2, v3}, Lcom/rajat/pdfviewer/PdfRendererCore;->renderPage(ILkotlin/jvm/functions/Function2;)V

    return-void
.end method
