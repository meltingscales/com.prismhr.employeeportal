.class final Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PinchZoomRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rajat/pdfviewer/PinchZoomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScaleListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
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
.field final synthetic this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    invoke-static {v1, v2}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$setMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V

    .line 138
    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 140
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v2}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMPosX$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 142
    iget-object v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v2}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMPosY$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 143
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v2, v0

    .line 144
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v1

    .line 145
    iget-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMPosX$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$setMPosX$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V

    .line 146
    iget-object v0, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMPosY$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$setMPosY$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {p1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v0

    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v1

    iget-object v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v2}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$setMaxWidth$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V

    .line 150
    iget-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {p1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v0

    iget-object v1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v1

    iget-object v2, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-static {v2}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$getMScaleFactor$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->access$setMaxHeight$p(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;F)V

    .line 151
    iget-object p1, p0, Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;->this$0:Lcom/rajat/pdfviewer/PinchZoomRecyclerView;

    invoke-virtual {p1}, Lcom/rajat/pdfviewer/PinchZoomRecyclerView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
