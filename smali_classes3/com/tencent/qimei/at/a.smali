.class public final Lcom/tencent/qimei/at/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/qimei/av/a;

.field public volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/at/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/at/a;->c:Z

    .line 5
    iput-object p1, p0, Lcom/tencent/qimei/at/a;->a:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/tencent/qimei/av/a;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/av/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;
    .locals 3

    const-class v0, Lcom/tencent/qimei/at/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/at/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/at/a;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/at/a;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/at/a;-><init>(Ljava/lang/String;)V

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
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/at/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/at/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/at/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/at/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/qimei/ak/n;)V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/at/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/at/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/at/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/c;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    .line 10
    iput-object p1, v0, Lcom/tencent/qimei/at/e;->d:Lcom/tencent/qimei/ak/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object p1, v0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/ac/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/c;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/tencent/qimei/at/e;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_3
    throw p1

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/tencent/qimei/at/a;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
