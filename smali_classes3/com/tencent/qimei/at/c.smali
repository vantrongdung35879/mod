.class public final Lcom/tencent/qimei/at/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/qimei/at/e;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/at/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/qimei/at/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/at/c;->c:Z

    .line 9
    iput-object p1, p0, Lcom/tencent/qimei/at/c;->a:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/tencent/qimei/at/e;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qimei/at/e;-><init>(Lcom/tencent/qimei/at/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/at/c;
    .locals 3

    const-class v0, Lcom/tencent/qimei/at/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/at/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/at/c;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/at/c;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/at/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 5
    sget-object v0, Lcom/tencent/qimei/at/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/qimei/at/c;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/at/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "s_s_t"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/at/e;->d:Lcom/tencent/qimei/ak/n;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/tencent/qimei/ak/l;

    invoke-direct {v1, v0}, Lcom/tencent/qimei/ak/l;-><init>(Lcom/tencent/qimei/ak/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/n;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c STRATEGY"

    const-string v2, "more than 24 hours since the last Strategy request"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    .line 10
    iget-object v0, v0, Lcom/tencent/qimei/at/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/at/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "QM"

    const-string v4, "start Strategy request task(appKey: %s)"

    invoke-static {v0, v4, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/tencent/qimei/ab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qimei/at/c;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/at/c;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "QM"

    const-string v2, "no network,cancel strategy request(appKey: %s)"

    invoke-static {v0, v2, v1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/tencent/qimei/z/b;->a()Lcom/tencent/qimei/z/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/at/c;->a:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qimei/at/b;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/at/b;-><init>(Lcom/tencent/qimei/at/c;)V

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v4, v0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 11
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c STRATEGY"

    const-string v2, " initialization finished "

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method
