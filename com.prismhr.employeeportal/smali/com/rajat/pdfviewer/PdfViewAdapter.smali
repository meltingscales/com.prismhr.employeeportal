.class public final Lcom/rajat/pdfviewer/PdfViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PdfViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u001c\u0010\u000c\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfViewAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;",
        "renderer",
        "Lcom/rajat/pdfviewer/PdfRendererCore;",
        "(Lcom/rajat/pdfviewer/PdfRendererCore;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "PdfPageViewHolder",
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
.field private final renderer:Lcom/rajat/pdfviewer/PdfRendererCore;


# direct methods
.method public constructor <init>(Lcom/rajat/pdfviewer/PdfRendererCore;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfViewAdapter;->renderer:Lcom/rajat/pdfviewer/PdfRendererCore;

    return-void
.end method

.method public static final synthetic access$getRenderer$p(Lcom/rajat/pdfviewer/PdfViewAdapter;)Lcom/rajat/pdfviewer/PdfRendererCore;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/rajat/pdfviewer/PdfViewAdapter;->renderer:Lcom/rajat/pdfviewer/PdfRendererCore;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfViewAdapter;->renderer:Lcom/rajat/pdfviewer/PdfRendererCore;

    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererCore;->getPageCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfViewAdapter;->onBindViewHolder(Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;->bind()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/rajat/pdfviewer/R$layout;->list_item_pdf_page:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;-><init>(Lcom/rajat/pdfviewer/PdfViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
