.class public final Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__MigrationKt;->combineLatest(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,112:1\n240#2,2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\t"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core",
        "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2",
        "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $flows$inlined:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $transform$inlined$1:Lkotlin/jvm/functions/Function5;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;->$transform$inlined$1:Lkotlin/jvm/functions/Function5;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 113
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2;-><init>(Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0, v1, v2, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 109
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public collect$$forInline(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 113
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2;-><init>(Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p1, v0, v1, v2, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 109
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
