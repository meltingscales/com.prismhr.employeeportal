.class public final Lcom/rajat/pdfviewer/PdfRendererView;
.super Landroid/widget/FrameLayout;
.source "PdfRendererView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;,
        Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfRendererView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfRendererView.kt\ncom/rajat/pdfviewer/PdfRendererView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,241:1\n1060#2,2:242\n1060#2,2:244\n*E\n*S KotlinDebug\n*F\n+ 1 PdfRendererView.kt\ncom/rajat/pdfviewer/PdfRendererView\n*L\n226#1,2:242\n229#1,2:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u001a\u0018\u00002\u00020\u0001:\u000289B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010&\u001a\u00020\'J\u001a\u0010(\u001a\u00020\'2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010)\u001a\u00020\u0007H\u0002J\u0018\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0014H\u0002J\u0010\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u000200H\u0003J\u0018\u00101\u001a\u00020\'2\u0006\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020\u0014J\u0018\u00102\u001a\u00020\'2\u0006\u00103\u001a\u0002002\u0008\u0008\u0002\u0010-\u001a\u00020\u0014J\"\u00104\u001a\u00020\'2\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u0010-\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0010\u00105\u001a\u00020\'2\u0006\u00106\u001a\u000207H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006:"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfRendererView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "divider",
        "Landroid/graphics/drawable/Drawable;",
        "engine",
        "Lcom/rajat/pdfviewer/PdfEngine;",
        "pdfRendererCore",
        "Lcom/rajat/pdfviewer/PdfRendererCore;",
        "pdfRendererCoreInitialised",
        "",
        "pdfViewAdapter",
        "Lcom/rajat/pdfviewer/PdfViewAdapter;",
        "quality",
        "Lcom/rajat/pdfviewer/PdfQuality;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "runnable",
        "Ljava/lang/Runnable;",
        "scrollListener",
        "com/rajat/pdfviewer/PdfRendererView$scrollListener$1",
        "Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;",
        "showDivider",
        "statusListener",
        "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;",
        "getStatusListener",
        "()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;",
        "setStatusListener",
        "(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V",
        "totalPageCount",
        "getTotalPageCount",
        "()I",
        "closePdfRender",
        "",
        "getAttrs",
        "defStyle",
        "init",
        "file",
        "Ljava/io/File;",
        "pdfQuality",
        "initUnderKitkat",
        "url",
        "",
        "initWithFile",
        "initWithPath",
        "path",
        "initWithUrl",
        "setTypeArray",
        "typedArray",
        "Landroid/content/res/TypedArray;",
        "PdfWebViewClient",
        "StatusCallBack",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private engine:Lcom/rajat/pdfviewer/PdfEngine;

.field private pdfRendererCore:Lcom/rajat/pdfviewer/PdfRendererCore;

.field private pdfRendererCoreInitialised:Z

.field private pdfViewAdapter:Lcom/rajat/pdfviewer/PdfViewAdapter;

.field private quality:Lcom/rajat/pdfviewer/PdfQuality;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private runnable:Ljava/lang/Runnable;

.field private final scrollListener:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

.field private showDivider:Z

.field private statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/rajat/pdfviewer/PdfRendererView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/rajat/pdfviewer/PdfRendererView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object p1, Lcom/rajat/pdfviewer/PdfQuality;->NORMAL:Lcom/rajat/pdfviewer/PdfQuality;

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->quality:Lcom/rajat/pdfviewer/PdfQuality;

    .line 37
    sget-object p1, Lcom/rajat/pdfviewer/PdfEngine;->INTERNAL:Lcom/rajat/pdfviewer/PdfEngine;

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->engine:Lcom/rajat/pdfviewer/PdfEngine;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->showDivider:Z

    .line 40
    sget-object p1, Lcom/rajat/pdfviewer/PdfRendererView$runnable$1;->INSTANCE:Lcom/rajat/pdfviewer/PdfRendererView$runnable$1;

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->runnable:Ljava/lang/Runnable;

    .line 130
    new-instance p1, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

    invoke-direct {p1, p0}, Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;-><init>(Lcom/rajat/pdfviewer/PdfRendererView;)V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->scrollListener:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

    .line 214
    invoke-direct {p0, p2, p3}, Lcom/rajat/pdfviewer/PdfRendererView;->getAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 30
    move-object p5, p2

    check-cast p5, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/rajat/pdfviewer/PdfRendererView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getRunnable$p(Lcom/rajat/pdfviewer/PdfRendererView;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$setRunnable$p(Lcom/rajat/pdfviewer/PdfRendererView;Ljava/lang/Runnable;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final getAttrs(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rajat/pdfviewer/R$styleable;->PdfRendererView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "typedArray"

    .line 220
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/rajat/pdfviewer/PdfRendererView;->setTypeArray(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private final init(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V
    .locals 3

    .line 106
    new-instance v0, Lcom/rajat/pdfviewer/PdfRendererCore;

    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererCore;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V

    iput-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCore:Lcom/rajat/pdfviewer/PdfRendererCore;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCoreInitialised:Z

    .line 108
    new-instance p2, Lcom/rajat/pdfviewer/PdfViewAdapter;

    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCore:Lcom/rajat/pdfviewer/PdfRendererCore;

    if-nez v0, :cond_0

    const-string v1, "pdfRendererCore"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p2, v0}, Lcom/rajat/pdfviewer/PdfViewAdapter;-><init>(Lcom/rajat/pdfviewer/PdfRendererCore;)V

    iput-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfViewAdapter:Lcom/rajat/pdfviewer/PdfViewAdapter;

    .line 109
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/rajat/pdfviewer/R$layout;->pdf_rendererview:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    invoke-virtual {p0, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->addView(Landroid/view/View;)V

    .line 111
    sget p2, Lcom/rajat/pdfviewer/R$id;->recyclerView:I

    invoke-virtual {p0, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.recyclerView)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_1

    const-string v0, "recyclerView"

    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfViewAdapter:Lcom/rajat/pdfviewer/PdfViewAdapter;

    if-nez v0, :cond_2

    const-string v1, "pdfViewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    iget-boolean v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->showDivider:Z

    if-eqz v0, :cond_4

    .line 117
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 118
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->divider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->scrollListener:Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 124
    new-instance p1, Lcom/rajat/pdfviewer/PdfRendererView$init$2;

    invoke-direct {p1, p0}, Lcom/rajat/pdfviewer/PdfRendererView$init$2;-><init>(Lcom/rajat/pdfviewer/PdfRendererView;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final initUnderKitkat(Ljava/lang/String;)V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PdfRendererView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rajat/pdfviewer/R$layout;->pdf_rendererview:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->addView(Landroid/view/View;)V

    .line 174
    sget v0, Lcom/rajat/pdfviewer/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.recyclerView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    .line 175
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 176
    sget v0, Lcom/rajat/pdfviewer/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "webView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 177
    sget v0, Lcom/rajat/pdfviewer/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 178
    sget v0, Lcom/rajat/pdfviewer/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;

    iget-object v2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    invoke-direct {v1, v2}, Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;-><init>(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 179
    sget v0, Lcom/rajat/pdfviewer/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://drive.google.com/viewer/viewer?hl=en&embedded=true&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic initWithFile$default(Lcom/rajat/pdfviewer/PdfRendererView;Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 99
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->quality:Lcom/rajat/pdfviewer/PdfQuality;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->initWithFile(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V

    return-void
.end method

.method public static synthetic initWithPath$default(Lcom/rajat/pdfviewer/PdfRendererView;Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 93
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->quality:Lcom/rajat/pdfviewer/PdfQuality;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->initWithPath(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;)V

    return-void
.end method

.method public static synthetic initWithUrl$default(Lcom/rajat/pdfviewer/PdfRendererView;Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;Lcom/rajat/pdfviewer/PdfEngine;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 59
    iget-object p2, p0, Lcom/rajat/pdfviewer/PdfRendererView;->quality:Lcom/rajat/pdfviewer/PdfQuality;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 60
    iget-object p3, p0, Lcom/rajat/pdfviewer/PdfRendererView;->engine:Lcom/rajat/pdfviewer/PdfEngine;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/rajat/pdfviewer/PdfRendererView;->initWithUrl(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;Lcom/rajat/pdfviewer/PdfEngine;)V

    return-void
.end method

.method private final setTypeArray(Landroid/content/res/TypedArray;)V
    .locals 9

    .line 225
    sget v0, Lcom/rajat/pdfviewer/R$styleable;->PdfRendererView_pdfView_quality:I

    sget-object v1, Lcom/rajat/pdfviewer/PdfQuality;->NORMAL:Lcom/rajat/pdfviewer/PdfQuality;

    invoke-virtual {v1}, Lcom/rajat/pdfviewer/PdfQuality;->getRatio()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 226
    invoke-static {}, Lcom/rajat/pdfviewer/PdfQuality;->values()[Lcom/rajat/pdfviewer/PdfQuality;

    move-result-object v1

    .line 242
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "Array contains no element matching the predicate."

    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 226
    invoke-virtual {v6}, Lcom/rajat/pdfviewer/PdfQuality;->getRatio()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v0, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-eqz v7, :cond_4

    .line 243
    iput-object v6, p0, Lcom/rajat/pdfviewer/PdfRendererView;->quality:Lcom/rajat/pdfviewer/PdfQuality;

    .line 228
    sget v0, Lcom/rajat/pdfviewer/R$styleable;->PdfRendererView_pdfView_engine:I

    sget-object v1, Lcom/rajat/pdfviewer/PdfEngine;->INTERNAL:Lcom/rajat/pdfviewer/PdfEngine;

    invoke-virtual {v1}, Lcom/rajat/pdfviewer/PdfEngine;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 229
    invoke-static {}, Lcom/rajat/pdfviewer/PdfEngine;->values()[Lcom/rajat/pdfviewer/PdfEngine;

    move-result-object v1

    .line 244
    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 229
    invoke-virtual {v6}, Lcom/rajat/pdfviewer/PdfEngine;->getValue()I

    move-result v7

    if-ne v7, v0, :cond_1

    move v7, v8

    goto :goto_3

    :cond_1
    move v7, v3

    :goto_3
    if-eqz v7, :cond_2

    .line 245
    iput-object v6, p0, Lcom/rajat/pdfviewer/PdfRendererView;->engine:Lcom/rajat/pdfviewer/PdfEngine;

    .line 230
    sget v0, Lcom/rajat/pdfviewer/R$styleable;->PdfRendererView_pdfView_showDivider:I

    invoke-virtual {p1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->showDivider:Z

    .line 231
    sget v0, Lcom/rajat/pdfviewer/R$styleable;->PdfRendererView_pdfView_divider:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->divider:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 245
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final closePdfRender()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCoreInitialised:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCore:Lcom/rajat/pdfviewer/PdfRendererCore;

    if-nez v0, :cond_0

    const-string v1, "pdfRendererCore"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererCore;->closePdfRender()V

    :cond_1
    return-void
.end method

.method public final getStatusListener()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    return-object v0
.end method

.method public final getTotalPageCount()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/rajat/pdfviewer/PdfRendererView;->pdfRendererCore:Lcom/rajat/pdfviewer/PdfRendererCore;

    if-nez v0, :cond_0

    const-string v1, "pdfRendererCore"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/rajat/pdfviewer/PdfRendererCore;->getPageCount()I

    move-result v0

    return v0
.end method

.method public final initWithFile(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfQuality"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->init(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "should be over API 21"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final initWithPath(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfQuality"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/rajat/pdfviewer/PdfRendererView;->initWithFile(Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "should be over API 21"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final initWithUrl(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfQuality;Lcom/rajat/pdfviewer/PdfEngine;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdfQuality"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/rajat/pdfviewer/PdfEngine;->GOOGLE:Lcom/rajat/pdfviewer/PdfEngine;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p3, Lcom/rajat/pdfviewer/PdfDownloader;

    new-instance v0, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;

    invoke-direct {v0, p0, p2}, Lcom/rajat/pdfviewer/PdfRendererView$initWithUrl$1;-><init>(Lcom/rajat/pdfviewer/PdfRendererView;Lcom/rajat/pdfviewer/PdfQuality;)V

    check-cast v0, Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;

    invoke-direct {p3, p1, v0}, Lcom/rajat/pdfviewer/PdfDownloader;-><init>(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;)V

    return-void

    .line 63
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/rajat/pdfviewer/PdfRendererView;->initUnderKitkat(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;->onDownloadStart()V

    :cond_2
    return-void
.end method

.method public final setStatusListener(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/rajat/pdfviewer/PdfRendererView;->statusListener:Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;

    return-void
.end method
