package com.rajat.pdfviewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.pdf.PdfRenderer;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;

/* compiled from: PdfRendererCore.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 !2\u00020\u0001:\u0001!B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u000e0\u0012H\u0002J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0016\u001a\u00020\u0010J\b\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002JL\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102<\b\u0002\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001cJ\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0013H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/rajat/pdfviewer/PdfRendererCore;", "", "context", "Landroid/content/Context;", "pdfFile", "Ljava/io/File;", "pdfQuality", "Lcom/rajat/pdfviewer/PdfQuality;", "(Landroid/content/Context;Ljava/io/File;Lcom/rajat/pdfviewer/PdfQuality;)V", "cachePath", "", "pdfRenderer", "Landroid/graphics/pdf/PdfRenderer;", "buildBitmap", "", "pageNo", "", "onBitmap", "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "closePdfRender", "getBitmapFromCache", "getPageCount", "initCache", "openPdfFile", "prefetchNext", "renderPage", "onBitmapReady", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "bitmap", "writeBitmapToCache", "Companion", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfRendererCore {
    public static final Companion Companion = new Companion(null);
    private static final int PREFETCH_COUNT = 3;
    private final String cachePath;
    private final Context context;
    private final PdfQuality pdfQuality;
    private PdfRenderer pdfRenderer;

    public PdfRendererCore(Context context, File pdfFile, PdfQuality pdfQuality) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(pdfFile, "pdfFile");
        Intrinsics.checkParameterIsNotNull(pdfQuality, "pdfQuality");
        this.context = context;
        this.pdfQuality = pdfQuality;
        this.cachePath = "___pdf___cache___";
        initCache();
        openPdfFile(pdfFile);
    }

    /* compiled from: PdfRendererCore.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/rajat/pdfviewer/PdfRendererCore$Companion;", "", "()V", "PREFETCH_COUNT", "", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void initCache() {
        File file = new File(this.context.getCacheDir(), this.cachePath);
        if (file.exists()) {
            FilesKt.deleteRecursively(file);
        }
        file.mkdirs();
    }

    private final Bitmap getBitmapFromCache(int i) {
        File file = new File(new File(this.context.getCacheDir(), this.cachePath), String.valueOf(i));
        if (file.exists()) {
            try {
                return BitmapFactory.decodeFile(file.getAbsolutePath());
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private final void writeBitmapToCache(int i, Bitmap bitmap) throws IOException {
        File file = new File(new File(this.context.getCacheDir(), this.cachePath), String.valueOf(i));
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    private final void openPdfFile(File file) {
        try {
            this.pdfRenderer = new PdfRenderer(ParcelFileDescriptor.open(file, 268435456));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final int getPageCount() {
        PdfRenderer pdfRenderer = this.pdfRenderer;
        if (pdfRenderer != null) {
            return pdfRenderer.getPageCount();
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void renderPage$default(PdfRendererCore pdfRendererCore, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function2 = null;
        }
        pdfRendererCore.renderPage(i, function2);
    }

    public final void renderPage(int i, Function2<? super Bitmap, ? super Integer, Unit> function2) {
        if (i >= getPageCount()) {
            return;
        }
        BuildersKt__Builders_commonKt.async$default(GlobalScope.INSTANCE, null, null, new PdfRendererCore$renderPage$1(this, i, function2, null), 3, null);
    }

    private final void prefetchNext(int i) {
        int min = Math.min(getPageCount(), i + 3);
        while (i < min) {
            renderPage$default(this, i, null, 2, null);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void buildBitmap(int i, Function1<? super Bitmap, Unit> function1) {
        Bitmap bitmapFromCache = getBitmapFromCache(i);
        if (bitmapFromCache != null) {
            function1.invoke(bitmapFromCache);
            return;
        }
        System.currentTimeMillis();
        try {
            PdfRenderer pdfRenderer = this.pdfRenderer;
            if (pdfRenderer == null) {
                Intrinsics.throwNpe();
            }
            PdfRenderer.Page pdfPage = pdfRenderer.openPage(i);
            Intrinsics.checkExpressionValueIsNotNull(pdfPage, "pdfPage");
            Bitmap createBitmap = Bitmap.createBitmap(pdfPage.getWidth() * this.pdfQuality.getRatio(), pdfPage.getHeight() * this.pdfQuality.getRatio(), Bitmap.Config.ARGB_8888);
            if (createBitmap != null) {
                pdfPage.render(createBitmap, null, null, 1);
                pdfPage.close();
                writeBitmapToCache(i, createBitmap);
                function1.invoke(createBitmap);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void closePdfRender() {
        PdfRenderer pdfRenderer = this.pdfRenderer;
        if (pdfRenderer != null) {
            if (pdfRenderer == null) {
                try {
                    Intrinsics.throwNpe();
                } catch (Exception e) {
                    Log.e("PdfRendererCore", e.toString());
                    return;
                }
            }
            pdfRenderer.close();
        }
    }
}
