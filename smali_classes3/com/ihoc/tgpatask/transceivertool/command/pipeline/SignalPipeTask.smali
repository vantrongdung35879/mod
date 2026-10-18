.class public Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "SignalPipeTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->name:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskScene:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 40
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->type:Ljava/lang/String;

    .line 41
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    .line 42
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    .line 43
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "signal_name"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "signal_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "signal_result"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkOSVerion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private closeSDKLogMode()I
    .locals 4

    .line 232
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 237
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "%s/ENQSDK/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "vmpdebug.log"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->closeAllLogMode()V

    .line 244
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    const-string v1, "Close SDK log mode success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 246
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private openSDKLogMode()I
    .locals 8

    const-string v0, "found log file. logfile path: "

    .line 207
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 213
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "%s/ENQSDK/%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string/jumbo v6, "vmpdebug.log"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v4, "%s/ENQSDK/"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    .line 217
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createFile(Ljava/lang/String;)Z

    .line 219
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->checkDebugLogFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->setLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u542fSDK\u65e5\u5fd7\u6a21\u5f0f\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 224
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v2, "signal"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x800

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v1
.end method

.method public executeTask()V
    .locals 19

    move-object/from16 v1, p0

    .line 63
    const-string v2, "event_total_time"

    const-string v3, "event_code"

    const-string v4, "TaskId=%d End "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 64
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 66
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v9, v11, v8

    const/4 v9, 0x2

    aput-object v10, v11, v9

    .line 64
    const-string v10, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getSignalpipeAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    const-string v2, "[SignalPipeTask.executeTask] failed,callback func is closed"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->status:I

    .line 71
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    const-string v7, "forbidden task type %s"

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->name:Ljava/lang/String;

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v10, v11, v12

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v12

    .line 164
    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->checkOSVerion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "TaskId=%d Failed: CheckOSVerion fail"

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 84
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v11, v13, v12

    .line 83
    invoke-static {v7, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->status:I

    .line 86
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_OSVERSION_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v12

    .line 164
    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 90
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v7, "signal"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 92
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "TaskId=%d Failed: CheckContext fail"

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 93
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v11, v13, v12

    .line 92
    invoke-static {v7, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->status:I

    .line 95
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_AUTH_DECRYPT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v12

    .line 164
    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 99
    :cond_3
    :try_start_3
    const-string v7, "D00QPGxYAdSXy67zRwv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "signal_result"

    const-string v11, "signal_time"

    if-nez v7, :cond_4

    .line 100
    :try_start_4
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v14, "TaskId=%d signalCtx=%s:sdk openSDKLogMode execute begin "

    move-object/from16 v16, v13

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 102
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    aput-object v0, v13, v8

    move-object/from16 v12, v16

    .line 100
    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->openSDKLogMode()I

    move-result v7

    .line 105
    iget-object v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v11, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "TaskId=%d signalCtx=%s:sdk openSDKLogMode execute end "

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 108
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v14, v9

    const/4 v8, 0x1

    aput-object v0, v14, v8

    .line 106
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    goto/16 :goto_0

    .line 111
    :cond_4
    const-string v7, "D99QmaNDQhsfTUJMkWj"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 112
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "TaskId=%d signalCtx=%s:sdk closeSDKLogMode execute begin "

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 114
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v8, v14

    const/4 v13, 0x1

    aput-object v0, v8, v13

    .line 112
    invoke-static {v9, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->closeSDKLogMode()I

    move-result v9

    .line 117
    iget-object v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "TaskId=%d signalCtx=%s:sdk closeSDKLogMode execute end "

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 120
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    const/4 v12, 0x1

    aput-object v0, v14, v12

    .line 118
    invoke-static {v8, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    goto/16 :goto_0

    .line 123
    :cond_5
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v7

    iget-object v7, v7, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-nez v7, :cond_6

    .line 124
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "TaskId=%d Fail:game callback unregisted "

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 125
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    move-object v12, v14

    const/4 v15, 0x0

    aput-object v13, v12, v15

    .line 124
    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "0"

    invoke-virtual {v7, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_NO_CMD:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_NO_CMD:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    goto :goto_0

    .line 130
    :cond_6
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "TaskId=%d signalCtx=%s:game callback execute begin "

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 131
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    const/4 v12, 0x1

    aput-object v0, v14, v12

    .line 130
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 133
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v13, "signalpipe"

    invoke-virtual {v9, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "TaskId=%d signalCtx=%s:game callback execute end "

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 147
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v14, v13

    const/4 v11, 0x1

    aput-object v0, v14, v11

    move-object v11, v14

    .line 146
    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    .line 152
    :goto_0
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "client_addr"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v9

    iget-object v9, v9, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v9

    iget-object v9, v9, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "signal_name"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->status:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 164
    invoke-static {v7, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 159
    :try_start_5
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->status:I

    .line 160
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    .line 161
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "TaskId=%d Fail:%s "

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 162
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v0, v11, v10

    .line 161
    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 164
    invoke-static {v7, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 164
    :goto_2
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->taskID:J

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 164
    invoke-static {v8, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    throw v0
.end method
