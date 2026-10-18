.class public Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$ThreadPoolManagerInstance;
    }
.end annotation


# instance fields
.field cacheKeepAlive:I

.field cacheMaxPoolSize:I

.field cacheQueueSize:I

.field cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$1;

    invoke-direct {v0, p0}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v0, 0x5

    .line 34
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheMaxPoolSize:I

    const/16 v0, 0xa

    .line 35
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheKeepAlive:I

    .line 36
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheQueueSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;
    .locals 1

    .line 20
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager$ThreadPoolManagerInstance;->access$100()Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public executeTaskByCachedExecutor(Ljava/lang/Runnable;)Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget v2, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheQueueSize:I

    if-lt v0, v2, :cond_1

    .line 58
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cachedThreadPoolExecutor queue is full"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_2
    :goto_0
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cachedThreadPoolExecutor is null or shutdown"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public executeTaskBySingleExecutor(Ljava/lang/Runnable;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 75
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "singleThreadPoolExecutor queue is full"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 71
    :cond_2
    :goto_0
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "singleThreadPoolExecutor is null or shutdown"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public init()V
    .locals 9

    .line 39
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheMaxPoolSize:I

    iget v1, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheKeepAlive:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cacheQueueSize:I

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->cachedThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->singleThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_3
    return-void
.end method
