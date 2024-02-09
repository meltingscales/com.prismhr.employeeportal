package com.rajat.pdfviewer;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* compiled from: PdfDownloader.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/rajat/pdfviewer/PdfDownloader;", "", "url", "", "listener", "Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;", "(Ljava/lang/String;Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;)V", "download", "", "downloadUrl", "StatusListener", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfDownloader {
    private final StatusListener listener;

    /* compiled from: PdfDownloader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0010"}, d2 = {"Lcom/rajat/pdfviewer/PdfDownloader$StatusListener;", "", "getContext", "Landroid/content/Context;", "onDownloadProgress", "", "currentBytes", "", "totalBytes", "onDownloadStart", "onDownloadSuccess", "absolutePath", "", "onError", "error", "", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public interface StatusListener {

        /* compiled from: PdfDownloader.kt */
        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            public static void onDownloadProgress(StatusListener statusListener, long j, long j2) {
            }

            public static void onDownloadStart(StatusListener statusListener) {
            }

            public static void onDownloadSuccess(StatusListener statusListener, String absolutePath) {
                Intrinsics.checkParameterIsNotNull(absolutePath, "absolutePath");
            }

            public static void onError(StatusListener statusListener, Throwable error) {
                Intrinsics.checkParameterIsNotNull(error, "error");
            }
        }

        Context getContext();

        void onDownloadProgress(long j, long j2);

        void onDownloadStart();

        void onDownloadSuccess(String str);

        void onError(Throwable th);
    }

    public PdfDownloader(String url, StatusListener listener) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.listener = listener;
        BuildersKt__Builders_commonKt.async$default(GlobalScope.INSTANCE, null, null, new AnonymousClass1(url, null), 3, null);
    }

    /* compiled from: PdfDownloader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
    @DebugMetadata(c = "com.rajat.pdfviewer.PdfDownloader$1", f = "PdfDownloader.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.rajat.pdfviewer.PdfDownloader$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $url;
        int label;
        private CoroutineScope p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation continuation) {
            super(2, continuation);
            this.$url = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
            Intrinsics.checkParameterIsNotNull(completion, "completion");
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$url, completion);
            anonymousClass1.p$ = (CoroutineScope) obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PdfDownloader.this.download(this.$url);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void download(String str) {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new PdfDownloader$download$1(this, null), 2, null);
        File file = new File(this.listener.getContext().getCacheDir(), "downloaded_pdf.pdf");
        if (file.exists()) {
            file.delete();
        }
        try {
            URL url = new URL(str);
            URLConnection connection = url.openConnection();
            connection.connect();
            Intrinsics.checkExpressionValueIsNotNull(connection, "connection");
            int contentLength = connection.getContentLength();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream(), 8192);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = 0;
            while (true) {
                byte[] bArr = new byte[8192];
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new PdfDownloader$download$4(this, file, null), 2, null);
                    return;
                }
                if (contentLength > 0) {
                    intRef.element += 8192;
                    BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new PdfDownloader$download$2(this, intRef, contentLength, null), 2, null);
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            e.printStackTrace();
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new PdfDownloader$download$3(this, e, null), 2, null);
        }
    }
}
