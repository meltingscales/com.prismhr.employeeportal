package com.rajat.pdfviewer;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.rajat.pdfviewer.PdfRendererView;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfRendererView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"com/rajat/pdfviewer/PdfRendererView$scrollListener$1", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrollStateChanged", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "newState", "", "onScrolled", "dx", "dy", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfRendererView$scrollListener$1 extends RecyclerView.OnScrollListener {
    final /* synthetic */ PdfRendererView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PdfRendererView$scrollListener$1(PdfRendererView pdfRendererView) {
        this.this$0 = pdfRendererView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        PdfRendererView.StatusCallBack statusListener;
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i, i2);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        TextView textView = (TextView) this.this$0._$_findCachedViewById(R.id.pageNo);
        if (findFirstCompletelyVisibleItemPosition != -1) {
            textView.setText((findFirstCompletelyVisibleItemPosition + 1) + " of " + this.this$0.getTotalPageCount());
        }
        TextView pageNo = (TextView) textView.findViewById(R.id.pageNo);
        Intrinsics.checkExpressionValueIsNotNull(pageNo, "pageNo");
        pageNo.setVisibility(0);
        if (findFirstCompletelyVisibleItemPosition == 0) {
            ((TextView) this.this$0._$_findCachedViewById(R.id.pageNo)).postDelayed(new Runnable() { // from class: com.rajat.pdfviewer.PdfRendererView$scrollListener$1$onScrolled$$inlined$run$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    TextView pageNo2 = (TextView) PdfRendererView$scrollListener$1.this.this$0._$_findCachedViewById(R.id.pageNo);
                    Intrinsics.checkExpressionValueIsNotNull(pageNo2, "pageNo");
                    pageNo2.setVisibility(8);
                }
            }, 3000L);
        }
        if (findFirstCompletelyVisibleItemPosition != -1) {
            PdfRendererView.StatusCallBack statusListener2 = this.this$0.getStatusListener();
            if (statusListener2 != null) {
                statusListener2.onPageChanged(findFirstCompletelyVisibleItemPosition, this.this$0.getTotalPageCount());
                return;
            }
            return;
        }
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        if (findFirstVisibleItemPosition == -1 || (statusListener = this.this$0.getStatusListener()) == null) {
            return;
        }
        statusListener.onPageChanged(findFirstVisibleItemPosition, this.this$0.getTotalPageCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        Runnable runnable;
        Runnable runnable2;
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0) {
            runnable2 = this.this$0.runnable;
            ((TextView) this.this$0._$_findCachedViewById(R.id.pageNo)).postDelayed(runnable2, 3000L);
            return;
        }
        runnable = this.this$0.runnable;
        ((TextView) this.this$0._$_findCachedViewById(R.id.pageNo)).removeCallbacks(runnable);
    }
}
