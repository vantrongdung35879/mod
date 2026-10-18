.class public Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;
.super Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskBaseExecutor;
.source "LocalTaskMonitorExecutor.java"


# direct methods
.method public constructor <init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskBaseExecutor;-><init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    return-void
.end method


# virtual methods
.method public executeTask()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 6

    .line 30
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalMonitorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "localMonitorApi \u529f\u80fd\u672a\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v2, "config func is closed"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskCMD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 36
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalMonitorFuncList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->getCMD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 37
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->getCMD()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "localMonitorApi %s \u529f\u80fd\u672a\u6253\u5f00"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v2, "config is ok, but this func is closed"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_1
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string/jumbo v1, "stop"

    const-string v4, "start"

    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    .line 65
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->action:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 57
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v0, v1, v4}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->start(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result v0

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 59
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->stop()I

    goto :goto_0

    .line 61
    :cond_4
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    goto :goto_1

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->action:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 47
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v0, v1, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->start(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result v0

    goto :goto_1

    .line 48
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 49
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->stop()I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 51
    :cond_7
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    .line 67
    :goto_1
    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getByCode(I)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v1

    .line 68
    new-instance v4, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "invokeCode is %d"

    invoke-static {v5, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->reportTaskExecuteResult2Cloud(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    return-object v4
.end method
