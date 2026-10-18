.class public Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static volatile sDefault:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "mgpa-report"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$1;-><init>(Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$2;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$2;-><init>(Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->sDefault:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->sDefault:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    invoke-direct {v1}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->sDefault:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

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
    sget-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->sDefault:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    return-object v0
.end method


# virtual methods
.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public runInScheduler(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public runInSchedulerDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
