.class public final Lcom/rajat/pdfviewer/PinchZoomRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PinchZoomRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;,
        Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0002%&B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\tH\u0014J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PinchZoomRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "height",
        "",
        "mActivePointerId",
        "mLastTouchX",
        "mLastTouchY",
        "mPosX",
        "mPosY",
        "mScaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "mScaleFactor",
        "maxHeight",
        "maxWidth",
        "width",
        "dispatchDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onDraw",
        "onInterceptTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onTouchEvent",
        "Companion",
        "ScaleListener",
        "pdfViewer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;

.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private height:F

.field private mActivePointerId:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mPosX:F

.field private mPosY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private maxHeight:F

.field private maxWidth:F

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->Companion:Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    .line 28
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    .line 29
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;

    invoke-direct {v1, p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;-><init>(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V

    check-cast v1, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p1, :cond_0

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    .line 34
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 35
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;

    invoke-direct {v0, p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;-><init>(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V

    check-cast v0, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 39
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    .line 43
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;

    invoke-direct {p3, p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;-><init>(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V

    check-cast p3, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_1
    return-void
.end method

.method public static final synthetic access$getHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->height:F

    return p0
.end method

.method public static final synthetic access$getMPosX$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    return p0
.end method

.method public static final synthetic access$getMPosY$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    return p0
.end method

.method public static final synthetic access$getMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    return p0
.end method

.method public static final synthetic access$getMaxHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxHeight:F

    return p0
.end method

.method public static final synthetic access$getMaxWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxWidth:F

    return p0
.end method

.method public static final synthetic access$getWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->width:F

    return p0
.end method

.method public static final synthetic access$setHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->height:F

    return-void
.end method

.method public static final synthetic access$setMPosX$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    return-void
.end method

.method public static final synthetic access$setMPosY$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    return-void
.end method

.method public static final synthetic access$setMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    return-void
.end method

.method public static final synthetic access$setMaxHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxHeight:F

    return-void
.end method

.method public static final synthetic access$setMaxWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxWidth:F

    return-void
.end method

.method public static final synthetic access$setWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->width:F

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    .line 124
    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    .line 126
    :cond_0
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    iget v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 128
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    iget v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleFactor:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->width:F

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->height:F

    .line 50
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const/4 v4, -0x1

    if-eq v1, v3, :cond_9

    const/4 v5, 0x2

    const v6, 0xff00

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x8

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 101
    iget v4, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    if-ne v1, v4, :cond_b

    if-nez v0, :cond_2

    move v2, v3

    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchX:F

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchY:F

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    goto :goto_2

    .line 95
    :cond_3
    iput v4, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    goto :goto_2

    :cond_4
    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x8

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 79
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchX:F

    sub-float v0, v1, v0

    .line 80
    iget v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchY:F

    sub-float v2, p1, v2

    .line 81
    iget v4, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    .line 82
    iget v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    const/4 v2, 0x0

    cmpl-float v5, v4, v2

    if-lez v5, :cond_5

    .line 83
    iput v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    goto :goto_0

    .line 84
    :cond_5
    iget v5, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxWidth:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    iput v5, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosX:F

    :cond_6
    :goto_0
    cmpl-float v4, v0, v2

    if-lez v4, :cond_7

    .line 85
    iput v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    goto :goto_1

    .line 86
    :cond_7
    iget v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->maxHeight:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    iput v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mPosY:F

    .line 87
    :cond_8
    :goto_1
    iput v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchX:F

    .line 88
    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchY:F

    .line 89
    invoke-virtual {p0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->invalidate()V

    goto :goto_2

    .line 92
    :cond_9
    iput v4, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    goto :goto_2

    .line 68
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 70
    iput v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchX:F

    .line 71
    iput v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mLastTouchY:F

    .line 72
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->mActivePointerId:I

    :cond_b
    :goto_2
    return v3
.end method
