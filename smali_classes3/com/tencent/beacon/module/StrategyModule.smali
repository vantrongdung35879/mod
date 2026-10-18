.class public Lcom/tencent/beacon/module/StrategyModule;
.super Ljava/lang/Object;
.source "StrategyModule.java"

# interfaces
.implements Lcom/tencent/beacon/module/BeaconModule;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/tencent/beacon/e/a;

.field private c:Lcom/tencent/beacon/e/i;

.field private d:Lcom/tencent/beacon/e/b;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    .line 3
    invoke-static {}, Lcom/tencent/beacon/e/b;->a()Lcom/tencent/beacon/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->d:Lcom/tencent/beacon/e/b;

    .line 4
    invoke-static {}, Lcom/tencent/beacon/e/a;->a()Lcom/tencent/beacon/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/e/a;

    .line 5
    invoke-static {}, Lcom/tencent/beacon/e/h;->c()Lcom/tencent/beacon/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/e/a;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/e/h;->a(Lcom/tencent/beacon/e/d;)V

    .line 6
    new-instance v0, Lcom/tencent/beacon/e/i;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/e/i;-><init>(Lcom/tencent/beacon/module/StrategyModule;)V

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/e/i;

    return-void
.end method

.method static synthetic a(Lcom/tencent/beacon/module/StrategyModule;)Lcom/tencent/beacon/e/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/e/i;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/beacon/module/StrategyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/module/StrategyModule;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/e/i;

    invoke-virtual {v0}, Lcom/tencent/beacon/e/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/e/i;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/tencent/beacon/e/a;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/e/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[module] strategy module > TRUE"

    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/e/i;

    invoke-virtual {v0}, Lcom/tencent/beacon/e/i;->b()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/beacon/module/StrategyModule;->d()V

    .line 5
    new-instance v0, Lcom/tencent/beacon/module/StrategyModule$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/module/StrategyModule$1;-><init>(Lcom/tencent/beacon/module/StrategyModule;)V

    invoke-static {p1, v0}, Lcom/tencent/beacon/base/net/b/e;->a(Landroid/content/Context;Lcom/tencent/beacon/base/net/b/e$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/tencent/beacon/e/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->d:Lcom/tencent/beacon/e/b;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
