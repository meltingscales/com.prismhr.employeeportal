package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UArraySorting.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UArraySortingKt {
    /* renamed from: partition-4UcCI2c  reason: not valid java name */
    private static final int m514partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte m141getw2LRezQ = UByteArray.m141getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m141getw2LRezQ2 = UByteArray.m141getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = m141getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(m141getw2LRezQ2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m141getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte m141getw2LRezQ3 = UByteArray.m141getw2LRezQ(bArr, i);
                UByteArray.m146setVurrAj0(bArr, i, UByteArray.m141getw2LRezQ(bArr, i2));
                UByteArray.m146setVurrAj0(bArr, i2, m141getw2LRezQ3);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-4UcCI2c  reason: not valid java name */
    private static final void m518quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m514partition4UcCI2c = m514partition4UcCI2c(bArr, i, i2);
        int i3 = m514partition4UcCI2c - 1;
        if (i < i3) {
            m518quickSort4UcCI2c(bArr, i, i3);
        }
        if (m514partition4UcCI2c < i2) {
            m518quickSort4UcCI2c(bArr, m514partition4UcCI2c, i2);
        }
    }

    /* renamed from: partition-Aa5vz7o  reason: not valid java name */
    private static final int m515partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short m401getMh2AYeg = UShortArray.m401getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m401getMh2AYeg2 = UShortArray.m401getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = m401getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m401getMh2AYeg2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m401getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short m401getMh2AYeg3 = UShortArray.m401getMh2AYeg(sArr, i);
                UShortArray.m406set01HTLdE(sArr, i, UShortArray.m401getMh2AYeg(sArr, i2));
                UShortArray.m406set01HTLdE(sArr, i2, m401getMh2AYeg3);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-Aa5vz7o  reason: not valid java name */
    private static final void m519quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m515partitionAa5vz7o = m515partitionAa5vz7o(sArr, i, i2);
        int i3 = m515partitionAa5vz7o - 1;
        if (i < i3) {
            m519quickSortAa5vz7o(sArr, i, i3);
        }
        if (m515partitionAa5vz7o < i2) {
            m519quickSortAa5vz7o(sArr, m515partitionAa5vz7o, i2);
        }
    }

    /* renamed from: partition-oBK06Vg  reason: not valid java name */
    private static final int m516partitionoBK06Vg(int[] iArr, int i, int i2) {
        int m219getpVg5ArA = UIntArray.m219getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.uintCompare(UIntArray.m219getpVg5ArA(iArr, i), m219getpVg5ArA) < 0) {
                i++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m219getpVg5ArA(iArr, i2), m219getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int m219getpVg5ArA2 = UIntArray.m219getpVg5ArA(iArr, i);
                UIntArray.m224setVXSXFK8(iArr, i, UIntArray.m219getpVg5ArA(iArr, i2));
                UIntArray.m224setVXSXFK8(iArr, i2, m219getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-oBK06Vg  reason: not valid java name */
    private static final void m520quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m516partitionoBK06Vg = m516partitionoBK06Vg(iArr, i, i2);
        int i3 = m516partitionoBK06Vg - 1;
        if (i < i3) {
            m520quickSortoBK06Vg(iArr, i, i3);
        }
        if (m516partitionoBK06Vg < i2) {
            m520quickSortoBK06Vg(iArr, m516partitionoBK06Vg, i2);
        }
    }

    /* renamed from: partition--nroSd4  reason: not valid java name */
    private static final int m513partitionnroSd4(long[] jArr, int i, int i2) {
        long m297getsVKNKU = ULongArray.m297getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.ulongCompare(ULongArray.m297getsVKNKU(jArr, i), m297getsVKNKU) < 0) {
                i++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m297getsVKNKU(jArr, i2), m297getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long m297getsVKNKU2 = ULongArray.m297getsVKNKU(jArr, i);
                ULongArray.m302setk8EXiF4(jArr, i, ULongArray.m297getsVKNKU(jArr, i2));
                ULongArray.m302setk8EXiF4(jArr, i2, m297getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort--nroSd4  reason: not valid java name */
    private static final void m517quickSortnroSd4(long[] jArr, int i, int i2) {
        int m513partitionnroSd4 = m513partitionnroSd4(jArr, i, i2);
        int i3 = m513partitionnroSd4 - 1;
        if (i < i3) {
            m517quickSortnroSd4(jArr, i, i3);
        }
        if (m513partitionnroSd4 < i2) {
            m517quickSortnroSd4(jArr, m513partitionnroSd4, i2);
        }
    }

    /* renamed from: sortArray-4UcCI2c  reason: not valid java name */
    public static final void m522sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m518quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* renamed from: sortArray-Aa5vz7o  reason: not valid java name */
    public static final void m523sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m519quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* renamed from: sortArray-oBK06Vg  reason: not valid java name */
    public static final void m524sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m520quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* renamed from: sortArray--nroSd4  reason: not valid java name */
    public static final void m521sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m517quickSortnroSd4(array, i, i2 - 1);
    }
}
