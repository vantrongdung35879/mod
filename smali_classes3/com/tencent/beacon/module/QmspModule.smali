.class public Lcom/tencent/beacon/module/QmspModule;
.super Ljava/lang/Object;
.source "QmspModule.java"

# interfaces
.implements Lcom/tencent/beacon/module/BeaconModule;
.implements Lcom/tencent/beacon/a/a/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/beacon/module/QmspModule$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/module/QmspModule$1;-><init>(Lcom/tencent/beacon/module/QmspModule;)V

    iput-object v0, p0, Lcom/tencent/beacon/module/QmspModule;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tencent/beacon/module/QmspModule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/beacon/module/QmspModule;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/module/QmspModule;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 8
    :try_start_1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "[qmsp] init qmsp qimei qimei16: %s, qimei36: %s"

    invoke-static {v4, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/beacon/a/c/c;->k()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v8

    const-string v4, "[qmsp] startQ: userId: %s, qimei q16:%s, q36:%s, appKey:%s, sdkVersion: %s"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/c;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    aput-object p1, v5, v3

    aput-object p2, v5, v0

    const/4 v7, 0x3

    aput-object v8, v5, v7

    const/4 v7, 0x4

    aput-object v1, v5, v7

    .line 15
    invoke-static {v4, v5}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v5, p0, Lcom/tencent/beacon/module/QmspModule;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/beacon/base/util/c;->b()Z

    move-result v10

    move-object v7, p2

    move-object v9, p1

    invoke-static/range {v5 .. v10}, Lcom/tencent/qmsp/sdk/u/U;->startQ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v4

    iget-object v10, p0, Lcom/tencent/beacon/module/QmspModule;->c:Ljava/lang/Runnable;

    const/16 v5, 0x72

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x493e0

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/beacon/a/b/a;->a(IJJLjava/lang/Runnable;)V

    .line 18
    iput-boolean v3, p0, Lcom/tencent/beacon/module/QmspModule;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    .line 19
    :goto_0
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    const-string v1, "[qmsp] qmspSDk start error! result:%d, exception msg: %s"

    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Lcom/tencent/qmsp/sdk/u/U;->stopQ()V

    .line 22
    iput-boolean v2, p0, Lcom/tencent/beacon/module/QmspModule;->b:Z

    .line 23
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "[qmsp] qmspSDK start result:%d"

    invoke-static {p1, p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method static synthetic a(Lcom/tencent/beacon/module/QmspModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/beacon/module/QmspModule;->b:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "qmsp disable by user"

    invoke-static {v0, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/tencent/beacon/module/QmspModule;->a:Landroid/content/Context;

    .line 6
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 1

    .line 24
    iget p1, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/c/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/beacon/module/QmspModule;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
