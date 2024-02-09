package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* compiled from: DebugCoroutineInfo.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfo$creationStackTrace$1", f = "DebugCoroutineInfo.kt", i = {0}, l = {62}, m = "invokeSuspend", n = {"$this$sequence"}, s = {"L$0"})
/* loaded from: classes.dex */
final class DebugCoroutineInfo$creationStackTrace$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super StackTraceElement>, Continuation<? super Unit>, Object> {
    final /* synthetic */ CoroutineStackFrame $bottom;
    Object L$0;
    int label;
    private SequenceScope p$;
    final /* synthetic */ DebugCoroutineInfo this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugCoroutineInfo$creationStackTrace$1(DebugCoroutineInfo debugCoroutineInfo, CoroutineStackFrame coroutineStackFrame, Continuation continuation) {
        super(2, continuation);
        this.this$0 = debugCoroutineInfo;
        this.$bottom = coroutineStackFrame;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DebugCoroutineInfo$creationStackTrace$1 debugCoroutineInfo$creationStackTrace$1 = new DebugCoroutineInfo$creationStackTrace$1(this.this$0, this.$bottom, continuation);
        debugCoroutineInfo$creationStackTrace$1.p$ = (SequenceScope) obj;
        return debugCoroutineInfo$creationStackTrace$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super StackTraceElement> sequenceScope, Continuation<? super Unit> continuation) {
        return ((DebugCoroutineInfo$creationStackTrace$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SequenceScope<? super StackTraceElement> sequenceScope = this.p$;
            DebugCoroutineInfo debugCoroutineInfo = this.this$0;
            CoroutineStackFrame callerFrame = this.$bottom.getCallerFrame();
            this.L$0 = sequenceScope;
            this.label = 1;
            if (debugCoroutineInfo.yieldFrames(sequenceScope, callerFrame, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}