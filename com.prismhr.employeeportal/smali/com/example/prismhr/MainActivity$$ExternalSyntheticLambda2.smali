.class public final synthetic Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/example/prismhr/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/prismhr/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/example/prismhr/MainActivity;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/example/prismhr/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/example/prismhr/MainActivity;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/example/prismhr/MainActivity;->$r8$lambda$Vz8K_6n-92u1Lzw2Rym9c9ywHpE(Lcom/example/prismhr/MainActivity;Lorg/json/JSONArray;)V

    return-void
.end method
