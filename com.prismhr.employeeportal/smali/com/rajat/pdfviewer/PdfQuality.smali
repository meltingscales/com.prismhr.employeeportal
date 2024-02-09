.class public final enum Lcom/rajat/pdfviewer/PdfQuality;
.super Ljava/lang/Enum;
.source "PdfQuality.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rajat/pdfviewer/PdfQuality;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rajat/pdfviewer/PdfQuality;",
        "",
        "ratio",
        "",
        "(Ljava/lang/String;II)V",
        "getRatio",
        "()I",
        "FAST",
        "NORMAL",
        "ENHANCED",
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
.field private static final synthetic $VALUES:[Lcom/rajat/pdfviewer/PdfQuality;

.field public static final enum ENHANCED:Lcom/rajat/pdfviewer/PdfQuality;

.field public static final enum FAST:Lcom/rajat/pdfviewer/PdfQuality;

.field public static final enum NORMAL:Lcom/rajat/pdfviewer/PdfQuality;


# instance fields
.field private final ratio:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/rajat/pdfviewer/PdfQuality;

    new-instance v2, Lcom/rajat/pdfviewer/PdfQuality;

    const-string v3, "FAST"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 8
    invoke-direct {v2, v3, v4, v5}, Lcom/rajat/pdfviewer/PdfQuality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/rajat/pdfviewer/PdfQuality;->FAST:Lcom/rajat/pdfviewer/PdfQuality;

    aput-object v2, v1, v4

    new-instance v2, Lcom/rajat/pdfviewer/PdfQuality;

    const-string v3, "NORMAL"

    const/4 v4, 0x2

    .line 9
    invoke-direct {v2, v3, v5, v4}, Lcom/rajat/pdfviewer/PdfQuality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/rajat/pdfviewer/PdfQuality;->NORMAL:Lcom/rajat/pdfviewer/PdfQuality;

    aput-object v2, v1, v5

    new-instance v2, Lcom/rajat/pdfviewer/PdfQuality;

    const-string v3, "ENHANCED"

    .line 10
    invoke-direct {v2, v3, v4, v0}, Lcom/rajat/pdfviewer/PdfQuality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/rajat/pdfviewer/PdfQuality;->ENHANCED:Lcom/rajat/pdfviewer/PdfQuality;

    aput-object v2, v1, v4

    sput-object v1, Lcom/rajat/pdfviewer/PdfQuality;->$VALUES:[Lcom/rajat/pdfviewer/PdfQuality;

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

    iput p3, p0, Lcom/rajat/pdfviewer/PdfQuality;->ratio:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rajat/pdfviewer/PdfQuality;
    .locals 1

    const-class v0, Lcom/rajat/pdfviewer/PdfQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rajat/pdfviewer/PdfQuality;

    return-object p0
.end method

.method public static values()[Lcom/rajat/pdfviewer/PdfQuality;
    .locals 1

    sget-object v0, Lcom/rajat/pdfviewer/PdfQuality;->$VALUES:[Lcom/rajat/pdfviewer/PdfQuality;

    invoke-virtual {v0}, [Lcom/rajat/pdfviewer/PdfQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rajat/pdfviewer/PdfQuality;

    return-object v0
.end method


# virtual methods
.method public final getRatio()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/rajat/pdfviewer/PdfQuality;->ratio:I

    return v0
.end method
