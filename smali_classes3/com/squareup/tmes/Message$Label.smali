.class public final enum Lcom/squareup/tmes/Message$Label;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/tmes/Message$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/tmes/Message$Label;

.field public static final enum OPTIONAL:Lcom/squareup/tmes/Message$Label;

.field public static final ORDER_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/squareup/tmes/Message$Label;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PACKED:Lcom/squareup/tmes/Message$Label;

.field public static final enum REPEATED:Lcom/squareup/tmes/Message$Label;

.field public static final enum REQUIRED:Lcom/squareup/tmes/Message$Label;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/squareup/tmes/Message$Label;

    const/16 v1, 0x20

    const-string v2, "REQUIRED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/squareup/tmes/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/tmes/Message$Label;->REQUIRED:Lcom/squareup/tmes/Message$Label;

    new-instance v1, Lcom/squareup/tmes/Message$Label;

    const/16 v2, 0x40

    const-string v4, "OPTIONAL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/squareup/tmes/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/tmes/Message$Label;->OPTIONAL:Lcom/squareup/tmes/Message$Label;

    new-instance v2, Lcom/squareup/tmes/Message$Label;

    const/16 v4, 0x80

    const-string v6, "REPEATED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/squareup/tmes/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;

    new-instance v4, Lcom/squareup/tmes/Message$Label;

    const/16 v6, 0x100

    const-string v8, "PACKED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/squareup/tmes/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/squareup/tmes/Message$Label;->PACKED:Lcom/squareup/tmes/Message$Label;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/squareup/tmes/Message$Label;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/squareup/tmes/Message$Label;->$VALUES:[Lcom/squareup/tmes/Message$Label;

    new-instance v0, Lcom/squareup/tmes/Message$Label$1;

    invoke-direct {v0}, Lcom/squareup/tmes/Message$Label$1;-><init>()V

    sput-object v0, Lcom/squareup/tmes/Message$Label;->ORDER_BY_NAME:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/tmes/Message$Label;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/tmes/Message$Label;
    .locals 1

    const-class v0, Lcom/squareup/tmes/Message$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/tmes/Message$Label;

    return-object p0
.end method

.method public static values()[Lcom/squareup/tmes/Message$Label;
    .locals 1

    sget-object v0, Lcom/squareup/tmes/Message$Label;->$VALUES:[Lcom/squareup/tmes/Message$Label;

    invoke-virtual {v0}, [Lcom/squareup/tmes/Message$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/tmes/Message$Label;

    return-object v0
.end method


# virtual methods
.method public isPacked()Z
    .locals 1

    sget-object v0, Lcom/squareup/tmes/Message$Label;->PACKED:Lcom/squareup/tmes/Message$Label;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeated()Z
    .locals 1

    sget-object v0, Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/squareup/tmes/Message$Label;->PACKED:Lcom/squareup/tmes/Message$Label;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/Message$Label;->value:I

    return v0
.end method
