package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* compiled from: DebugCoroutineInfo.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u001a\u001a\u00020\u0000J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\b\u0010\u001c\u001a\u00020\nH\u0016J!\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\n2\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030 H\u0000¢\u0006\u0002\b!J%\u0010\"\u001a\u00020\u001e*\b\u0012\u0004\u0012\u00020\u00110#2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082Pø\u0001\u0000¢\u0006\u0002\u0010$R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "", "context", "Lkotlin/coroutines/CoroutineContext;", "creationStackBottom", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "sequenceNumber", "", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;J)V", "_state", "", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getCreationStackBottom", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "creationStackTrace", "", "Ljava/lang/StackTraceElement;", "getCreationStackTrace", "()Ljava/util/List;", "lastObservedFrame", "lastObservedThread", "Ljava/lang/Thread;", "state", "getState", "()Ljava/lang/String;", "copy", "lastObservedStackTrace", "toString", "updateState", "", TypedValues.AttributesType.S_FRAME, "Lkotlin/coroutines/Continuation;", "updateState$kotlinx_coroutines_core", "yieldFrames", "Lkotlin/sequences/SequenceScope;", "(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class DebugCoroutineInfo {
    private String _state = DebugCoroutineInfoKt.CREATED;
    private final CoroutineContext context;
    private final CoroutineStackFrame creationStackBottom;
    public CoroutineStackFrame lastObservedFrame;
    public Thread lastObservedThread;
    public final long sequenceNumber;

    public DebugCoroutineInfo(CoroutineContext coroutineContext, CoroutineStackFrame coroutineStackFrame, long j) {
        this.context = coroutineContext;
        this.creationStackBottom = coroutineStackFrame;
        this.sequenceNumber = j;
    }

    public final CoroutineContext getContext() {
        return this.context;
    }

    public final CoroutineStackFrame getCreationStackBottom() {
        return this.creationStackBottom;
    }

    public final List<StackTraceElement> getCreationStackTrace() {
        return creationStackTrace();
    }

    public final String getState() {
        return this._state;
    }

    public final DebugCoroutineInfo copy() {
        DebugCoroutineInfo debugCoroutineInfo = new DebugCoroutineInfo(this.context, this.creationStackBottom, this.sequenceNumber);
        debugCoroutineInfo._state = this._state;
        debugCoroutineInfo.lastObservedFrame = this.lastObservedFrame;
        debugCoroutineInfo.lastObservedThread = this.lastObservedThread;
        return debugCoroutineInfo;
    }

    public final List<StackTraceElement> lastObservedStackTrace() {
        CoroutineStackFrame coroutineStackFrame = this.lastObservedFrame;
        if (coroutineStackFrame == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        while (coroutineStackFrame != null) {
            StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
        }
        return arrayList;
    }

    private final List<StackTraceElement> creationStackTrace() {
        CoroutineStackFrame coroutineStackFrame = this.creationStackBottom;
        if (coroutineStackFrame == null) {
            return CollectionsKt.emptyList();
        }
        return SequencesKt.toList(SequencesKt.sequence(new DebugCoroutineInfo$creationStackTrace$1(this, coroutineStackFrame, null)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004f -> B:25:0x0068). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0062 -> B:24:0x0065). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ java.lang.Object yieldFrames(kotlin.sequences.SequenceScope<? super java.lang.StackTraceElement> r6, kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.debug.internal.DebugCoroutineInfo$yieldFrames$1
            if (r0 == 0) goto L14
            r0 = r8
            kotlinx.coroutines.debug.internal.DebugCoroutineInfo$yieldFrames$1 r0 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfo$yieldFrames$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfo$yieldFrames$1 r0 = new kotlinx.coroutines.debug.internal.DebugCoroutineInfo$yieldFrames$1
            r0.<init>(r5, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r6 = r0.L$3
            java.lang.StackTraceElement r6 = (java.lang.StackTraceElement) r6
            java.lang.Object r6 = r0.L$2
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r6 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r6
            java.lang.Object r7 = r0.L$1
            kotlin.sequences.SequenceScope r7 = (kotlin.sequences.SequenceScope) r7
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.debug.internal.DebugCoroutineInfo r2 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfo) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L65
        L3a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L42:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L46:
            if (r7 != 0) goto L4b
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L4b:
            java.lang.StackTraceElement r8 = r7.getStackTraceElement()
            if (r8 == 0) goto L68
            r0.L$0 = r2
            r0.L$1 = r6
            r0.L$2 = r7
            r0.L$3 = r8
            r0.label = r3
            java.lang.Object r8 = r6.yield(r8, r0)
            if (r8 != r1) goto L62
            return r1
        L62:
            r4 = r7
            r7 = r6
            r6 = r4
        L65:
            r4 = r7
            r7 = r6
            r6 = r4
        L68:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 == 0) goto L6f
            goto L46
        L6f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugCoroutineInfo.yieldFrames(kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void updateState$kotlinx_coroutines_core(String str, Continuation<?> continuation) {
        if (Intrinsics.areEqual(this._state, str) && Intrinsics.areEqual(str, DebugCoroutineInfoKt.SUSPENDED) && this.lastObservedFrame != null) {
            return;
        }
        this._state = str;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        this.lastObservedFrame = (CoroutineStackFrame) continuation;
        this.lastObservedThread = Intrinsics.areEqual(str, DebugCoroutineInfoKt.RUNNING) ? Thread.currentThread() : null;
    }

    public String toString() {
        return "DebugCoroutineInfo(state=" + getState() + ",context=" + this.context + ')';
    }
}
