.class public Lcom/tencent/qmsp/sdk/a/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(I)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getQ16()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p0, 0xa

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    :try_start_1
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p0, 0xb

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ""

    :try_start_2
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
