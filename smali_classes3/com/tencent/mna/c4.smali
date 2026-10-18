.class public Lcom/tencent/mna/c4;
.super Ljava/lang/Object;
.source "XmlCloudProxy.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .line 10
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xml"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "appid"

    sget-object v2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string/jumbo v1, "zoneid"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v1, "openid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo p0, "xmlver"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p0, "gameIP"

    const-string p1, "10000"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/c4;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-eqz p0, :cond_5

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/mna/t$b;->Def_Xml:Lcom/tencent/mna/t$b;

    invoke-static {v0, p1}, Lcom/tencent/mna/t;->a(Lcom/tencent/mna/t$b;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 p0, 0x3ea

    return p0

    .line 12
    :cond_1
    iget v0, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XmlCloudConfig, ret errno:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 14
    iget v2, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    if-nez v2, :cond_4

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string p1, "errno"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 19
    invoke-static {v0}, Lcom/tencent/mna/b4;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/b4;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p1, Lcom/tencent/mna/b4;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/mna/c4;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/16 v1, 0x3ec

    goto :goto_0

    :cond_3
    move v1, p1

    goto :goto_0

    :catch_0
    const/16 v1, 0x3eb

    goto :goto_0

    :cond_4
    move v1, v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 22
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xmlver"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xmlver"

    invoke-static {v0, v1, p0}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "xml"

    invoke-static {p0, v0, p1}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
