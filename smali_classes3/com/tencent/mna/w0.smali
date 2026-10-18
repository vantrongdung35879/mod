.class public Lcom/tencent/mna/w0;
.super Ljava/lang/Object;
.source "HuaweiRouterMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/w0$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3

    const-string v0, "reportHuaweiRouterLogs STEP3 req:"

    const-string v1, "?version=1&sender=1&action="

    if-nez p1, :cond_0

    const p0, -0xbdb2d

    return p0

    :cond_0
    const/4 v2, -0x5

    if-ne p1, v2, :cond_1

    const p0, -0xbdb31

    return p0

    .line 42
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const p0, -0xbdb2b

    return p0

    .line 45
    :cond_2
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/tencent/mna/n1;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const p0, -0xbdb2c

    return p0

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/dfx/externalEvents"

    invoke-static {p0, v1}, Lcom/tencent/mna/w0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3e8

    .line 56
    invoke-static {p0, p1}, Lcom/tencent/mna/v0;->a(Ljava/lang/String;I)[B

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p0, -0xbdb2e

    return p0

    .line 61
    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", rsp:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 66
    const-string p0, "errcode"

    const p2, -0xbdb2f

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "reportHuaweiRouterLogs exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    const p0, -0xbdb30

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/mna/w0$a;
    .locals 8

    const-string v0, "requestHuaweiRouterInfo STEP2 rsp:"

    const-string v1, "requestHuaweiRouterInfo STEP1 rsp:"

    .line 1
    new-instance v2, Lcom/tencent/mna/w0$a;

    invoke-direct {v2}, Lcom/tencent/mna/w0$a;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, -0x2

    .line 4
    iput p0, v2, Lcom/tencent/mna/w0$a;->a:I

    return-object v2

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/tencent/mna/n1;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, -0x3

    .line 9
    iput p0, v2, Lcom/tencent/mna/w0$a;->a:I

    return-object v2

    :cond_1
    const/4 v3, 0x0

    .line 12
    iput v3, v2, Lcom/tencent/mna/w0$a;->a:I

    .line 14
    const-string v3, "/api/system/vendorInfo"

    invoke-static {p0, v3}, Lcom/tencent/mna/w0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Lcom/tencent/mna/v0;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 15
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    const/4 v3, 0x1

    .line 19
    iput v3, v2, Lcom/tencent/mna/w0$a;->a:I

    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v6, "vendor"

    iget-object v7, v2, Lcom/tencent/mna/w0$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mna/w0$a;->c:Ljava/lang/String;

    .line 22
    const-string v6, "id"

    iget-object v7, v2, Lcom/tencent/mna/w0$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/w0$a;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 25
    const-string v1, "/api/ntwk/higameStatus"

    invoke-static {p0, v1}, Lcom/tencent/mna/w0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/tencent/mna/v0;->a(Ljava/lang/String;I)[B

    move-result-object p0

    .line 26
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    .line 30
    :cond_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v3, "active"

    iget-object v4, v2, Lcom/tencent/mna/w0$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/w0$a;->d:Ljava/lang/String;

    .line 32
    const-string v3, "errReason"

    iget-object v4, v2, Lcom/tencent/mna/w0$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/mna/w0$a;->e:Ljava/lang/String;

    .line 33
    const-string p0, "1"

    iget-object v3, v2, Lcom/tencent/mna/w0$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    .line 34
    iput p0, v2, Lcom/tencent/mna/w0$a;->a:I

    .line 36
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, -0x4

    .line 38
    iput v0, v2, Lcom/tencent/mna/w0$a;->a:I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestHuaweiRouterInfo exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 41
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "requestHuaweiRouterInfo info:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
