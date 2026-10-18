.class public Lcom/tencent/beacon/e/h;
.super Ljava/lang/Object;
.source "StrategyHolder.java"


# static fields
.field private static volatile a:Lcom/tencent/beacon/e/h;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Lcom/tencent/beacon/e/d;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sid"

    .line 2
    iput-object v0, p0, Lcom/tencent/beacon/e/h;->b:Ljava/lang/String;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/e/h;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/tencent/beacon/e/h;->f:Z

    const/16 v1, 0x1f91

    .line 5
    iput v1, p0, Lcom/tencent/beacon/e/h;->g:I

    .line 6
    iput-object v0, p0, Lcom/tencent/beacon/e/h;->h:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/beacon/e/h;->i:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/e/h;->c:Landroid/content/Context;

    .line 9
    new-instance v0, Lcom/tencent/beacon/e/f;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/e/f;-><init>(Lcom/tencent/beacon/e/h;)V

    .line 10
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/beacon/e/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/e/h;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static c()Lcom/tencent/beacon/e/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/e/h;->a:Lcom/tencent/beacon/e/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/e/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/e/h;->a:Lcom/tencent/beacon/e/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/e/h;

    invoke-direct {v1}, Lcom/tencent/beacon/e/h;-><init>()V

    sput-object v1, Lcom/tencent/beacon/e/h;->a:Lcom/tencent/beacon/e/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/e/h;->a:Lcom/tencent/beacon/e/h;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/h;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v0

    const-string v1, "ias_cookie"

    const-string v2, ""

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/e/h;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/beacon/e/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 6
    :try_start_0
    iput-object p2, p0, Lcom/tencent/beacon/e/h;->i:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2}, Lcom/tencent/beacon/base/net/b/c;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 8
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/e/h;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/tencent/beacon/e/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/e/h;->d:Lcom/tencent/beacon/e/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/tencent/beacon/e/h;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/e/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/tencent/beacon/e/h;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/tencent/beacon/e/h;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/tencent/beacon/e/h;->j:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/e/g;

    invoke-direct {v1, p0, p1}, Lcom/tencent/beacon/e/g;-><init>(Lcom/tencent/beacon/e/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/h;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/h;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
