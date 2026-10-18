.class public Lcom/tencent/mna/a2;
.super Ljava/lang/Object;
.source "MnaScheduler.java"


# static fields
.field private static a:Lcom/tencent/mna/p3; = null

.field private static b:Lcom/tencent/mna/p3; = null

.field private static c:Lcom/tencent/mna/p3; = null

.field private static volatile d:Lcom/tencent/mna/p3; = null

.field private static volatile e:Lcom/tencent/mna/p3; = null

.field private static volatile f:Lcom/tencent/mna/p3; = null

.field private static volatile g:Lcom/tencent/mna/p3; = null

.field private static h:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/tencent/mna/a2;->a:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mna/p3;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 5

    const-class v0, Lcom/tencent/mna/a2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/a2;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/mna/a2;->a:Lcom/tencent/mna/p3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-bg"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->a:Lcom/tencent/mna/p3;

    .line 8
    :cond_1
    sget-object v1, Lcom/tencent/mna/a2;->b:Lcom/tencent/mna/p3;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-kartin"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->b:Lcom/tencent/mna/p3;

    .line 11
    :cond_2
    sget-object v1, Lcom/tencent/mna/a2;->d:Lcom/tencent/mna/p3;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-ping-upload"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->d:Lcom/tencent/mna/p3;

    .line 14
    :cond_3
    sget-object v1, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-touch-upload"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    .line 17
    :cond_4
    sget-object v1, Lcom/tencent/mna/a2;->f:Lcom/tencent/mna/p3;

    if-nez v1, :cond_5

    .line 18
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-transport"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->f:Lcom/tencent/mna/p3;

    .line 20
    :cond_5
    sget-object v1, Lcom/tencent/mna/a2;->g:Lcom/tencent/mna/p3;

    if-nez v1, :cond_6

    .line 21
    new-instance v1, Lcom/tencent/mna/p3;

    const-string v3, "mna-superAssist"

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/a2;->g:Lcom/tencent/mna/p3;

    .line 23
    :cond_6
    sget-object v1, Lcom/tencent/mna/a2;->c:Lcom/tencent/mna/p3;

    if-nez v1, :cond_8

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 27
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnityMain"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    new-instance v3, Lcom/tencent/mna/p3;

    invoke-direct {v3, v1}, Lcom/tencent/mna/p3;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/tencent/mna/a2;->c:Lcom/tencent/mna/p3;

    .line 29
    const-string v1, "EngineHandler UnityMainThread"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_7
    new-instance v1, Lcom/tencent/mna/p3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/tencent/mna/p3;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/mna/a2;->c:Lcom/tencent/mna/p3;

    .line 32
    const-string v1, "EngineHandler AndroidMainThread"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 36
    :cond_8
    :goto_0
    sput-boolean v2, Lcom/tencent/mna/a2;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/tencent/mna/a2;->c:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v0, Lcom/tencent/mna/a2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/a2;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/a2;->b:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/a2;->d:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/a2;->d:Lcom/tencent/mna/p3;

    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/a2;->g:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/a2;->g:Lcom/tencent/mna/p3;

    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/a2;->e:Lcom/tencent/mna/p3;

    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/a2;->f:Lcom/tencent/mna/p3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/a2;->f:Lcom/tencent/mna/p3;

    invoke-virtual {v0, p0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
