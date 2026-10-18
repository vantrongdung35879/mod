.class Lcom/tencent/mna/e3;
.super Ljava/lang/Object;
.source "RulesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/e3$a;
    }
.end annotation


# direct methods
.method private static a(I)Lcom/tencent/mna/f3;
    .locals 3

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rules_ver"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    const-string v0, "diagnose_rules"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Lcom/tencent/mna/f3;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/f3;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rules_ver"

    invoke-static {v0, v1, p0}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    const-string v0, "diagnose_rules"

    invoke-static {p0, v0, p1}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(ILjava/lang/String;)Lcom/tencent/mna/e3$a;
    .locals 5

    const-string v0, "DgnRulesConfig, ret errno:"

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/e3;->a(I)Lcom/tencent/mna/f3;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    :try_start_0
    sget-object v3, Lcom/tencent/mna/t$b;->Def_Dgn:Lcom/tencent/mna/t$b;

    invoke-static {v3, p1}, Lcom/tencent/mna/t;->a(Lcom/tencent/mna/t$b;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    new-instance p0, Lcom/tencent/mna/e3$a;

    const/16 p1, 0x3e9

    invoke-direct {p0, p1, v2}, Lcom/tencent/mna/e3$a;-><init>(ILcom/tencent/mna/f3;)V

    return-object p0

    .line 9
    :cond_0
    iget v3, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    if-nez v3, :cond_2

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/tencent/mna/f3;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/f3;

    move-result-object v1

    .line 14
    iget-object p1, p1, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/mna/e3;->a(ILjava/lang/String;)Z

    goto :goto_0

    .line 17
    :cond_1
    const-string p0, "DgnRulesConfig read config from cache"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    const/16 v3, 0x3ea

    move-object v1, v2

    .line 23
    :cond_2
    :goto_0
    new-instance p0, Lcom/tencent/mna/e3$a;

    invoke-direct {p0, v3, v1}, Lcom/tencent/mna/e3$a;-><init>(ILcom/tencent/mna/f3;)V

    return-object p0
.end method
