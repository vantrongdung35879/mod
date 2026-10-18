.class public Lcom/tencent/mna/c0;
.super Ljava/lang/Object;
.source "DgnCloudProxy.java"


# static fields
.field private static a:Lcom/tencent/mna/b0;

.field private static b:Lcom/tencent/mna/f3;

.field private static c:J

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/mna/b0;

    invoke-direct {v0}, Lcom/tencent/mna/b0;-><init>()V

    sput-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    .line 2
    new-instance v0, Lcom/tencent/mna/f3;

    invoke-direct {v0}, Lcom/tencent/mna/f3;-><init>()V

    sput-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    const-wide/16 v0, 0x0

    .line 4
    sput-wide v0, Lcom/tencent/mna/c0;->c:J

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/tencent/mna/c0;->d:I

    .line 6
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/c0;->e:Ljava/lang/String;

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/b0;->U:Ljava/lang/String;

    return-object v0
.end method

.method public static B()D
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-wide v0, v0, Lcom/tencent/mna/b0;->T:D

    return-wide v0
.end method

.method public static C()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->S:I

    return v0
.end method

.method public static D()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->R:I

    return v0
.end method

.method public static E()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->q:I

    return v0
.end method

.method public static F()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->C:I

    return v0
.end method

.method public static G()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->D:I

    return v0
.end method

.method public static H()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->d:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static I()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static J()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->b:I

    return v0
.end method

.method public static K()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/s;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static L()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->c:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static M()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->k:I

    return v0
.end method

.method public static N()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->l:I

    return v0
.end method

.method public static O()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->L:I

    return v0
.end method

.method public static P()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->V:I

    return v0
.end method

.method public static Q()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->N:I

    return v0
.end method

.method public static R()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->O:I

    return v0
.end method

.method public static S()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->M:I

    return v0
.end method

.method public static T()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-boolean v0, v0, Lcom/tencent/mna/b0;->X:Z

    return v0
.end method

.method public static U()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static V()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a()I
    .locals 3

    .line 54
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "arp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;)I
    .locals 11

    const-string v0, "DGN_CLOUD rsp parsed res: "

    const-string v1, "DGN_CLOUD rsp (len:"

    .line 24
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    .line 27
    sget v3, Lcom/tencent/mna/c0;->d:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/tencent/mna/t;->a()Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/tencent/mna/c0;->e:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 31
    :goto_1
    sget-object v5, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    if-eqz v5, :cond_2

    iget-boolean v5, v5, Lcom/tencent/mna/b0;->s:Z

    if-nez v5, :cond_2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/tencent/mna/c0;->c:J

    sub-long/2addr v5, v7

    sget-object v7, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v7, v7, Lcom/tencent/mna/b0;->t:I

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    cmp-long v9, v5, v7

    if-gez v9, :cond_2

    if-nez v3, :cond_2

    return v4

    .line 37
    :cond_2
    sget-object v3, Lcom/tencent/mna/t$b;->Def_Dgn:Lcom/tencent/mna/t$b;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tencent/mna/t;->a(Lcom/tencent/mna/t$b;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p0

    if-nez p0, :cond_3

    const/16 p0, 0x3ea

    return p0

    .line 42
    :cond_3
    iget v3, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DgnCloudConfig, ret errno:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    if-nez v3, :cond_4

    .line 46
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {v3}, Lcom/tencent/mna/b0;->b(Lorg/json/JSONObject;)Lcom/tencent/mna/b0;

    move-result-object p0

    sput-object p0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    invoke-virtual {v0}, Lcom/tencent/mna/b0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 51
    sput v2, Lcom/tencent/mna/c0;->d:I

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mna/c0;->c:J

    .line 53
    invoke-static {}, Lcom/tencent/mna/t;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/mna/c0;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const/16 v4, 0x3eb

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    return v4
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/tencent/mna/c0;->a(Lorg/json/JSONObject;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/tencent/mna/c0;->b(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "appid"

    sget-object v2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string/jumbo v1, "zoneid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string p0, "openid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo p0, "version"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p0, "gameIP"

    const-string p1, "10000"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p0, "rproxy_flag"

    invoke-virtual {v0, p0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p0, "model"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p0, "devid"

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string p0, "devkey"

    invoke-static {p4}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string p0, "mac"

    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string p0, "bundleid"

    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string p0, "nettype"

    invoke-virtual {v0, p0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p9, :cond_0

    .line 16
    invoke-virtual {p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "UNKNOWN"

    .line 17
    invoke-virtual {p9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 18
    const-string p0, "secret_key"

    invoke-virtual {v0, p0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->Q:I

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/mna/e3;->b(ILjava/lang/String;)Lcom/tencent/mna/e3$a;

    move-result-object p0

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/e3$a;->b:Lcom/tencent/mna/f3;

    if-nez v0, :cond_0

    .line 3
    iget p0, p0, Lcom/tencent/mna/e3$a;->a:I

    return p0

    .line 5
    :cond_0
    sput-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    const/4 p0, 0x0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    invoke-virtual {v0}, Lcom/tencent/mna/b0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->w:I

    return v0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->f:I

    return v0
.end method

.method public static e()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->e:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->B:I

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->d:I

    return v0
.end method

.method public static i()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->b:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static j()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->x:I

    return v0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->g:I

    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/s;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static m()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->i:I

    return v0
.end method

.method public static n()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->W:I

    return v0
.end method

.method public static o()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->f:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static p()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->y:I

    return v0
.end method

.method public static q()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/s;->e:I

    return v0
.end method

.method public static r()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->H:I

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget-object v0, v0, Lcom/tencent/mna/b0;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static t()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->G:I

    return v0
.end method

.method public static u()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->A:I

    return v0
.end method

.method public static v()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->J:I

    return v0
.end method

.method public static w()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->g:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static x()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->F:I

    return v0
.end method

.method public static y()[Lcom/tencent/mna/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->b:Lcom/tencent/mna/f3;

    iget-object v0, v0, Lcom/tencent/mna/f3;->a:[Lcom/tencent/mna/p1;

    return-object v0
.end method

.method public static z()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/c0;->a:Lcom/tencent/mna/b0;

    iget v0, v0, Lcom/tencent/mna/b0;->P:I

    return v0
.end method
