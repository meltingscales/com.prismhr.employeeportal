.class public final synthetic Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/zxing/client/android/BeepManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p1}, Lcom/google/zxing/client/android/BeepManager;->lambda$playBeepSound$0(Landroid/media/MediaPlayer;)V

    return-void
.end method
