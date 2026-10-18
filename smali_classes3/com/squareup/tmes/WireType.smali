.class public final enum Lcom/squareup/tmes/WireType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/tmes/WireType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/tmes/WireType;

.field public static final enum END_GROUP:Lcom/squareup/tmes/WireType;

.field public static final enum FIXED32:Lcom/squareup/tmes/WireType;

.field public static final enum FIXED64:Lcom/squareup/tmes/WireType;

.field public static final FIXED_32_SIZE:I = 0x4

.field public static final FIXED_64_SIZE:I = 0x8

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

.field public static final enum START_GROUP:Lcom/squareup/tmes/WireType;

.field public static final TAG_TYPE_BITS:I = 0x3

.field private static final TAG_TYPE_MASK:I = 0x7

.field public static final enum VARINT:Lcom/squareup/tmes/WireType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/squareup/tmes/WireType;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/tmes/WireType;->VARINT:Lcom/squareup/tmes/WireType;

    new-instance v1, Lcom/squareup/tmes/WireType;

    const-string v3, "FIXED64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/tmes/WireType;->FIXED64:Lcom/squareup/tmes/WireType;

    new-instance v3, Lcom/squareup/tmes/WireType;

    const-string v5, "LENGTH_DELIMITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    new-instance v5, Lcom/squareup/tmes/WireType;

    const-string v7, "START_GROUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/squareup/tmes/WireType;->START_GROUP:Lcom/squareup/tmes/WireType;

    new-instance v7, Lcom/squareup/tmes/WireType;

    const-string v9, "END_GROUP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/squareup/tmes/WireType;->END_GROUP:Lcom/squareup/tmes/WireType;

    new-instance v9, Lcom/squareup/tmes/WireType;

    const-string v11, "FIXED32"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/squareup/tmes/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/squareup/tmes/WireType;->FIXED32:Lcom/squareup/tmes/WireType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/squareup/tmes/WireType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/squareup/tmes/WireType;->$VALUES:[Lcom/squareup/tmes/WireType;

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

    iput p3, p0, Lcom/squareup/tmes/WireType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/squareup/tmes/WireType;
    .locals 3

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/squareup/tmes/WireType;->FIXED32:Lcom/squareup/tmes/WireType;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No WireType for value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/squareup/tmes/WireType;->END_GROUP:Lcom/squareup/tmes/WireType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/squareup/tmes/WireType;->START_GROUP:Lcom/squareup/tmes/WireType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/squareup/tmes/WireType;->FIXED64:Lcom/squareup/tmes/WireType;

    return-object p0

    :cond_5
    sget-object p0, Lcom/squareup/tmes/WireType;->VARINT:Lcom/squareup/tmes/WireType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/tmes/WireType;
    .locals 1

    const-class v0, Lcom/squareup/tmes/WireType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/tmes/WireType;

    return-object p0
.end method

.method public static values()[Lcom/squareup/tmes/WireType;
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->$VALUES:[Lcom/squareup/tmes/WireType;

    invoke-virtual {v0}, [Lcom/squareup/tmes/WireType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/tmes/WireType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/WireType;->value:I

    return v0
.end method
