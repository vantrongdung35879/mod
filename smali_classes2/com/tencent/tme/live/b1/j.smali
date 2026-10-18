.class public Lcom/tencent/tme/live/b1/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/protocol/tme/commonschema/KV;

    iget-object v2, v1, Lcom/tencent/protocol/tme/commonschema/KV;->key:Ljava/lang/String;

    const-string v3, "ALL"

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v4

    .line 1
    iget v4, v4, Lcom/tencent/tme/live/framework/common/b;->p:I

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v1, Lcom/tencent/protocol/tme/commonschema/KV;->value:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v2, v1, Lcom/tencent/protocol/tme/commonschema/KV;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/tencent/protocol/tme/commonschema/KV;->value:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object v0
.end method
