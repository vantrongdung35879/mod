.class public Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskFactory;
.super Ljava/lang/Object;
.source "LocalTaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeTypeTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 4

    const-string v0, "check local task data type error! type: "

    .line 48
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskType:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->TASK:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    if-ne v2, v3, :cond_0

    .line 50
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;

    invoke-direct {v0, p0, v1, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;-><init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;->executeTask()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object p0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskType:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->MONITOR:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    if-ne v2, v3, :cond_1

    .line 52
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;

    invoke-direct {v0, p0, v1, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;-><init>(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;->executeTask()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object p0

    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskType:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 57
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "call localTask exception"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {p1, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private static reportTaskExecuteResult2Game(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 7

    .line 66
    :try_start_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "call localTask done, errorCode=%d, %s"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v1, "code"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v1, "msg"

    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string p0, "param"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string p0, "cmd"

    iget-object p2, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskCMD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo p0, "type"

    iget-object p1, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->taskType:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string p0, "data"

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string p1, "localTaskApi"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 78
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string p2, "make report data for game exception!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static start2Execute(Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 4

    .line 32
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;-><init>()V

    .line 33
    invoke-virtual {v0, p0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->parseJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskFactory;->executeTypeTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object v1

    .line 36
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    if-eq v2, v3, :cond_1

    .line 37
    invoke-static {v1, v0, p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskFactory;->reportTaskExecuteResult2Game(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v3, "parse local task data to json error!"

    invoke-direct {v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    .line 41
    invoke-static {v1, v0, p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskFactory;->reportTaskExecuteResult2Game(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
