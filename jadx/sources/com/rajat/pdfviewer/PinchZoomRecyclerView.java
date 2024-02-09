package com.rajat.pdfviewer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: PinchZoomRecyclerView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 %2\u00020\u0001:\u0002%&B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\tH\u0014J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/rajat/pdfviewer/PinchZoomRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "height", "", "mActivePointerId", "mLastTouchX", "mLastTouchY", "mPosX", "mPosY", "mScaleDetector", "Landroid/view/ScaleGestureDetector;", "mScaleFactor", "maxHeight", "maxWidth", "width", "dispatchDraw", "", "canvas", "Landroid/graphics/Canvas;", "onDraw", "onInterceptTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onTouchEvent", "Companion", "ScaleListener", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PinchZoomRecyclerView extends RecyclerView {
    public static final Companion Companion = new Companion(null);
    private static final int INVALID_POINTER_ID = -1;
    private HashMap _$_findViewCache;
    private float height;
    private int mActivePointerId;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mPosX;
    private float mPosY;
    private ScaleGestureDetector mScaleDetector;
    private float mScaleFactor;
    private float maxHeight;
    private float maxWidth;
    private float width;

    public void _$_clearFindViewByIdCache() {
        HashMap hashMap = this._$_findViewCache;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            View findViewById = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), findViewById);
            return findViewById;
        }
        return view;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinchZoomRecyclerView(Context context) {
        super(context);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.mActivePointerId = -1;
        this.mScaleFactor = 1.0f;
        if (isInEditMode()) {
            return;
        }
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinchZoomRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.mActivePointerId = -1;
        this.mScaleFactor = 1.0f;
        if (isInEditMode()) {
            return;
        }
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinchZoomRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.mActivePointerId = -1;
        this.mScaleFactor = 1.0f;
        if (isInEditMode()) {
            return;
        }
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        this.width = View.MeasureSpec.getSize(i);
        this.height = View.MeasureSpec.getSize(i2);
        super.onMeasure(i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        try {
            return super.onInterceptTouchEvent(ev);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        super.onTouchEvent(ev);
        int action = ev.getAction();
        ScaleGestureDetector scaleGestureDetector = this.mScaleDetector;
        if (scaleGestureDetector == null) {
            Intrinsics.throwNpe();
        }
        scaleGestureDetector.onTouchEvent(ev);
        int i = action & 255;
        if (i == 0) {
            float x = ev.getX();
            float y = ev.getY();
            this.mLastTouchX = x;
            this.mLastTouchY = y;
            this.mActivePointerId = ev.getPointerId(0);
        } else if (i == 1) {
            this.mActivePointerId = -1;
        } else if (i == 2) {
            int i2 = (action & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            float x2 = ev.getX(i2);
            float y2 = ev.getY(i2);
            float f = this.mPosX + (x2 - this.mLastTouchX);
            this.mPosX = f;
            float f2 = this.mPosY + (y2 - this.mLastTouchY);
            this.mPosY = f2;
            if (f > 0.0f) {
                this.mPosX = 0.0f;
            } else {
                float f3 = this.maxWidth;
                if (f < f3) {
                    this.mPosX = f3;
                }
            }
            if (f2 > 0.0f) {
                this.mPosY = 0.0f;
            } else {
                float f4 = this.maxHeight;
                if (f2 < f4) {
                    this.mPosY = f4;
                }
            }
            this.mLastTouchX = x2;
            this.mLastTouchY = y2;
            invalidate();
        } else if (i == 3) {
            this.mActivePointerId = -1;
        } else if (i == 6) {
            int i3 = (action & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            if (ev.getPointerId(i3) == this.mActivePointerId) {
                int i4 = i3 == 0 ? 1 : 0;
                this.mLastTouchX = ev.getX(i4);
                this.mLastTouchY = ev.getY(i4);
                this.mActivePointerId = ev.getPointerId(i4);
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.mPosX, this.mPosY);
        float f = this.mScaleFactor;
        canvas.scale(f, f);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        canvas.save();
        if (this.mScaleFactor == 1.0f) {
            this.mPosX = 0.0f;
            this.mPosY = 0.0f;
        }
        canvas.translate(this.mPosX, this.mPosY);
        float f = this.mScaleFactor;
        canvas.scale(f, f);
        super.dispatchDraw(canvas);
        canvas.restore();
        invalidate();
    }

    /* compiled from: PinchZoomRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/rajat/pdfviewer/PinchZoomRecyclerView$ScaleListener;", "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;", "(Lcom/rajat/pdfviewer/PinchZoomRecyclerView;)V", "onScale", "", "detector", "Landroid/view/ScaleGestureDetector;", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    private final class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector detector) {
            Intrinsics.checkParameterIsNotNull(detector, "detector");
            float scaleFactor = detector.getScaleFactor();
            PinchZoomRecyclerView pinchZoomRecyclerView = PinchZoomRecyclerView.this;
            pinchZoomRecyclerView.mScaleFactor = RangesKt.coerceAtLeast(1.0f, RangesKt.coerceAtMost(pinchZoomRecyclerView.mScaleFactor * scaleFactor, 3.0f));
            if (PinchZoomRecyclerView.this.mScaleFactor < 3.0f) {
                float focusX = detector.getFocusX();
                float focusY = detector.getFocusY();
                float f = focusX - PinchZoomRecyclerView.this.mPosX;
                float f2 = focusY - PinchZoomRecyclerView.this.mPosY;
                float scaleFactor2 = (detector.getScaleFactor() * f) - f;
                float scaleFactor3 = (detector.getScaleFactor() * f2) - f2;
                PinchZoomRecyclerView.this.mPosX -= scaleFactor2;
                PinchZoomRecyclerView.this.mPosY -= scaleFactor3;
            }
            PinchZoomRecyclerView pinchZoomRecyclerView2 = PinchZoomRecyclerView.this;
            pinchZoomRecyclerView2.maxWidth = pinchZoomRecyclerView2.width - (PinchZoomRecyclerView.this.width * PinchZoomRecyclerView.this.mScaleFactor);
            PinchZoomRecyclerView pinchZoomRecyclerView3 = PinchZoomRecyclerView.this;
            pinchZoomRecyclerView3.maxHeight = pinchZoomRecyclerView3.height - (PinchZoomRecyclerView.this.height * PinchZoomRecyclerView.this.mScaleFactor);
            PinchZoomRecyclerView.this.invalidate();
            return true;
        }
    }

    /* compiled from: PinchZoomRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/rajat/pdfviewer/PinchZoomRecyclerView$Companion;", "", "()V", "INVALID_POINTER_ID", "", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
