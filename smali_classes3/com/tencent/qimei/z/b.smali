.class public final Lcom/tencent/qimei/z/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static f:Lcom/tencent/qimei/z/b;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public b:Lcom/tencent/qimei/z/a;

.field public volatile c:Z

.field public volatile d:Z

.field public e:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/qimei/z/b;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qimei/z/b;->d:Z

    return-void
.end method

.method public static a()Lcom/tencent/qimei/z/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/z/b;->f:Lcom/tencent/qimei/z/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/qimei/z/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/z/b;->f:Lcom/tencent/qimei/z/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qimei/z/b;

    invoke-direct {v1}, Lcom/tencent/qimei/z/b;-><init>()V

    sput-object v1, Lcom/tencent/qimei/z/b;->f:Lcom/tencent/qimei/z/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qimei/z/b;->f:Lcom/tencent/qimei/z/b;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/tencent/qimei/ab/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qimei/z/b;->d:Z

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    new-instance v1, Lcom/tencent/qimei/z/a;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/z/a;-><init>(Lcom/tencent/qimei/z/b;)V

    iput-object v1, p0, Lcom/tencent/qimei/z/b;->b:Lcom/tencent/qimei/z/a;

    .line 14
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tencent/qimei/z/b;->e:Landroid/net/ConnectivityManager;

    .line 15
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x3

    .line 18
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x4

    .line 19
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v1, 0x5

    .line 21
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_0
    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    const/4 v0, 0x6

    .line 24
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/z/b;->e:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 29
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/qimei/z/b;->b:Lcom/tencent/qimei/z/a;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    :try_start_2
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/tencent/qimei/z/b;->c:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/qimei/z/b;->c:Z

    .line 2
    invoke-static {}, Lcom/tencent/qimei/ab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qimei/z/c;

    .line 4
    invoke-interface {v1}, Lcom/tencent/qimei/z/c;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qimei/z/c;

    .line 6
    invoke-interface {v1}, Lcom/tencent/qimei/z/c;->h()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/qimei/z/b;->c:Z

    return-void
.end method
