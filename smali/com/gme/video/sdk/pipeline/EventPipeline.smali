.class public Lcom/gme/video/sdk/pipeline/EventPipeline;
.super Ljava/lang/Object;
.source "EventPipeline.java"

# interfaces
.implements Lcom/gme/video/sdk/pipeline/Pipeline;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mStart:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gme/video/sdk/pipeline/EventPipeline;
    .locals 1

    .line 13
    new-instance v0, Lcom/gme/video/sdk/pipeline/EventPipeline;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/pipeline/EventPipeline;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v0, Lcom/gme/video/sdk/pipeline/EventPipeline$1;

    iget-object v1, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gme/video/sdk/pipeline/EventPipeline$1;-><init>(Lcom/gme/video/sdk/pipeline/EventPipeline;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mStart:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$sleep$0$com-gme-video-sdk-pipeline-EventPipeline()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 89
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v1}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;JZ)V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;JZ)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mStart:Z

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 51
    iget-object p2, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p4, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;JZ)V

    return-void
.end method

.method public quite()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mStart:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mStart:Z

    .line 75
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 77
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public sleep()V
    .locals 1

    .line 83
    new-instance v0, Lcom/gme/video/sdk/pipeline/EventPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/pipeline/EventPipeline$$ExternalSyntheticLambda0;-><init>(Lcom/gme/video/sdk/pipeline/EventPipeline;)V

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->init()V

    return-void
.end method

.method public wake()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/gme/video/sdk/pipeline/EventPipeline;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
