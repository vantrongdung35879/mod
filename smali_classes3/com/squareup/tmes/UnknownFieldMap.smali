.class final Lcom/squareup/tmes/UnknownFieldMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;,
        Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;,
        Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;,
        Lcom/squareup/tmes/UnknownFieldMap$VarintFieldValue;,
        Lcom/squareup/tmes/UnknownFieldMap$FieldValue;,
        Lcom/squareup/tmes/UnknownFieldMap$UnknownFieldType;
    }
.end annotation


# instance fields
.field public fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/tmes/UnknownFieldMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/tmes/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/tmes/WireType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/UnknownFieldMap$FieldValue;",
            ">;>;ITT;",
            "Lcom/squareup/tmes/WireType;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/squareup/tmes/UnknownFieldMap$1;->$SwitchMap$com$squareup$tmes$WireType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    check-cast p3, Lokio/ByteString;

    invoke-static {p2, p3}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->lengthDelimited(ILokio/ByteString;)Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported wireType = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p3, Ljava/lang/Long;

    invoke-static {p2, p3}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->fixed64(ILjava/lang/Long;)Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;

    move-result-object p1

    goto :goto_0

    :cond_3
    check-cast p3, Ljava/lang/Integer;

    invoke-static {p2, p3}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->fixed32(ILjava/lang/Integer;)Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;

    move-result-object p1

    goto :goto_0

    :cond_4
    check-cast p3, Ljava/lang/Long;

    invoke-static {p2, p3}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->varint(ILjava/lang/Long;)Lcom/squareup/tmes/UnknownFieldMap$VarintFieldValue;

    move-result-object p1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;

    invoke-virtual {p2}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/tmes/WireType;

    move-result-object p2

    invoke-virtual {p1}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/tmes/WireType;

    move-result-object p3

    if-ne p2, p3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Wire type differs from previous type for tag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addFixed32(ILjava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Lcom/squareup/tmes/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/tmes/WireType;->FIXED32:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/tmes/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/tmes/WireType;)V

    return-void
.end method

.method public addFixed64(ILjava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Lcom/squareup/tmes/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/tmes/WireType;->FIXED64:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/tmes/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/tmes/WireType;)V

    return-void
.end method

.method public addLengthDelimited(ILokio/ByteString;)V
    .locals 2

    invoke-direct {p0}, Lcom/squareup/tmes/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/tmes/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/tmes/WireType;)V

    return-void
.end method

.method public addVarint(ILjava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Lcom/squareup/tmes/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/tmes/WireType;->VARINT:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/tmes/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/tmes/WireType;)V

    return-void
.end method

.method public getSerializedSize()I
    .locals 4

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/squareup/tmes/WireOutput;->varintTagSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;

    invoke-virtual {v2}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->getSerializedSize()I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public write(Lcom/squareup/tmes/WireOutput;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;

    invoke-virtual {v3, v2, p1}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->write(ILcom/squareup/tmes/WireOutput;)V

    goto :goto_0

    :cond_1
    return-void
.end method
