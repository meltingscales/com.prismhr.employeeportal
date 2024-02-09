.class public final Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PdfRendererView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rajat/pdfviewer/PdfRendererView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfRendererView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfRendererView.kt\ncom/rajat/pdfviewer/PdfRendererView$scrollListener$1\n*L\n1#1,241:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/rajat/pdfviewer/PdfRendererView$scrollListener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic this$0:Lcom/rajat/pdfviewer/PdfRendererView;


# direct methods
.method constructor <init>(Lcom/rajat/pdfviewer/PdfRendererView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 162
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    sget p2, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-static {p2}, Lcom/rajat/pdfviewer/PdfRendererView;->access$getRunnable$p(Lcom/rajat/pdfviewer/PdfRendererView;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    sget p2, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-static {p2}, Lcom/rajat/pdfviewer/PdfRendererView;->access$getRunnable$p(Lcom/rajat/pdfviewer/PdfRendererView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    .line 136
    iget-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    sget v0, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {p3, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {v2}, Lcom/rajat/pdfviewer/PdfRendererView;->getTotalPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    check-cast p3, Landroid/view/View;

    sget v1, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v1, "pageNo"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p2, :cond_1

    .line 143
    iget-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    sget v1, Lcom/rajat/pdfviewer/R$id;->pageNo:I

    invoke-virtual {p3, v1}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v1, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1;

    invoke-direct {v1, p0}, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1;-><init>(Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p3, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-eq p2, v0, :cond_2

    .line 148
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {p1}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {p3}, Lcom/rajat/pdfviewer/PdfRendererView;->getTotalPageCount()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onPageChanged(II)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 153
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {p2}, Lcom/rajat/pdfviewer/PdfRendererView;->getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;->this$0:Lcom/rajat/pdfviewer/PdfRendererView;

    invoke-virtual {p3}, Lcom/rajat/pdfviewer/PdfRendererView;->getTotalPageCount()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onPageChanged(II)V

    :cond_3
    :goto_0
    return-void

    .line 133
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
