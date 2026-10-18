.class public Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "AutoDnsTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->name:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->taskScene:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->taskID:J

    .line 22
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->type:Ljava/lang/String;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->data:Ljava/util/HashMap;

    .line 24
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->data:Ljava/util/HashMap;

    invoke-virtual {p1, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->result:Ljava/util/HashMap;

    .line 26
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "taskScene"

    invoke-virtual {p1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeTask()V
    .locals 13

    .line 31
    const-string v0, "Success:"

    .line 0
    const-string v1, "dns response:"

    const-string v2, "getip response:"

    const-string v3, "autodns url :"

    const-string v4, "Fail:"

    .line 31
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    const-string v6, "[AutoDnsTask.executeTask] Begin! "

    invoke-static {v5, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v5, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v5}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v6, 0xbb8

    .line 35
    invoke-virtual {v5, v6}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    .line 36
    invoke-virtual {v5, v6}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 38
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    const-string v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v6, :cond_0

    .line 39
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 40
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 41
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    const-string v11, "begin get v6ip http request:"

    invoke-static {v6, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v6, "https://%s/%s"

    .line 43
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getV6Host()Ljava/lang/String;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v11, v12, v8

    const-string v11, "enq/getip"

    aput-object v11, v12, v7

    .line 42
    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    .line 48
    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iput-object v6, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    .line 53
    const-string v6, "https://%s/%s?domain=%s"

    .line 54
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v8

    const-string v8, "enq/probe_redis"

    aput-object v8, v9, v7

    aput-object v2, v9, v10

    .line 53
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x7d0

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    invoke-virtual {v5, v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iput-object v2, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->status:I

    .line 66
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->errorCode:I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    const-string v2, "Fail: autodns result is null"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->status:I

    .line 70
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->status:I

    .line 75
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->errorCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v1
.end method
