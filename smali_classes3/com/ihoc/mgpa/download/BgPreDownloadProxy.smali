.class public Lcom/ihoc/mgpa/download/BgPreDownloadProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;


# instance fields
.field private isSDKUsable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BgDownloadProxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUsable:Z

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    invoke-direct {v1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

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
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    return-object v0
.end method

.method private isSDKUnavailable()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUsable:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    const-string v1, "[checkSDKUsable]: BgPreDownload SDK is unusable."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: destroy fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBgPreDownload()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->queryTask(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: getSummary fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    return-object v0
.end method

.method public getBgPreDownloadFromCache()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->queryTask(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: get cached summary fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized init(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "[BgPreDownloadProxy]: init fail by "

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v9, Lcom/ihoc/mgpa/bgdownload/PreDownloadConfig;

    const-string v6, ""

    .line 3
    invoke-static {p2}, Lcom/ihoc/mgpa/bgdownload/CtrlRole;->toCtrlRole(Ljava/lang/String;)Lcom/ihoc/mgpa/bgdownload/CtrlRole;

    move-result-object v7

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/ihoc/mgpa/bgdownload/PreDownloadConfig;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/ihoc/mgpa/bgdownload/CtrlRole;Z)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->init(Lcom/ihoc/mgpa/bgdownload/PreDownloadConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUsable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    sget-object p2, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public isTasksAllFinish()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getTasks()Lcom/ihoc/mgpa/bgdownload/PreDownloadJobInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 8
    :cond_1
    iget-object v1, v1, Lcom/ihoc/mgpa/bgdownload/PreDownloadJobInfo;->fileTasks:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/bgdownload/PreDownloadJobInfo$PreDownloadPkgInfo;

    .line 13
    iget-object v2, v2, Lcom/ihoc/mgpa/bgdownload/PreDownloadJobInfo$PreDownloadPkgInfo;->status:Lcom/ihoc/mgpa/bgdownload/core/PreDownloadPkg$DownloadStatus;

    sget-object v3, Lcom/ihoc/mgpa/bgdownload/core/PreDownloadPkg$DownloadStatus;->COMPLETE:Lcom/ihoc/mgpa/bgdownload/core/PreDownloadPkg$DownloadStatus;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/ihoc/mgpa/bgdownload/core/PreDownloadPkg$DownloadStatus;->FAILED:Lcom/ihoc/mgpa/bgdownload/core/PreDownloadPkg$DownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_3

    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    .line 19
    sget-object v2, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BgPreDownloadProxy]: isTaskFinish fail by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method public setCallbackImpl()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy$1;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->setBgPreDownloadCallback(Lcom/ihoc/mgpa/bgdownload/IBgPreDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: setCallbackImpl fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: start fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startHotfix(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->startHotfix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BgPreDownloadProxy]: start fail by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: stop fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateBgPreDownloadNewTask()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isSDKUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->getInstance()Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/bgdownload/BgPreDownloadManager;->updateTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BgPreDownloadProxy]: updateTask fail by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
