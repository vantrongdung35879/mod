.class Lcom/tencent/mna/m2$b;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/m2;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "4G_QOS end qos result:"

    .line 1
    invoke-static {}, Lcom/tencent/mna/m2;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {v1}, Lcom/tencent/mna/m2;->b(Z)Z

    .line 6
    const-string v1, "4G_QOS end qos..."

    invoke-static {v1}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tencent/mna/m2;->g()Lcom/tencent/mna/u2;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mna/m2;->g()Lcom/tencent/mna/u2;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/u2;->a:I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    const-string v4, "appid"

    invoke-static {}, Lcom/tencent/mna/m2;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v4, "sdkver"

    invoke-static {}, Lcom/tencent/mna/m2;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string v4, "sessionId"

    invoke-static {}, Lcom/tencent/mna/m2;->g()Lcom/tencent/mna/u2;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/mna/u2;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v4, "openid"

    invoke-static {}, Lcom/tencent/mna/m2;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-static {}, Lcom/tencent/mna/m2;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/mna/n2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catch_0
    :try_start_2
    const-string v0, "4G_QOS doUnQos json exception"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-static {v2}, Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/u2;)Lcom/tencent/mna/u2;

    goto :goto_2

    .line 24
    :cond_2
    :goto_1
    const-string v0, "[N]4G_QOS end qos failed: already ended or not opened before"

    invoke-static {v0}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Z)Z

    return-void

    .line 44
    :catchall_0
    :try_start_3
    invoke-static {v2}, Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/u2;)Lcom/tencent/mna/u2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :goto_2
    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Z)Z

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcom/tencent/mna/m2;->b(Z)Z

    .line 47
    throw v0
.end method
