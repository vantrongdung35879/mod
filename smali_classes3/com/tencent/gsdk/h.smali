.class final Lcom/tencent/gsdk/h;
.super Ljava/lang/Object;
.source "ApplicationProvider.java"


# static fields
.field private static a:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()Landroid/app/Application;
    .locals 1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/h;->b(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/gsdk/q0;->c()Lcom/tencent/gsdk/q0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/gsdk/q0;->d()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gsdk/h;->b(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    .line 6
    :cond_0
    sget-object p0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Lcom/tencent/gsdk/h;->a()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    .line 10
    :cond_1
    sget-object p0, Lcom/tencent/gsdk/h;->a:Landroid/app/Application;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Landroid/app/Application;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Landroid/app/Application;

    return-object p0

    .line 4
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 5
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 8
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 9
    check-cast p0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Get Application failed"

    invoke-static {p0, v2, v1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
