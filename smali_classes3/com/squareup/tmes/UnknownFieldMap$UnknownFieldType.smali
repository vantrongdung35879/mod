.class final enum Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnknownFieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

.field public static final enum FIXED32:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

.field public static final enum FIXED64:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

.field public static final enum VARINT:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->VARINT:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    new-instance v1, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    const-string v3, "FIXED32"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->FIXED32:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    new-instance v3, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    const-string v5, "FIXED64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->FIXED64:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    new-instance v5, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    const-string v7, "LENGTH_DELIMITED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->LENGTH_DELIMITED:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->$VALUES:[Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;
    .locals 2

    const-string/jumbo v0, "varint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->VARINT:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object p0

    :cond_0
    const-string v0, "fixed32"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->FIXED32:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object p0

    :cond_1
    const-string v0, "fixed64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->FIXED64:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object p0

    :cond_2
    const-string v0, "length-delimited"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->LENGTH_DELIMITED:Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type "

    invoke-static {v1, p0}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;
    .locals 1

    const-class v0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object p0
.end method

.method public static values()[Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;
    .locals 1

    sget-object v0, Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->$VALUES:[Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    invoke-virtual {v0}, [Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;

    return-object v0
.end method
