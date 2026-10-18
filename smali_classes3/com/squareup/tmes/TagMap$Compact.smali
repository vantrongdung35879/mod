.class final Lcom/squareup/tmes/TagMap$Compact;
.super Lcom/squareup/tmes/TagMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/TagMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Compact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/tmes/TagMap<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public elementsByTag:[Ljava/lang/Object;

.field public maxTag:I


# direct methods
.method private constructor <init>(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/tmes/TagMap;-><init>(Ljava/util/Map;)V

    iput p2, p0, Lcom/squareup/tmes/TagMap$Compact;->maxTag:I

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/squareup/tmes/TagMap$Compact;->elementsByTag:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/tmes/TagMap$Compact;->elementsByTag:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input map key is negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static compactTagMapOf(Ljava/util/Map;I)Lcom/squareup/tmes/TagMap$Compact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;I)",
            "Lcom/squareup/tmes/TagMap$Compact<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/TagMap$Compact;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/TagMap$Compact;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2

    iget v0, p0, Lcom/squareup/tmes/TagMap$Compact;->maxTag:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/TagMap$Compact;->elementsByTag:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/squareup/tmes/TagMap$Compact;->maxTag:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/TagMap$Compact;->elementsByTag:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
