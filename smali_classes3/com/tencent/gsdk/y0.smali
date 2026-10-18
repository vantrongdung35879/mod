.class public Lcom/tencent/gsdk/y0;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field private static a:Landroid/app/ActivityManager;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->b(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static c()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->c(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->m()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lcom/tencent/gsdk/y0;->a:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    .line 3
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/tencent/gsdk/y0;->a:Landroid/app/ActivityManager;

    .line 6
    :cond_0
    sget p0, Lcom/tencent/gsdk/y0;->b:I

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/tencent/gsdk/y0;->b:I

    .line 10
    :cond_1
    sget-object p0, Lcom/tencent/gsdk/y0;->a:Landroid/app/ActivityManager;

    if-eqz p0, :cond_4

    sget v3, Lcom/tencent/gsdk/y0;->b:I

    if-nez v3, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    filled-new-array {v3}, [I

    move-result-object v3

    .line 15
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 17
    array-length v3, p0

    if-lez v3, :cond_3

    .line 18
    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    int-to-long v0, v2

    :cond_4
    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getProcessMemery failed"

    invoke-static {p0, v3, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->j(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->a()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->k(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->n()F

    move-result v0

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/z0;->i(Landroid/content/Context;)Lcom/tencent/gsdk/z0$f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/gsdk/z0$f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->p()F

    move-result v0

    return v0
.end method

.method public static j()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->o()J

    move-result-wide v0

    return-wide v0
.end method
