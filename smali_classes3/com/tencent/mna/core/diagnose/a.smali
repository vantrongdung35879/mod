.class public Lcom/tencent/mna/core/diagnose/a;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/core/diagnose/a$g;,
        Lcom/tencent/mna/core/diagnose/a$f;,
        Lcom/tencent/mna/core/diagnose/a$h;,
        Lcom/tencent/mna/core/diagnose/a$j;,
        Lcom/tencent/mna/core/diagnose/a$i;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 17

    add-int/lit8 v0, p0, 0x1

    .line 22
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/c0;->T()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 25
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v14

    .line 26
    sget v3, Lcom/tencent/mna/t0;->a:I

    sget-object v4, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    sget-object v15, Lcom/tencent/mna/base/utils/a;->f:Ljava/lang/String;

    sget-object v12, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    const-string v5, "2000"

    move-object v6, v15

    move-object v7, v1

    move-object v8, v2

    move-object v9, v13

    move-object/from16 v10, p1

    move v11, v14

    invoke-static/range {v3 .. v12}, Lcom/tencent/mna/c0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 30
    sget v3, Lcom/tencent/mna/t0;->a:I

    sget-object v4, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    sget-object v16, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    const-string v5, "3000"

    move-object v1, v12

    move-object/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lcom/tencent/mna/c0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " dgn reqJson = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_0

    .line 37
    invoke-static {v1, v2}, Lcom/tencent/mna/c0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v3

    move v0, v4

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static a()V
    .locals 1

    .line 9
    new-instance v0, Lcom/tencent/mna/core/diagnose/a$a;

    invoke-direct {v0}, Lcom/tencent/mna/core/diagnose/a$a;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mna/t0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 13
    const-string v1, "TESTVALUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static {v0, p0}, Lcom/tencent/mna/core/diagnose/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/tencent/mna/core/diagnose/a$b;

    invoke-direct {v1, v0, p0}, Lcom/tencent/mna/core/diagnose/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), queryKartin4test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/tencent/mna/core/diagnose/a$c;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/core/diagnose/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;ILjava/lang/String;)Z
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;)Z
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;I)Z
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/core/diagnose/b;[Lcom/tencent/mna/c1;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;[Lcom/tencent/mna/c1;)Z

    move-result p0

    return p0
.end method

.method public static b()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/tencent/mna/c0;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "DiagnoseManager TMSDKWifiHelper init call"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mna/o3;->a(Landroid/content/Context;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/tencent/mna/c0;->O()I

    move-result v0

    int-to-double v1, v0

    .line 7
    invoke-static {}, Lcom/tencent/mna/c0;->S()I

    move-result v0

    int-to-double v3, v0

    .line 8
    invoke-static {}, Lcom/tencent/mna/c0;->Q()I

    move-result v0

    int-to-double v5, v0

    .line 9
    invoke-static/range {v1 .. v6}, Lcom/tencent/mna/o3;->a(DDD)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;)V
    .locals 11

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mna/core/diagnose/b;->a0:J

    sub-long/2addr v0, v2

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiagnoseManager queryKartin("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), prepareQueryResult, elapse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/tencent/mna/c0;->y()[Lcom/tencent/mna/p1;

    move-result-object v4

    .line 187
    invoke-static {}, Lcom/tencent/mna/c0;->L()[Lcom/tencent/mna/p1;

    move-result-object v5

    .line 188
    invoke-static {}, Lcom/tencent/mna/c0;->e()[Lcom/tencent/mna/p1;

    move-result-object v6

    .line 189
    invoke-static {}, Lcom/tencent/mna/c0;->i()[Lcom/tencent/mna/p1;

    move-result-object v7

    .line 190
    invoke-static {}, Lcom/tencent/mna/c0;->o()[Lcom/tencent/mna/p1;

    move-result-object v8

    .line 191
    invoke-static {}, Lcom/tencent/mna/c0;->H()[Lcom/tencent/mna/p1;

    move-result-object v9

    .line 192
    invoke-static {}, Lcom/tencent/mna/c0;->w()[Lcom/tencent/mna/p1;

    move-result-object v10

    .line 194
    invoke-static {}, Lcom/tencent/mna/c0;->U()Z

    move-result v2

    invoke-static {}, Lcom/tencent/mna/c0;->R()I

    move-result v3

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/mna/core/diagnose/b;->a(ZI[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;[Lcom/tencent/mna/p1;)Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 197
    invoke-static {p0, v0}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    return-void
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V
    .locals 2

    if-nez p1, :cond_0

    .line 10
    const-string p0, "DiagnoseManager queryKartin result is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), notifyQueryResult, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 16
    iget v0, p1, Lcom/tencent/mna/KartinRet;->flag:I

    if-nez v0, :cond_1

    .line 17
    const-string v0, "GSDKQueryKartin succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    const-string v0, "GSDKQueryKartin fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-static {}, Lcom/tencent/mna/c0;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/tencent/mna/base/utils/WifiUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/tencent/mna/core/diagnose/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-static {}, Lcom/tencent/mna/b2;->g()Lcom/tencent/mna/MNAObserver;

    move-result-object p0

    .line 31
    new-instance v0, Lcom/tencent/mna/core/diagnose/a$d;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/core/diagnose/a$d;-><init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/KartinRet;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Lcom/tencent/mna/b2;->e()Lcom/tencent/mna/GHObserver;

    move-result-object p0

    .line 75
    new-instance v0, Lcom/tencent/mna/core/diagnose/a$e;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/core/diagnose/a$e;-><init>(Lcom/tencent/mna/GHObserver;Lcom/tencent/mna/KartinRet;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;I)Z
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), checkNetworkType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), checkNetworkType no net"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/mna/core/diagnose/b;->e()Lcom/tencent/mna/KartinRet;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), checkNetworkType 2g"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/tencent/mna/core/diagnose/b;->b(I)Lcom/tencent/mna/KartinRet;

    move-result-object p1

    .line 90
    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    return v0
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;ILjava/lang/String;)Z
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), checkNetworkChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 173
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-nez p2, :cond_0

    move-object p2, v3

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    if-ne v0, p1, :cond_2

    .line 177
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), checkNetworkChange network changeless"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mna/core/diagnose/b;->d()Lcom/tencent/mna/KartinRet;

    move-result-object p1

    .line 182
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;)Z
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), prepareForDiagnose"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Lcom/tencent/mna/c1;->c()I

    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/tencent/mna/core/diagnose/b;->c(I)V

    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), prepareForDiagnose errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/tencent/mna/core/diagnose/b;->a(Z)Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 118
    invoke-static {p0, v0}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;I)Z
    .locals 18

    move/from16 v1, p2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DiagnoseManager queryKartin("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), diagnose"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/tencent/mna/core/diagnose/a$i;

    invoke-direct {v0, v1}, Lcom/tencent/mna/core/diagnose/a$i;-><init>(I)V

    .line 123
    new-instance v3, Lcom/tencent/mna/core/diagnose/a$j;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tencent/mna/core/diagnose/a$j;-><init>(Lcom/tencent/mna/core/diagnose/a$a;)V

    .line 124
    new-instance v5, Lcom/tencent/mna/core/diagnose/a$h;

    invoke-direct {v5, v4}, Lcom/tencent/mna/core/diagnose/a$h;-><init>(Lcom/tencent/mna/core/diagnose/a$a;)V

    .line 125
    new-instance v4, Lcom/tencent/mna/core/diagnose/a$f;

    invoke-direct {v4}, Lcom/tencent/mna/core/diagnose/a$f;-><init>()V

    .line 126
    new-instance v6, Lcom/tencent/mna/core/diagnose/a$g;

    move-object/from16 v7, p1

    invoke-direct {v6, v7, v1}, Lcom/tencent/mna/core/diagnose/a$g;-><init>(Lcom/tencent/mna/c1;I)V

    .line 128
    invoke-virtual {v0}, Lcom/tencent/mna/core/diagnose/a$i;->b()V

    const/4 v7, 0x4

    if-ne v1, v7, :cond_0

    const/4 v7, 0x3

    .line 130
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 131
    invoke-interface {v7, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 132
    invoke-interface {v7, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 133
    invoke-interface {v7, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    invoke-interface {v7, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    .line 136
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 137
    invoke-interface {v7, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 138
    invoke-interface {v7, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    :goto_0
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 143
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x14

    invoke-interface {v7, v9, v10, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1

    .line 146
    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 153
    :catch_0
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :catch_1
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mna/core/diagnose/a$i;->a()V

    .line 161
    invoke-virtual {v0}, Lcom/tencent/mna/core/diagnose/a$i;->c()Lcom/tencent/mna/c2$b;

    move-result-object v7

    iget v8, v3, Lcom/tencent/mna/core/diagnose/a$j;->a:I

    iget v9, v3, Lcom/tencent/mna/core/diagnose/a$j;->b:I

    .line 164
    invoke-virtual {v5}, Lcom/tencent/mna/core/diagnose/a$h;->a()Lcom/tencent/mna/base/utils/WifiUtil$b;

    move-result-object v5

    .line 165
    invoke-virtual {v4}, Lcom/tencent/mna/core/diagnose/a$f;->a()Lcom/tencent/mna/w1$c;

    move-result-object v10

    invoke-virtual {v4}, Lcom/tencent/mna/core/diagnose/a$f;->c()I

    move-result v11

    invoke-virtual {v4}, Lcom/tencent/mna/core/diagnose/a$f;->b()I

    move-result v12

    iget v13, v6, Lcom/tencent/mna/core/diagnose/a$g;->e:I

    iget v14, v6, Lcom/tencent/mna/core/diagnose/a$g;->f:I

    .line 168
    invoke-virtual {v6}, Lcom/tencent/mna/core/diagnose/a$g;->a()Ljava/lang/String;

    move-result-object v15

    iget v4, v6, Lcom/tencent/mna/core/diagnose/a$g;->c:I

    iget-object v6, v6, Lcom/tencent/mna/core/diagnose/a$g;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v7

    move v3, v8

    move/from16 v16, v4

    move v4, v9

    move-object/from16 v17, v6

    move-object v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    move-object v11, v15

    move/from16 v12, v16

    move-object/from16 v13, v17

    .line 169
    invoke-virtual/range {v0 .. v13}, Lcom/tencent/mna/core/diagnose/b;->a(ILcom/tencent/mna/c2$b;IILcom/tencent/mna/base/utils/WifiUtil$b;Lcom/tencent/mna/w1$c;IIIILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;Ljava/lang/String;)Z
    .locals 12

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), requestConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    invoke-static {v0, p1}, Lcom/tencent/mna/core/diagnose/a;->a(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), requestConfig errno:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/tencent/mna/core/diagnose/b;->a(Z)Lcom/tencent/mna/KartinRet;

    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_0
    invoke-static {}, Lcom/tencent/mna/c0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/c0;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/c0;->u()I

    move-result v4

    .line 100
    invoke-static {}, Lcom/tencent/mna/c0;->I()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/c0;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/c0;->m()I

    move-result v7

    .line 101
    invoke-static {}, Lcom/tencent/mna/c0;->z()I

    move-result v8

    invoke-static {}, Lcom/tencent/mna/c0;->P()I

    move-result v9

    invoke-static {}, Lcom/tencent/mna/c0;->n()I

    move-result v10

    .line 102
    invoke-static {}, Lcom/tencent/mna/c0;->a()I

    move-result v11

    move-object v1, p0

    .line 103
    invoke-virtual/range {v1 .. v11}, Lcom/tencent/mna/core/diagnose/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIII)V

    return v0
.end method

.method private static b(Lcom/tencent/mna/core/diagnose/b;[Lcom/tencent/mna/c1;)Z
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseManager queryKartin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), createDgnSpeedTester"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/tencent/mna/c0;->m()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mna/k2;->b(I)Lcom/tencent/mna/c1;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    if-nez v0, :cond_0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), dgnSpeedTester is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/tencent/mna/core/diagnose/b;->c()Lcom/tencent/mna/KartinRet;

    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method
