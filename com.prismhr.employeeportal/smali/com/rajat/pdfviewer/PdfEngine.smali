.class public final enum Lcom/rajat/pdfviewer/PdfEngine;
.super Ljava/lang/Enum;
.source "PdfEngine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rajat/pdfviewer/PdfEngine;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfEngine;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "INTERNAL",
        "GOOGLE",
        "pdfViewer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rajat/pdfviewer/PdfEngine;

.field public static final enum GOOGLE:Lcom/rajat/pdfviewer/PdfEngine;

.field public static final enum INTERNAL:Lcom/rajat/pdfviewer/PdfEngine;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rajat/pdfviewer/PdfEngine;

    new-instance v1, Lcom/rajat/pdfviewer/PdfEngine;

    const-string v2, "INTERNAL"

    const/4 v3, 0x0

    const/16 v4, 0x64

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/rajat/pdfviewer/PdfEngine;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/rajat/pdfviewer/PdfEngine;->INTERNAL:Lcom/rajat/pdfviewer/PdfEngine;

    aput-object v1, v0, v3

    new-instance v1, Lcom/rajat/pdfviewer/PdfEngine;

    const-string v2, "GOOGLE"

    const/4 v3, 0x1

    const/16 v4, 0xc8

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/rajat/pdfviewer/PdfEngine;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/rajat/pdfviewer/PdfEngine;->GOOGLE:Lcom/rajat/pdfviewer/PdfEngine;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rajat/pdfviewer/PdfEngine;->$VALUES:[Lcom/rajat/pdfviewer/PdfEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rajat/pdfviewer/PdfEngine;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rajat/pdfviewer/PdfEngine;
    .locals 1

    const-class v0, Lcom/rajat/pdfviewer/PdfEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rajat/pdfviewer/PdfEngine;

    return-object p0
.end method

.method public static values()[Lcom/rajat/pdfviewer/PdfEngine;
    .locals 1

    sget-object v0, Lcom/rajat/pdfviewer/PdfEngine;->$VALUES:[Lcom/rajat/pdfviewer/PdfEngine;

    invoke-virtual {v0}, [Lcom/rajat/pdfviewer/PdfEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rajat/pdfviewer/PdfEngine;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/rajat/pdfviewer/PdfEngine;->value:I

    return v0
.end method
