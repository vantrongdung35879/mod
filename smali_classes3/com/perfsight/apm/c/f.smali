.class public Lcom/perfsight/apm/c/f;
.super Lcom/perfsight/apm/c/a;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perfsight/apm/c/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/String;[II)I
    .locals 12

    const/4 v0, 0x0

    aget v1, p2, v0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v6, v2

    const/4 v5, 0x1

    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_7

    aget-object v7, p1, v5

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/perfsight/apm/c/a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v3, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfsight/apm/c/a$a;

    move-object v6, v9

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v3, :cond_6

    const-string v8, "gx"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "g"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ge"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v8, "sgx"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v7}, Lcom/perfsight/apm/c/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5

    const-string/jumbo p1, "token length is equals series"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    aget p1, p2, v0

    return p1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/perfsight/apm/c/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    iget p1, p0, Lcom/perfsight/apm/c/a;->a:I

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/perfsight/apm/c/a$a;->a()[I

    move-result-object v2

    if-nez v2, :cond_8

    aget p1, p2, v0

    return p1

    :cond_8
    :goto_5
    if-ge v0, p3, :cond_b

    aget v3, v2, v0

    if-ge p1, v3, :cond_9

    return v1

    :cond_9
    if-lt v4, p3, :cond_a

    goto :goto_6

    :cond_a
    aget v1, p2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    return v1

    :cond_c
    aget p1, p2, v0

    return p1
.end method
