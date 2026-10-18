.class public final Lcom/tencent/qimei/ak/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Lcom/tencent/qimei/sdk/Qimei;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ak/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/ak/b;->g:Z

    .line 5
    iput-object p1, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/tencent/qimei/ak/b;->d:J

    .line 8
    iput v0, p0, Lcom/tencent/qimei/ak/b;->e:I

    .line 9
    iput-boolean v0, p0, Lcom/tencent/qimei/ak/b;->f:Z

    .line 10
    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ak/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ak/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ak/b;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/ak/b;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ak/b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/tencent/qimei/ak/b;->a()V

    .line 5
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
.method public final a(Lcom/tencent/qimei/sdk/Qimei;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    const-class v1, Lcom/tencent/qimei/ak/a;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/qimei/ak/a;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tencent/qimei/ak/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 43
    iput-boolean v0, p0, Lcom/tencent/qimei/ak/b;->f:Z

    :cond_1
    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "QM"

    const-string v1, "Local qm cache failed(appKey: %s)"

    invoke-static {p1, v1, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance p1, Lcom/tencent/qimei/sdk/Qimei;

    invoke-direct {p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v1

    throw p1
.end method

.method public final a()V
    .locals 7

    .line 6
    iget-boolean v0, p0, Lcom/tencent/qimei/ak/b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ak/b;->b(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/am/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/tencent/qimei/am/a;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    .line 16
    new-instance v3, Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tencent/qimei/am/a;->e:Lcom/tencent/qimei/sdk/Qimei;

    .line 17
    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    iget-object v1, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    .line 19
    iget-object v0, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    .line 20
    const-string v1, "lccNoCN"

    new-instance v3, Lcom/tencent/qimei/ap/c;

    invoke-direct {v3, v0}, Lcom/tencent/qimei/ap/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 21
    iget-object v0, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v4, Lcom/tencent/qimei/ac/k;

    invoke-direct {v4, v0}, Lcom/tencent/qimei/ac/k;-><init>(Lcom/tencent/qimei/ac/m;)V

    invoke-static {v1, v3, v4}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    goto :goto_1

    .line 32
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ak/b;->a(Lcom/tencent/qimei/sdk/Qimei;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ak/b;->b(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 34
    const-string v0, "QM"

    const-string v1, "(appKey: %s) Qm load successfully from cache, detail: %s"

    iget-object v3, p0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    .line 35
    invoke-virtual {v4}, Lcom/tencent/qimei/sdk/Qimei;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v2

    .line 36
    invoke-static {v0, v1, v5}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 37
    :goto_1
    iput-boolean v2, p0, Lcom/tencent/qimei/ak/b;->g:Z

    return-void

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
