.class final Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PdfViewAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfViewAdapter.kt\ncom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$1$1\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "pageNo",
        "",
        "invoke",
        "com/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $this_with:Landroid/view/View;

.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    iput-object p2, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->this$0:Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->invoke(Landroid/graphics/Bitmap;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;I)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->this$0:Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;

    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->getAdapterPosition()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    sget v0, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v0, "pageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    sget v2, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    sget v3, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    sget v1, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1;->$this_with:Landroid/view/View;

    sget p2, Lcom/rajat/pdfviewer/R$id;->pageView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x12c

    .line 47
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 45
    check-cast p2, Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
