package com.rajat.pdfviewer.util;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: FileUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ(\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\rJ\u0016\u0010\u0010\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r¨\u0006\u0011"}, d2 = {"Lcom/rajat/pdfviewer/util/FileUtils;", "", "()V", "copy", "", "inputStream", "Ljava/io/InputStream;", "output", "Ljava/io/File;", "downloadFile", "context", "Landroid/content/Context;", "assetName", "", "filePath", "fileName", "fileFromAsset", "pdfViewer_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class FileUtils {
    public static final FileUtils INSTANCE = new FileUtils();

    private FileUtils() {
    }

    public final File fileFromAsset(Context context, String assetName) throws IOException {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(assetName, "assetName");
        File file = new File(context.getCacheDir(), String.valueOf(assetName));
        if (StringsKt.contains$default((CharSequence) assetName, (CharSequence) "/", false, 2, (Object) null)) {
            file.getParentFile().mkdirs();
        }
        copy(context.getAssets().open(assetName), file);
        return file;
    }

    public final void copy(InputStream inputStream, File file) throws IOException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                if (inputStream == null) {
                    Intrinsics.throwNpe();
                }
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        inputStream.close();
                        return;
                    } finally {
                        fileOutputStream.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } finally {
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                }
            }
            throw th;
        }
    }

    public final void downloadFile(Context context, String assetName, String filePath, String str) throws IOException {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(assetName, "assetName");
        Intrinsics.checkParameterIsNotNull(filePath, "filePath");
        String str2 = Environment.getExternalStorageDirectory() + '/' + filePath;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        copy(context.getAssets().open(assetName), new File(str2, '/' + str + ".pdf"));
    }
}
