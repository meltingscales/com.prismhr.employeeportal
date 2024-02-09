package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugCoroutineInfo.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0082P"}, d2 = {"yieldFrames", "", "Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", TypedValues.AttributesType.S_FRAME, "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfo", f = "DebugCoroutineInfo.kt", i = {0, 0, 0, 0}, l = {67}, m = "yieldFrames", n = {"this", "$this$yieldFrames", TypedValues.AttributesType.S_FRAME, "it"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
public final class DebugCoroutineInfo$yieldFrames$1 extends RestrictedContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DebugCoroutineInfo this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugCoroutineInfo$yieldFrames$1(DebugCoroutineInfo debugCoroutineInfo, Continuation continuation) {
        super(continuation);
        this.this$0 = debugCoroutineInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.yieldFrames(null, null, this);
    }
}
