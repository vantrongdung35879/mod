.class public abstract Lcom/tencent/qimei/aw/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "\",\""

    new-instance v1, Lcom/tencent/qimei/p/a;

    invoke-direct {v1}, Lcom/tencent/qimei/p/a;-><init>()V

    .line 4
    const-string v2, "k1"

    const-class v3, Lcom/tencent/qimei/q/d;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-string v2, "k2"

    const-class v3, Lcom/tencent/qimei/q/c;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-string v2, "k3"

    const-class v3, Lcom/tencent/qimei/o/a;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    const-string v2, "k4"

    const-class v3, Lcom/tencent/qimei/y/e;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    const-string v2, "k5"

    const-class v3, Lcom/tencent/qimei/y/c;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-string v2, "k6"

    const-class v3, Lcom/tencent/qimei/y/b;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string v2, "k7"

    const-class v3, Lcom/tencent/qimei/u/e;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 11
    const-string v2, "k8"

    const-class v3, Lcom/tencent/qimei/ai/c;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-string v2, "k9"

    const-class v3, Lcom/tencent/qimei/y/a;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/p/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, v1, Lcom/tencent/qimei/p/a;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 22
    :cond_0
    :goto_0
    iget-object v5, v1, Lcom/tencent/qimei/p/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 23
    iget-object v5, v1, Lcom/tencent/qimei/p/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 24
    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v7, v5, v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    const/4 v9, 0x3

    aget-object v5, v5, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"]"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 25
    iget-object v5, v1, Lcom/tencent/qimei/p/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const-string v0, "[]"

    :goto_1
    return-object v0
.end method
