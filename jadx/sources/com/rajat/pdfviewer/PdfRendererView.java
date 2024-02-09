package com.rajat.pdfviewer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.rajat.pdfviewer.PdfDownloader;
import com.rajat.pdfviewer.PdfRendererView;
import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfRendererView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u001a\u0018\u00002\u00020\u0001:\u000289B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010&\u001a\u00020'J\u001a\u0010(\u001a\u00020'2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010)\u001a\u00020\u0007H\u0002J\u0018\u0010*\u001a\u00020'2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0014H\u0002J\u0010\u0010.\u001a\u00020'2\u0006\u0010/\u001a\u000200H\u0003J\u0018\u00101\u001a\u00020'2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u0014J\u0018\u00102\u001a\u00020'2\u0006\u00103\u001a\u0002002\b\b\u0002\u0010-\u001a\u00020\u0014J\"\u00104\u001a\u00020'2\u0006\u0010/\u001a\u0002002\b\b\u0002\u0010-\u001a\u00020\u00142\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0010\u00105\u001a\u00020'2\u0006\u00106\u001a\u000207H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b$\u0010%¨\u0006:"}, d2 = {"Lcom/rajat/pdfviewer/PdfRendererView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "divider", "Landroid/graphics/drawable/Drawable;", "engine", "Lcom/rajat/pdfviewer/PdfEngine;", "pdfRendererCore", "Lcom/rajat/pdfviewer/PdfRendererCore;", "pdfRendererCoreInitialised", "", "pdfViewAdapter", "Lcom/rajat/pdfviewer/PdfViewAdapter;", "quality", "Lcom/rajat/pdfviewer/PdfQuality;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "runnable", "Ljava/lang/Runnable;", "scrollListener", "com/rajat/pdfviewer/PdfRendererView$scrollListener$1", "Lcom/rajat/pdfviewer/PdfRendererView$scrollListener$1;", "showDivider", "statusListener", "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;", "getStatusListener", "()Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;", "setStatusListener", "(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V", "totalPageCount", "getTotalPageCount", "()I", "closePdfRender", "", "getAttrs", "defStyle", "init", "file", "Ljava/io/File;", "pdfQuality", "initUnderKitkat", "url", "", "initWithFile", "initWithPath", "path", "initWithUrl", "setTypeArray", "typedArray", "Landroid/content/res/TypedArray;", "PdfWebViewClient", "StatusCallBack", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfRendererView extends FrameLayout {
    private HashMap _$_findViewCache;
    private Drawable divider;
    private PdfEngine engine;
    private PdfRendererCore pdfRendererCore;
    private boolean pdfRendererCoreInitialised;
    private PdfViewAdapter pdfViewAdapter;
    private PdfQuality quality;
    private RecyclerView recyclerView;
    private Runnable runnable;
    private final PdfRendererView$scrollListener$1 scrollListener;
    private boolean showDivider;
    private StatusCallBack statusListener;

    /* compiled from: PdfRendererView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0016¨\u0006\u0012"}, d2 = {"Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;", "", "onDownloadProgress", "", "progress", "", "downloadedBytes", "", "totalBytes", "(IJLjava/lang/Long;)V", "onDownloadStart", "onDownloadSuccess", "onError", "error", "", "onPageChanged", "currentPage", "totalPage", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public interface StatusCallBack {

        /* compiled from: PdfRendererView.kt */
        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            public static void onDownloadProgress(StatusCallBack statusCallBack, int i, long j, Long l) {
            }

            public static void onDownloadStart(StatusCallBack statusCallBack) {
            }

            public static void onDownloadSuccess(StatusCallBack statusCallBack) {
            }

            public static void onError(StatusCallBack statusCallBack, Throwable error) {
                Intrinsics.checkParameterIsNotNull(error, "error");
            }

            public static void onPageChanged(StatusCallBack statusCallBack, int i, int i2) {
            }
        }

        void onDownloadProgress(int i, long j, Long l);

        void onDownloadStart();

        void onDownloadSuccess();

        void onError(Throwable th);

        void onPageChanged(int i, int i2);
    }

    public PdfRendererView(Context context) {
        this(context, null, 0, 6, null);
    }

    public PdfRendererView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

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

    public /* synthetic */ PdfRendererView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdfRendererView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.quality = PdfQuality.NORMAL;
        this.engine = PdfEngine.INTERNAL;
        this.showDivider = true;
        this.runnable = new Runnable() { // from class: com.rajat.pdfviewer.PdfRendererView$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
            }
        };
        this.scrollListener = new PdfRendererView$scrollListener$1(this);
        getAttrs(attributeSet, i);
    }

    public final StatusCallBack getStatusListener() {
        return this.statusListener;
    }

    public final void setStatusListener(StatusCallBack statusCallBack) {
        this.statusListener = statusCallBack;
    }

    public final int getTotalPageCount() {
        PdfRendererCore pdfRendererCore = this.pdfRendererCore;
        if (pdfRendererCore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pdfRendererCore");
        }
        return pdfRendererCore.getPageCount();
    }

    public static /* synthetic */ void initWithUrl$default(PdfRendererView pdfRendererView, String str, PdfQuality pdfQuality, PdfEngine pdfEngine, int i, Object obj) {
        if ((i & 2) != 0) {
            pdfQuality = pdfRendererView.quality;
        }
        if ((i & 4) != 0) {
            pdfEngine = pdfRendererView.engine;
        }
        pdfRendererView.initWithUrl(str, pdfQuality, pdfEngine);
    }

    public final void initWithUrl(String url, final PdfQuality pdfQuality, PdfEngine engine) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        Intrinsics.checkParameterIsNotNull(pdfQuality, "pdfQuality");
        Intrinsics.checkParameterIsNotNull(engine, "engine");
        if (Build.VERSION.SDK_INT < 21 || engine == PdfEngine.GOOGLE) {
            initUnderKitkat(url);
            StatusCallBack statusCallBack = this.statusListener;
            if (statusCallBack != null) {
                statusCallBack.onDownloadStart();
                return;
            }
            return;
        }
        new PdfDownloader(url, new PdfDownloader.StatusListener() { // from class: com.rajat.pdfviewer.PdfRendererView$initWithUrl$1
            @Override // com.rajat.pdfviewer.PdfDownloader.StatusListener
            public Context getContext() {
                Context context = PdfRendererView.this.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                return context;
            }

            @Override // com.rajat.pdfviewer.PdfDownloader.StatusListener
            public void onDownloadStart() {
                PdfRendererView.StatusCallBack statusListener = PdfRendererView.this.getStatusListener();
                if (statusListener != null) {
                    statusListener.onDownloadStart();
                }
            }

            @Override // com.rajat.pdfviewer.PdfDownloader.StatusListener
            public void onDownloadProgress(long j, long j2) {
                int i = (int) ((((float) j) / ((float) j2)) * 100.0f);
                if (i >= 100) {
                    i = 100;
                }
                PdfRendererView.StatusCallBack statusListener = PdfRendererView.this.getStatusListener();
                if (statusListener != null) {
                    statusListener.onDownloadProgress(i, j, Long.valueOf(j2));
                }
            }

            @Override // com.rajat.pdfviewer.PdfDownloader.StatusListener
            public void onDownloadSuccess(String absolutePath) {
                Intrinsics.checkParameterIsNotNull(absolutePath, "absolutePath");
                PdfRendererView.this.initWithPath(absolutePath, pdfQuality);
                PdfRendererView.StatusCallBack statusListener = PdfRendererView.this.getStatusListener();
                if (statusListener != null) {
                    statusListener.onDownloadSuccess();
                }
            }

            @Override // com.rajat.pdfviewer.PdfDownloader.StatusListener
            public void onError(Throwable error) {
                Intrinsics.checkParameterIsNotNull(error, "error");
                error.printStackTrace();
                PdfRendererView.StatusCallBack statusListener = PdfRendererView.this.getStatusListener();
                if (statusListener != null) {
                    statusListener.onError(error);
                }
            }
        });
    }

    public static /* synthetic */ void initWithPath$default(PdfRendererView pdfRendererView, String str, PdfQuality pdfQuality, int i, Object obj) {
        if ((i & 2) != 0) {
            pdfQuality = pdfRendererView.quality;
        }
        pdfRendererView.initWithPath(str, pdfQuality);
    }

    public final void initWithPath(String path, PdfQuality pdfQuality) {
        Intrinsics.checkParameterIsNotNull(path, "path");
        Intrinsics.checkParameterIsNotNull(pdfQuality, "pdfQuality");
        if (Build.VERSION.SDK_INT < 21) {
            throw new UnsupportedOperationException("should be over API 21");
        }
        initWithFile(new File(path), pdfQuality);
    }

    public static /* synthetic */ void initWithFile$default(PdfRendererView pdfRendererView, File file, PdfQuality pdfQuality, int i, Object obj) {
        if ((i & 2) != 0) {
            pdfQuality = pdfRendererView.quality;
        }
        pdfRendererView.initWithFile(file, pdfQuality);
    }

    public final void initWithFile(File file, PdfQuality pdfQuality) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(pdfQuality, "pdfQuality");
        if (Build.VERSION.SDK_INT < 21) {
            throw new UnsupportedOperationException("should be over API 21");
        }
        init(file, pdfQuality);
    }

    private final void init(File file, PdfQuality pdfQuality) {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        this.pdfRendererCore = new PdfRendererCore(context, file, pdfQuality);
        this.pdfRendererCoreInitialised = true;
        PdfRendererCore pdfRendererCore = this.pdfRendererCore;
        if (pdfRendererCore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pdfRendererCore");
        }
        this.pdfViewAdapter = new PdfViewAdapter(pdfRendererCore);
        addView(LayoutInflater.from(getContext()).inflate(R.layout.pdf_rendererview, (ViewGroup) this, false));
        View findViewById = findViewById(R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.recyclerView)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.recyclerView = recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        PdfViewAdapter pdfViewAdapter = this.pdfViewAdapter;
        if (pdfViewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pdfViewAdapter");
        }
        recyclerView.setAdapter(pdfViewAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        if (this.showDivider) {
            DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(recyclerView.getContext(), 1);
            Drawable drawable = this.divider;
            if (drawable != null) {
                dividerItemDecoration.setDrawable(drawable);
            }
            recyclerView.addItemDecoration(dividerItemDecoration);
        }
        recyclerView.addOnScrollListener(this.scrollListener);
        this.runnable = new Runnable() { // from class: com.rajat.pdfviewer.PdfRendererView$init$2
            @Override // java.lang.Runnable
            public final void run() {
                TextView pageNo = (TextView) PdfRendererView.this._$_findCachedViewById(R.id.pageNo);
                Intrinsics.checkExpressionValueIsNotNull(pageNo, "pageNo");
                pageNo.setVisibility(8);
            }
        };
    }

    private final void initUnderKitkat(String str) {
        addView(LayoutInflater.from(getContext()).inflate(R.layout.pdf_rendererview, (ViewGroup) this, false));
        View findViewById = findViewById(R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.recyclerView)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.recyclerView = recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView.setVisibility(8);
        WebView webView = (WebView) _$_findCachedViewById(R.id.webView);
        Intrinsics.checkExpressionValueIsNotNull(webView, "webView");
        webView.setVisibility(0);
        WebView webView2 = (WebView) _$_findCachedViewById(R.id.webView);
        Intrinsics.checkExpressionValueIsNotNull(webView2, "webView");
        WebSettings settings = webView2.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings, "webView.settings");
        settings.setJavaScriptEnabled(true);
        WebView webView3 = (WebView) _$_findCachedViewById(R.id.webView);
        Intrinsics.checkExpressionValueIsNotNull(webView3, "webView");
        webView3.setWebViewClient(new PdfWebViewClient(this.statusListener));
        ((WebView) _$_findCachedViewById(R.id.webView)).loadUrl("https://drive.google.com/viewer/viewer?hl=en&embedded=true&url=" + URLEncoder.encode(str, "UTF-8"));
    }

    /* compiled from: PdfRendererView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J.\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/rajat/pdfviewer/PdfRendererView$PdfWebViewClient;", "Landroid/webkit/WebViewClient;", "statusListener", "Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;", "(Lcom/rajat/pdfviewer/PdfRendererView$StatusCallBack;)V", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "url", "", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", "description", "failingUrl", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public static final class PdfWebViewClient extends WebViewClient {
        private final StatusCallBack statusListener;

        public PdfWebViewClient(StatusCallBack statusCallBack) {
            this.statusListener = statusCallBack;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            StatusCallBack statusCallBack = this.statusListener;
            if (statusCallBack != null) {
                statusCallBack.onDownloadSuccess();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            StatusCallBack statusCallBack = this.statusListener;
            if (statusCallBack != null) {
                statusCallBack.onError(new Throwable("Web resource error"));
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            StatusCallBack statusCallBack = this.statusListener;
            if (statusCallBack != null) {
                statusCallBack.onError(new Throwable("Web resource error"));
            }
        }
    }

    private final void getAttrs(AttributeSet attributeSet, int i) {
        TypedArray typedArray = getContext().obtainStyledAttributes(attributeSet, R.styleable.PdfRendererView, i, 0);
        Intrinsics.checkExpressionValueIsNotNull(typedArray, "typedArray");
        setTypeArray(typedArray);
    }

    private final void setTypeArray(TypedArray typedArray) {
        PdfQuality[] values;
        PdfEngine[] values2;
        int i = typedArray.getInt(R.styleable.PdfRendererView_pdfView_quality, PdfQuality.NORMAL.getRatio());
        for (PdfQuality pdfQuality : PdfQuality.values()) {
            if (pdfQuality.getRatio() == i) {
                this.quality = pdfQuality;
                int i2 = typedArray.getInt(R.styleable.PdfRendererView_pdfView_engine, PdfEngine.INTERNAL.getValue());
                for (PdfEngine pdfEngine : PdfEngine.values()) {
                    if (pdfEngine.getValue() == i2) {
                        this.engine = pdfEngine;
                        this.showDivider = typedArray.getBoolean(R.styleable.PdfRendererView_pdfView_showDivider, true);
                        this.divider = typedArray.getDrawable(R.styleable.PdfRendererView_pdfView_divider);
                        typedArray.recycle();
                        return;
                    }
                }
                throw new NoSuchElementException("Array contains no element matching the predicate.");
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    public final void closePdfRender() {
        if (this.pdfRendererCoreInitialised) {
            PdfRendererCore pdfRendererCore = this.pdfRendererCore;
            if (pdfRendererCore == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pdfRendererCore");
            }
            pdfRendererCore.closePdfRender();
        }
    }
}
