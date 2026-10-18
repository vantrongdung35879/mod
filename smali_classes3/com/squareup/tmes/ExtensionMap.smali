.class final Lcom/squareup/tmes/ExtensionMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/ExtendableMessage<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x1


# instance fields
.field private data:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput p1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    return-void
.end method

.method public constructor <init>(Lcom/squareup/tmes/ExtensionMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/ExtensionMap<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget p1, p1, Lcom/squareup/tmes/ExtensionMap;->size:I

    iput p1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    return-void
.end method

.method private insert(Lcom/squareup/tmes/Extension;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;TE;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    iget-object v2, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    if-ge p3, v1, :cond_1

    add-int v3, v1, p3

    add-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, p3

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    invoke-static {v1, p3, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    iput-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aput-object p1, v0, p3

    add-int/2addr v1, p3

    aput-object p2, v0, v1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/squareup/tmes/ExtensionMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/squareup/tmes/ExtensionMap;

    iget v0, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    iget v2, p1, Lcom/squareup/tmes/ExtensionMap;->size:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public get(Lcom/squareup/tmes/Extension;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    :goto_0
    return-object p1
.end method

.method public getExtension(I)Lcom/squareup/tmes/Extension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/tmes/Extension<",
            "TT;*>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/squareup/tmes/Extension;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    add-int/2addr v0, p1

    aget-object p1, v1, v0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/Extension<",
            "TT;*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/squareup/tmes/Extension;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public put(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    add-int/2addr v1, v0

    aput-object p2, p1, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/tmes/ExtensionMap;->insert(Lcom/squareup/tmes/Extension;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Lcom/squareup/tmes/Extension;

    invoke-virtual {v1}, Lcom/squareup/tmes/Extension;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/tmes/ExtensionMap;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/tmes/ExtensionMap;->size:I

    add-int/2addr v3, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v1, ", "

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
