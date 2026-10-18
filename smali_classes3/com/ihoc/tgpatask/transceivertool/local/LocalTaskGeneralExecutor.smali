.class public Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;
.super Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskBaseExecutor;
.source "LocalTaskGeneralExecutor.java"


# direct methods
.method public constructor <init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskBaseExecutor;-><init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    return-void
.end method


# virtual methods
.method public executeLocalTask(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 6

    .line 64
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTaskAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v1, "localTaskApi config func is closed!"

    invoke-direct {p1, v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object p1

    .line 67
    :cond_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->getCMD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->getCMD()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTaskFuncList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v4, v5, v1

    const-string p1, "localTaskApi %s \u529f\u80fd\u672a\u6253\u5f00 , all fuc: %s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 72
    :cond_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 105
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    goto/16 :goto_0

    .line 95
    :pswitch_0
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object p1, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->action:Ljava/lang/String;

    .line 96
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object p1

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-virtual {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->startQosApp(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)I

    move-result p1

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 99
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object p1

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-virtual {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->stopQosApp(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)I

    move-result p1

    goto :goto_0

    .line 101
    :cond_3
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    goto :goto_0

    .line 91
    :pswitch_1
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v0, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 87
    :pswitch_2
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v0, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 82
    :pswitch_3
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/CustomPipe;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/CustomPipe;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v0, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/CustomPipe;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 78
    :pswitch_4
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalDns;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalDns;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v0, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/LocalDns;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 74
    :pswitch_5
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v0, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    .line 108
    :goto_0
    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getByCode(I)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v0

    .line 109
    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "invokeCode is %d"

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->reportTaskExecuteResult2Cloud(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public executeTapdTask(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 5

    .line 39
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTapdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v1, "localTapdApi config func is closed!"

    invoke-direct {p1, v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object p1

    .line 43
    :cond_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 57
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdOption;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdOption;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdOption;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    goto :goto_0

    .line 45
    :cond_3
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp;

    invoke-direct {p1}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mVmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {p1, v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp;->exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    .line 59
    :goto_0
    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getByCode(I)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const-string p1, "invokeCode is %d"

    invoke-static {v3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v2
.end method

.method public executeTask()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->mLocalParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskCMD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 31
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDOPTION:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDTEMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->executeLocalTask(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->executeTapdTask(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object v0

    return-object v0
.end method
