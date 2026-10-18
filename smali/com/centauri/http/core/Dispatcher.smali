.class public Lcom/centauri/http/core/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# static fields
.field private static final MAX_CURRENCY_NETWORK_THREAD:I = 0x5


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/centauri/http/core/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/centauri/http/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "Network Thread"

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/centauri/http/core/Dispatcher;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x5

    .line 48
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
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

.method private static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 65
    new-instance v0, Lcom/centauri/http/core/Dispatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/http/core/Dispatcher$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized enqueue(Lcom/centauri/http/core/ExecutableCall;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 35
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/centauri/http/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
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
