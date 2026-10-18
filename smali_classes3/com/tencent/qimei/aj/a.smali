.class public final Lcom/tencent/qimei/aj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/report/beat/BeatType;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/aj/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/aj/a;->b:Lcom/tencent/qimei/report/beat/BeatType;

    iput-object p3, p0, Lcom/tencent/qimei/aj/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/aj/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/aj/a;->b:Lcom/tencent/qimei/report/beat/BeatType;

    iget-object v2, p0, Lcom/tencent/qimei/aj/a;->c:Ljava/lang/String;

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-static {}, Lcom/tencent/qimei/uin/U;->e()Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_1

    .line 9
    invoke-static {v0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/tencent/qimei/ag/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 13
    :goto_0
    :try_start_0
    const-string v4, "1"

    invoke-virtual {v1}, Lcom/tencent/qimei/report/beat/BeatType;->b()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string v1, "2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "3"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v0, "4"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v0, "5"

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    const-string v2, "av"

    invoke-static {}, Lcom/tencent/qimei/v/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "ch"

    invoke-static {}, Lcom/tencent/qimei/v/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 23
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v0

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/tencent/qimei/aj/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qimei/foundation/net/protocol/CMD;->BEAT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v1}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v1

    invoke-static {v0, v5, v2, v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/tencent/qimei/y/d;

    invoke-direct {v1, v0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v1

    const-string v2, "c"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_5

    .line 35
    iget-object v1, p0, Lcom/tencent/qimei/aj/a;->a:Ljava/lang/String;

    .line 36
    new-instance v8, Ljava/util/PriorityQueue;

    invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V

    .line 37
    new-instance v9, Ljava/util/Random;

    const-class v10, Lcom/tencent/qimei/ad/e;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Ljava/util/Random;-><init>(J)V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_3

    const/4 v11, 0x5

    .line 40
    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 41
    :cond_3
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 42
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 43
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 44
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 46
    :try_start_3
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 50
    :goto_5
    sget-object v9, Lcom/tencent/qimei/foundation/net/protocol/CMD;->BEAT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v9}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v10

    invoke-virtual {v9}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v9

    invoke-static {v1, v5, v10, v9}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 51
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v1, v10, v7

    aput-object v9, v10, v6

    const-string v11, "%s Beat data has been retry over,response = %s"

    invoke-static {v2, v11, v10}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v10, Lcom/tencent/qimei/y/d;

    invoke-direct {v10, v9}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 53
    :cond_5
    sget-object v1, Lcom/tencent/qimei/aj/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/tencent/qimei/aj/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/qimei/aj/a;->b:Lcom/tencent/qimei/report/beat/BeatType;

    .line 54
    invoke-virtual {v5}, Lcom/tencent/qimei/report/beat/BeatType;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v5, v4, v6

    aput-object v0, v4, v3

    .line 55
    const-string v0, "%s Beat data has been reported over, type:%s response = %s"

    invoke-static {v2, v0, v4}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
