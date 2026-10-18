.class final Lcom/squareup/tmes/EnumAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/tmes/ProtoEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final constants:[Lcom/squareup/tmes/ProtoEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final isDense:Z

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final values:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/tmes/EnumAdapter$1;

    invoke-direct {v0}, Lcom/squareup/tmes/EnumAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/tmes/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/squareup/tmes/ProtoEnum;

    iput-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->constants:[Lcom/squareup/tmes/ProtoEnum;

    sget-object v0, Lcom/squareup/tmes/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    iput-boolean v3, p0, Lcom/squareup/tmes/EnumAdapter;->isDense:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->values:[I

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/squareup/tmes/EnumAdapter;->isDense:Z

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->values:[I

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->values:[I

    iget-object v2, p0, Lcom/squareup/tmes/EnumAdapter;->constants:[Lcom/squareup/tmes/ProtoEnum;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public fromInt(I)Lcom/squareup/tmes/ProtoEnum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/tmes/EnumAdapter;->isDense:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/EnumAdapter;->values:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/tmes/EnumAdapter;->constants:[Lcom/squareup/tmes/ProtoEnum;

    aget-object p1, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/squareup/tmes/EnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toInt(Lcom/squareup/tmes/ProtoEnum;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result p1

    return p1
.end method
