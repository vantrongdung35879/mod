.class public Lcom/gme/video/sdk/thread/RunnableThread;
.super Landroid/os/HandlerThread;
.source "RunnableThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/gme/video/sdk/thread/RunnableThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mHandler:Landroid/os/Handler;

    .line 34
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 36
    iget-object v2, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
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

.method public run()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/thread/RunnableThread;->mRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
