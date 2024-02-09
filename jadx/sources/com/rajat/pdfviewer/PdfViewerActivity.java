package com.rajat.pdfviewer;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.rajat.pdfviewer.PdfRendererView;
import com.rajat.pdfviewer.util.FileUtils;
import java.io.File;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfViewerActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0006\u0018\u0000 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\b\u0010\u0015\u001a\u00020\u0010H\u0002J\b\u0010\u0016\u001a\u00020\u0010H\u0002J\u001a\u0010\u0017\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u001c\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u001d\u001a\u00020\u00102\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\n2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020\u0010H\u0014J\u0010\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0006H\u0016J\b\u0010&\u001a\u00020\u0010H\u0002J\u0012\u0010'\u001a\u00020\n2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J-\u0010(\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010)\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040*2\u0006\u0010+\u001a\u00020,H\u0016¢\u0006\u0002\u0010-J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u0004H\u0002J\f\u00100\u001a\u00020\u0010*\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u00062"}, d2 = {"Lcom/rajat/pdfviewer/PdfViewerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "fileUrl", "", "menuItem", "Landroid/view/MenuItem;", "onComplete", "Landroid/content/BroadcastReceiver;", "permissionGranted", "", "Ljava/lang/Boolean;", "checkInternetConnection", "context", "Landroid/content/Context;", "checkPermission", "", "requestCode", "", "checkPermissionOnInit", "downloadPdf", "enableDownload", "init", "initPdfViewer", "engine", "Lcom/rajat/pdfviewer/PdfEngine;", "initPdfViewerWithPath", "filePath", "loadFileFromNetwork", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "menu", "Landroid/view/Menu;", "onDestroy", "onOptionsItemSelected", "item", "onPdfError", "onPrepareOptionsMenu", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "setUpToolbar", "toolbarTitle", "showProgressBar", "Companion", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class PdfViewerActivity extends AppCompatActivity {
    public static final String ENABLE_FILE_DOWNLOAD = "enable_download";
    public static final String FILE_DIRECTORY = "pdf_file_directory";
    public static final String FILE_TITLE = "pdf_file_title";
    public static final String FILE_URL = "pdf_file_url";
    public static final String FROM_ASSETS = "from_assests";
    private static boolean isFromAssets;
    private static boolean isPDFFromPath;
    private HashMap _$_findViewCache;
    private String fileUrl;
    private MenuItem menuItem;
    public static final Companion Companion = new Companion(null);
    private static PdfEngine engine = PdfEngine.INTERNAL;
    private static boolean enableDownload = true;
    private static int PERMISSION_CODE = 4040;
    private Boolean permissionGranted = false;
    private BroadcastReceiver onComplete = new BroadcastReceiver() { // from class: com.rajat.pdfviewer.PdfViewerActivity$onComplete$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Toast.makeText(context, "File is Downloaded Successfully", 0).show();
            if (context != null) {
                context.unregisterReceiver(this);
            }
        }
    };

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

    /* compiled from: PdfViewerActivity.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JB\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\u00042\b\u0010$\u001a\u0004\u0018\u00010\u00042\b\u0010%\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010&\u001a\u00020\u0010J8\u0010'\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010(\u001a\u0004\u0018\u00010\u00042\b\u0010$\u001a\u0004\u0018\u00010\u00042\b\u0010%\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014¨\u0006)"}, d2 = {"Lcom/rajat/pdfviewer/PdfViewerActivity$Companion;", "", "()V", "ENABLE_FILE_DOWNLOAD", "", "FILE_DIRECTORY", "FILE_TITLE", "FILE_URL", "FROM_ASSETS", "PERMISSION_CODE", "", "getPERMISSION_CODE", "()I", "setPERMISSION_CODE", "(I)V", "enableDownload", "", "getEnableDownload", "()Z", "setEnableDownload", "(Z)V", "engine", "Lcom/rajat/pdfviewer/PdfEngine;", "getEngine", "()Lcom/rajat/pdfviewer/PdfEngine;", "setEngine", "(Lcom/rajat/pdfviewer/PdfEngine;)V", "isFromAssets", "setFromAssets", "isPDFFromPath", "setPDFFromPath", "launchPdfFromPath", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "path", "pdfTitle", "directoryName", "fromAssets", "launchPdfFromUrl", "pdfUrl", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PdfEngine getEngine() {
            return PdfViewerActivity.engine;
        }

        public final void setEngine(PdfEngine pdfEngine) {
            Intrinsics.checkParameterIsNotNull(pdfEngine, "<set-?>");
            PdfViewerActivity.engine = pdfEngine;
        }

        public final boolean getEnableDownload() {
            return PdfViewerActivity.enableDownload;
        }

        public final void setEnableDownload(boolean z) {
            PdfViewerActivity.enableDownload = z;
        }

        public final boolean isPDFFromPath() {
            return PdfViewerActivity.isPDFFromPath;
        }

        public final void setPDFFromPath(boolean z) {
            PdfViewerActivity.isPDFFromPath = z;
        }

        public final boolean isFromAssets() {
            return PdfViewerActivity.isFromAssets;
        }

        public final void setFromAssets(boolean z) {
            PdfViewerActivity.isFromAssets = z;
        }

        public final int getPERMISSION_CODE() {
            return PdfViewerActivity.PERMISSION_CODE;
        }

        public final void setPERMISSION_CODE(int i) {
            PdfViewerActivity.PERMISSION_CODE = i;
        }

        public static /* synthetic */ Intent launchPdfFromUrl$default(Companion companion, Context context, String str, String str2, String str3, boolean z, int i, Object obj) {
            if ((i & 16) != 0) {
                z = true;
            }
            return companion.launchPdfFromUrl(context, str, str2, str3, z);
        }

        public final Intent launchPdfFromUrl(Context context, String str, String str2, String str3, boolean z) {
            Intent intent = new Intent(context, PdfViewerActivity.class);
            intent.putExtra(PdfViewerActivity.FILE_URL, str);
            intent.putExtra(PdfViewerActivity.FILE_TITLE, str2);
            intent.putExtra(PdfViewerActivity.FILE_DIRECTORY, str3);
            intent.putExtra(PdfViewerActivity.ENABLE_FILE_DOWNLOAD, z);
            setPDFFromPath(false);
            return intent;
        }

        public static /* synthetic */ Intent launchPdfFromPath$default(Companion companion, Context context, String str, String str2, String str3, boolean z, boolean z2, int i, Object obj) {
            if ((i & 16) != 0) {
                z = true;
            }
            boolean z3 = z;
            if ((i & 32) != 0) {
                z2 = false;
            }
            return companion.launchPdfFromPath(context, str, str2, str3, z3, z2);
        }

        public final Intent launchPdfFromPath(Context context, String str, String str2, String str3, boolean z, boolean z2) {
            Intent intent = new Intent(context, PdfViewerActivity.class);
            intent.putExtra(PdfViewerActivity.FILE_URL, str);
            intent.putExtra(PdfViewerActivity.FILE_TITLE, str2);
            intent.putExtra(PdfViewerActivity.FILE_DIRECTORY, str3);
            intent.putExtra(PdfViewerActivity.ENABLE_FILE_DOWNLOAD, z);
            intent.putExtra(PdfViewerActivity.FROM_ASSETS, z2);
            setPDFFromPath(true);
            return intent;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_pdf_viewer);
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            Intrinsics.throwNpe();
        }
        String string = extras.getString(FILE_TITLE, "PDF");
        Intrinsics.checkExpressionValueIsNotNull(string, "intent.extras!!.getStrin…      \"PDF\"\n            )");
        setUpToolbar(string);
        Intent intent2 = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent2, "intent");
        Bundle extras2 = intent2.getExtras();
        if (extras2 == null) {
            Intrinsics.throwNpe();
        }
        enableDownload = extras2.getBoolean(ENABLE_FILE_DOWNLOAD, true);
        Intent intent3 = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent3, "intent");
        Bundle extras3 = intent3.getExtras();
        if (extras3 == null) {
            Intrinsics.throwNpe();
        }
        isFromAssets = extras3.getBoolean(FROM_ASSETS, false);
        engine = PdfEngine.INTERNAL;
        init();
    }

    private final void init() {
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            Intrinsics.throwNpe();
        }
        if (extras.containsKey(FILE_URL)) {
            Intent intent2 = getIntent();
            Intrinsics.checkExpressionValueIsNotNull(intent2, "intent");
            Bundle extras2 = intent2.getExtras();
            if (extras2 == null) {
                Intrinsics.throwNpe();
            }
            String string = extras2.getString(FILE_URL);
            this.fileUrl = string;
            if (isPDFFromPath) {
                initPdfViewerWithPath(string);
                return;
            }
            PdfViewerActivity pdfViewerActivity = this;
            if (checkInternetConnection(pdfViewerActivity)) {
                loadFileFromNetwork(this.fileUrl);
            } else {
                Toast.makeText(pdfViewerActivity, "No Internet Connection. Please Check your internet connection.", 0).show();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
        if (r7.hasTransport(4) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        if (r7 != 17) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean checkInternetConnection(android.content.Context r7) {
        /*
            r6 = this;
            java.lang.String r0 = "connectivity"
            java.lang.Object r7 = r7.getSystemService(r0)
            android.net.ConnectivityManager r7 = (android.net.ConnectivityManager) r7
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 3
            r2 = 2
            r3 = 0
            r4 = 1
            r5 = 23
            if (r0 < r5) goto L36
            if (r7 == 0) goto L4a
            android.net.Network r0 = r7.getActiveNetwork()
            android.net.NetworkCapabilities r7 = r7.getNetworkCapabilities(r0)
            if (r7 == 0) goto L4a
            boolean r0 = r7.hasTransport(r4)
            if (r0 == 0) goto L26
        L24:
            r1 = r2
            goto L4b
        L26:
            boolean r0 = r7.hasTransport(r3)
            if (r0 == 0) goto L2e
        L2c:
            r1 = r4
            goto L4b
        L2e:
            r0 = 4
            boolean r7 = r7.hasTransport(r0)
            if (r7 == 0) goto L4a
            goto L4b
        L36:
            if (r7 == 0) goto L4a
            android.net.NetworkInfo r7 = r7.getActiveNetworkInfo()
            if (r7 == 0) goto L4a
            int r7 = r7.getType()
            if (r7 == 0) goto L2c
            if (r7 == r4) goto L24
            r0 = 17
            if (r7 == r0) goto L4b
        L4a:
            r1 = r3
        L4b:
            if (r1 == 0) goto L4e
            r3 = r4
        L4e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rajat.pdfviewer.PdfViewerActivity.checkInternetConnection(android.content.Context):boolean");
    }

    private final void setUpToolbar(String str) {
        setSupportActionBar((Toolbar) _$_findCachedViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
            if (((TextView) _$_findCachedViewById(R.id.tvAppBarTitle)) != null) {
                TextView textView = (TextView) _$_findCachedViewById(R.id.tvAppBarTitle);
                if (textView != null) {
                    textView.setText(str);
                }
                supportActionBar.setDisplayShowTitleEnabled(false);
                return;
            }
            supportActionBar.setDisplayShowTitleEnabled(true);
            supportActionBar.setTitle(str);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        this.menuItem = menu != null ? menu.findItem(R.id.download) : null;
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem menuItem = this.menuItem;
        if (menuItem != null) {
            menuItem.setVisible(enableDownload);
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == R.id.download) {
            checkPermission(PERMISSION_CODE);
        }
        if (item.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(item);
    }

    private final void loadFileFromNetwork(String str) {
        initPdfViewer(str, engine);
    }

    private final void initPdfViewer(String str, PdfEngine pdfEngine) {
        if (TextUtils.isEmpty(str)) {
            onPdfError();
        }
        try {
            PdfRendererView pdfRendererView = (PdfRendererView) _$_findCachedViewById(R.id.pdfView);
            if (str == null) {
                Intrinsics.throwNpe();
            }
            pdfRendererView.initWithUrl(str, PdfQuality.NORMAL, pdfEngine);
        } catch (Exception unused) {
            onPdfError();
        }
        enableDownload();
    }

    private final void initPdfViewerWithPath(String str) {
        File file;
        if (TextUtils.isEmpty(str)) {
            onPdfError();
        }
        try {
            if (isFromAssets) {
                FileUtils fileUtils = FileUtils.INSTANCE;
                PdfViewerActivity pdfViewerActivity = this;
                if (str == null) {
                    Intrinsics.throwNpe();
                }
                file = fileUtils.fileFromAsset(pdfViewerActivity, str);
            } else {
                if (str == null) {
                    Intrinsics.throwNpe();
                }
                file = new File(str);
            }
            ((PdfRendererView) _$_findCachedViewById(R.id.pdfView)).initWithFile(file, PdfQuality.NORMAL);
        } catch (Exception unused) {
            onPdfError();
        }
        enableDownload();
    }

    private final void enableDownload() {
        checkPermissionOnInit();
        ((PdfRendererView) _$_findCachedViewById(R.id.pdfView)).setStatusListener(new PdfRendererView.StatusCallBack() { // from class: com.rajat.pdfviewer.PdfViewerActivity$enableDownload$1
            @Override // com.rajat.pdfviewer.PdfRendererView.StatusCallBack
            public void onDownloadProgress(int i, long j, Long l) {
            }

            @Override // com.rajat.pdfviewer.PdfRendererView.StatusCallBack
            public void onPageChanged(int i, int i2) {
            }

            @Override // com.rajat.pdfviewer.PdfRendererView.StatusCallBack
            public void onDownloadStart() {
                PdfViewerActivity.this.showProgressBar(true);
            }

            @Override // com.rajat.pdfviewer.PdfRendererView.StatusCallBack
            public void onDownloadSuccess() {
                PdfViewerActivity.this.showProgressBar(false);
            }

            @Override // com.rajat.pdfviewer.PdfRendererView.StatusCallBack
            public void onError(Throwable error) {
                Intrinsics.checkParameterIsNotNull(error, "error");
                PdfViewerActivity.this.onPdfError();
            }
        });
    }

    private final void checkPermissionOnInit() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            this.permissionGranted = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPdfError() {
        Toast.makeText(this, "Pdf has been corrupted", 0).show();
        showProgressBar(true);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showProgressBar(boolean z) {
        ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(R.id.progressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
        progressBar.setVisibility(z ? 0 : 8);
    }

    private final void downloadPdf() {
        try {
            Boolean bool = this.permissionGranted;
            if (bool == null) {
                Intrinsics.throwNpe();
            }
            if (bool.booleanValue()) {
                String stringExtra = getIntent().getStringExtra(FILE_DIRECTORY);
                String stringExtra2 = getIntent().getStringExtra(FILE_TITLE);
                String stringExtra3 = getIntent().getStringExtra(FILE_URL);
                String sb = (TextUtils.isEmpty(stringExtra) ? new StringBuilder().append('/').append(stringExtra2).append(".pdf") : new StringBuilder().append('/').append(stringExtra).append('/').append(stringExtra2).append(".pdf")).toString();
                try {
                    if (isPDFFromPath) {
                        FileUtils fileUtils = FileUtils.INSTANCE;
                        PdfViewerActivity pdfViewerActivity = this;
                        if (stringExtra3 == null) {
                            Intrinsics.throwNpe();
                        }
                        if (stringExtra == null) {
                            Intrinsics.throwNpe();
                        }
                        fileUtils.downloadFile(pdfViewerActivity, stringExtra3, stringExtra, stringExtra2);
                        return;
                    }
                    Uri parse = Uri.parse(stringExtra3);
                    DownloadManager downloadManager = (DownloadManager) getSystemService("download");
                    DownloadManager.Request request = new DownloadManager.Request(parse);
                    request.setAllowedNetworkTypes(3);
                    request.setAllowedOverRoaming(true);
                    request.setTitle(stringExtra2);
                    request.setDescription("Downloading " + stringExtra2);
                    request.setVisibleInDownloadsUi(true);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, sb);
                    request.setNotificationVisibility(1);
                    registerReceiver(this.onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                    if (downloadManager == null) {
                        Intrinsics.throwNpe();
                    }
                    downloadManager.enqueue(request);
                    return;
                } catch (Exception unused) {
                    Toast.makeText(this, "Unable to download file", 0).show();
                    return;
                }
            }
            checkPermissionOnInit();
        } catch (Exception e) {
            Log.e("Error", e.toString());
        }
    }

    private final void checkPermission(int i) {
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, i);
            return;
        }
        this.permissionGranted = true;
        downloadPdf();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkParameterIsNotNull(permissions, "permissions");
        Intrinsics.checkParameterIsNotNull(grantResults, "grantResults");
        super.onRequestPermissionsResult(i, permissions, grantResults);
        if (i == PERMISSION_CODE) {
            if ((!(grantResults.length == 0)) && grantResults[0] == 0) {
                this.permissionGranted = true;
                downloadPdf();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((PdfRendererView) _$_findCachedViewById(R.id.pdfView)).closePdfRender();
    }
}
