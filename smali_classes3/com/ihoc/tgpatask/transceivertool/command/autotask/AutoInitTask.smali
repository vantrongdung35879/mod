.class public Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "AutoInitTask.java"


# instance fields
.field private httpCode:Ljava/lang/String;

.field private taskIdList:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
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

    .line 37
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 34
    const-string v0, "-1"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->httpCode:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskIdList:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->name:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    .line 40
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 41
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->type:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->data:Ljava/util/HashMap;

    .line 43
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->data:Ljava/util/HashMap;

    invoke-virtual {p1, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    .line 45
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string p2, "response_code"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "taskScene"

    invoke-virtual {p1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addTaskList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 165
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;

    .line 166
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskIdList:Ljava/lang/String;

    iget-wide v4, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "%s,%d"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskIdList:Ljava/lang/String;

    .line 168
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v4, "ping"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_0

    .line 169
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "ping"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v5, "boce"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "boce"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v5, "httpboce"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 175
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "httpboce"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 177
    :cond_2
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string/jumbo v5, "tracert"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 178
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string/jumbo v9, "tracert"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 180
    :cond_3
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string/jumbo v5, "syslog"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 181
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string/jumbo v9, "syslog"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 183
    :cond_4
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v5, "log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 184
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "log"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v5, "log_v2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 187
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "log"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 189
    :cond_6
    iget-object v2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v5, "signal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 190
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    iget-object v10, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-string v9, "signal"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/ihoc/tgpatask/transceivertool/command/pipeline/SignalPipeTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    .line 193
    :cond_7
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string/jumbo v0, "unsupport task type %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private prepareAutoDns()J
    .locals 14

    .line 200
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getLdnsSwitch()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    const-string v3, "ldns has been close by baseConfig"

    invoke-static {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 205
    :cond_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 206
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getLdnsDomain()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 206
    const-string v4, "%s.%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    return-wide v1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "randomUrl = %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/tgpatask/TransceiverManager;->randomUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v4, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;

    const-string v8, "dns"

    const-string v11, "dns"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v13, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    const-wide/16 v9, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoDnsTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    const-string v4, "InetAddress.getByName timeout"

    invoke-static {v2, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 228
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v2, "getByName cost time is %d"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_2
    return-wide v1
.end method

.method private queryTaskFromCloud(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 129
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;-><init>()V

    .line 131
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v2, 0xbb8

    .line 132
    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    const/4 v2, -0x1

    .line 136
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->postWithCode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 137
    const-string p2, "respData"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 138
    const-string v1, "httpCode"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->httpCode:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    const-string v1, "cloudconfig response:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 142
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    return v2

    .line 146
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->parseJson(Lorg/json/JSONObject;)V

    .line 148
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string p2, "response_code"

    iget v1, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object p1

    iget-object p2, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->ip:Ljava/lang/String;

    iput-object p2, p1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    .line 150
    iget-object p1, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->addTaskList(Ljava/util/List;)V

    .line 151
    iget-object p1, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;

    .line 152
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    move-result-object v1

    iget-wide v3, p2, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->addTaskCache(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, v0, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 155
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    const-string v0, "Parse Remote response Fail!"

    invoke-static {p2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_PARSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    return v2
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public executeTask()V
    .locals 13

    .line 51
    const-string v0, "-1"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->httpCode:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskIdList:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/4 v5, 0x2

    aput-object v6, v7, v5

    .line 54
    const-string v6, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->prepareAutoDns()J

    move-result-wide v2

    .line 59
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->getAllTask()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 64
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v7

    iget-wide v9, v7, Lcom/ihoc/tgpatask/TransceiverManager;->lastQueryTaskCloudTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_0

    .line 65
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 66
    invoke-direct {p0, v6}, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->addTaskList(Ljava/util/List;)V

    .line 67
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->status:I

    .line 68
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    goto/16 :goto_0

    .line 70
    :cond_0
    new-instance v6, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskScene:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getHost()Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v7, v9, v8

    const-string v7, "enq/probe_server"

    aput-object v7, v9, v4

    const-string v7, "https://%s/%s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/json/TaskReq;->generatePostParam()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 77
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 79
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v8

    .line 77
    const-string v9, "Taskid=%d Failed,generate request info failed "

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->status:I

    .line 81
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 85
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v8

    aput-object v6, v12, v4

    .line 83
    const-string v11, "Taskid=%d  request_info:%s "

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v7, v6}, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->queryTaskFromCloud(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_2

    .line 88
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->status:I

    .line 89
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    goto :goto_0

    .line 92
    :cond_2
    iget v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    if-ne v6, v9, :cond_3

    .line 93
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->status:I

    .line 94
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 96
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v10, v11, v8

    .line 94
    const-string v10, "Taskid=%d Failed,response info is null "

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->status:I

    .line 99
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskID:J

    .line 101
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v10, v11, v8

    .line 99
    const-string v10, "Taskid=%d Failed,parse response info failed "

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 108
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v8

    aput-object v11, v5, v4

    .line 108
    const-string v4, "process done,cost %dms,errorCode=%d"

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string/jumbo v1, "task_num"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string v1, "ldns_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    sub-long v1, v9, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    iget v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string v1, "event_total_time"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string v1, "http_code"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->httpCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string/jumbo v1, "task_list"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/autotask/AutoInitTask;->taskIdList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ihoc/tgpatask/TransceiverManager;->lastQueryTaskCloudTime:J

    return-void
.end method
