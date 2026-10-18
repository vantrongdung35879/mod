.class public Lcom/tencent/qmsp/sdk/a/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "Qp.RPT"


# direct methods
.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(ILorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/qmsp/sdk/a/f;->b(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 6

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/a/d;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/a/f;->a(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/16 v4, 0xf

    :try_start_0
    invoke-static {v4}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "log"

    :try_start_1
    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "arr"

    :try_start_2
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/tencent/qmsp/sdk/a/f;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/b;->e()Lcom/tencent/qmsp/sdk/app/b;

    move-result-object p0

    new-instance v1, Lcom/tencent/qmsp/sdk/a/f$a;

    invoke-direct {v1, p1, v0}, Lcom/tencent/qmsp/sdk/a/f$a;-><init>(ILorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/sdk/app/b;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected static a(Lorg/json/JSONObject;)Z
    .locals 2

    const/16 v0, 0xc

    :try_start_0
    invoke-static {v0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/c;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(ILorg/json/JSONObject;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/qmsp/sdk/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rpt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/b/g;->b()Lcom/tencent/qmsp/sdk/b/g;

    move-result-object v3

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAppID()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/tencent/qmsp/sdk/a/f$b;

    invoke-direct {v8}, Lcom/tencent/qmsp/sdk/a/f$b;-><init>()V

    const/4 v4, 0x3

    move v6, p0

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/qmsp/sdk/b/g;->a(ILjava/lang/String;ILorg/json/JSONObject;Lcom/tencent/qmsp/sdk/b/e;)V

    return-void
.end method
