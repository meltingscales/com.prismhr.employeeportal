package com.rajat.pdfviewer;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfViewAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u001c\u0010\f\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rajat/pdfviewer/PdfViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;", "renderer", "Lcom/rajat/pdfviewer/PdfRendererCore;", "(Lcom/rajat/pdfviewer/PdfRendererCore;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "PdfPageViewHolder", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfViewAdapter extends RecyclerView.Adapter<PdfPageViewHolder> {
    private final PdfRendererCore renderer;

    public PdfViewAdapter(PdfRendererCore renderer) {
        Intrinsics.checkParameterIsNotNull(renderer, "renderer");
        this.renderer = renderer;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public PdfPageViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_pdf_page, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(v, "v");
        return new PdfPageViewHolder(this, v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.renderer.getPageCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(PdfPageViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        holder.bind();
    }

    /* compiled from: PdfViewAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/rajat/pdfviewer/PdfViewAdapter$PdfPageViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Lcom/rajat/pdfviewer/PdfViewAdapter;Landroid/view/View;)V", "bind", "", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public final class PdfPageViewHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ PdfViewAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PdfPageViewHolder(PdfViewAdapter pdfViewAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = pdfViewAdapter;
        }

        public final void bind() {
            final View view = this.itemView;
            ((ImageView) view.findViewById(R.id.pageView)).setImageBitmap(null);
            this.this$0.renderer.renderPage(getAdapterPosition(), new Function2<Bitmap, Integer, Unit>() { // from class: com.rajat.pdfviewer.PdfViewAdapter$PdfPageViewHolder$bind$$inlined$with$lambda$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap, Integer num) {
                    invoke(bitmap, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Bitmap bitmap, int i) {
                    if (i == this.getAdapterPosition() && bitmap != null) {
                        ImageView pageView = (ImageView) view.findViewById(R.id.pageView);
                        Intrinsics.checkExpressionValueIsNotNull(pageView, "pageView");
                        ImageView pageView2 = (ImageView) view.findViewById(R.id.pageView);
                        Intrinsics.checkExpressionValueIsNotNull(pageView2, "pageView");
                        ViewGroup.LayoutParams layoutParams = pageView2.getLayoutParams();
                        ImageView pageView3 = (ImageView) view.findViewById(R.id.pageView);
                        Intrinsics.checkExpressionValueIsNotNull(pageView3, "pageView");
                        layoutParams.height = (int) (pageView3.getWidth() / (bitmap.getWidth() / bitmap.getHeight()));
                        pageView.setLayoutParams(layoutParams);
                        ((ImageView) view.findViewById(R.id.pageView)).setImageBitmap(bitmap);
                        ImageView pageView4 = (ImageView) view.findViewById(R.id.pageView);
                        Intrinsics.checkExpressionValueIsNotNull(pageView4, "pageView");
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setInterpolator(new LinearInterpolator());
                        alphaAnimation.setDuration(300L);
                        pageView4.setAnimation(alphaAnimation);
                    }
                }
            });
        }
    }
}
