.class public Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;
.super Ljava/lang/Object;
.source "PingMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private freq:I

.field private monitorEventId:Ljava/lang/String;

.field msg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pingWorkerThread:Ljava/lang/Thread;

.field private rttEventId:Ljava/lang/String;

.field private runningFlag:Z

.field private sendCount:I

.field private sendInterval:I

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->runningFlag:Z

    const/16 v0, 0x1f4

    .line 21
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->soTimeout:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendCount:I

    const/16 v0, 0x32

    .line 23
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendInterval:I

    const/16 v0, 0x3e8

    .line 24
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->freq:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->rttEventId:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    .line 32
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->monitorEventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->runningFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->monitorEventId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->rttEventId:Ljava/lang/String;

    return-object p0
.end method

.method private startMonitor(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 15

    move-object v12, p0

    .line 68
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "[PingMonitor.startMonitorMix]please init"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 74
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v13, 0x1

    if-ge v0, v13, :cond_1

    .line 75
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "[PingMonitor.startMonitorMix]param is invalid"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 80
    :cond_1
    iget-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PingMonitor.startMonitorMix] pingWorkerThread is not null; pingWorkerThread.isAlive:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "[PingMonitor.startMonitorMix] pingWorkerThread is null"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->rttEventId:Ljava/lang/String;

    iput-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->rttEventId:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->monitorEventId:Ljava/lang/String;

    .line 92
    :try_start_0
    iget-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 210
    :cond_3
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "[PingMonitor.startMonitorMix] tranceiverPingMonitor\u4efb\u52a1\u7ebf\u7a0b\u6b63\u5728\u8fd0\u884c\uff0c\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u63a2\u6d4b\u4efb\u52a1\u518d\u53d1\u8d77\u3002"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    iput-boolean v13, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->runningFlag:Z

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v14, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p2

    move-object/from16 v10, p8

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;ILjava/lang/String;IIILcom/ihoc/tgpatask/VmpCallback;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "tranceiverPingMonitor"

    invoke-direct {v0, v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    .line 206
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->register()V

    .line 207
    iget-object v0, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "[PingMonitor.startMonitorMix] tranceiverPingMonitor\u4efb\u52a1\u7ebf\u7a0b\u5f00\u542f\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_2
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, v12, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->runningFlag:Z

    .line 214
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "[PingMonitor.startMonitorMix] tranceiverPingMonitor\u4efb\u52a1\u7ebf\u7a0b\u5f00\u542f\u51fa\u73b0\u5f02\u5e38\uff0cerror: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method


# virtual methods
.method public startMonitor(Ljava/lang/String;IILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 11

    move-object v10, p0

    .line 40
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getIcmpConfig()Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSoTimeout()I

    move-result v1

    iput v1, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->soTimeout:I

    .line 43
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSendCount()I

    move-result v1

    iput v1, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendCount:I

    .line 44
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSendInterval()I

    move-result v0

    iput v0, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendInterval:I

    .line 46
    :cond_0
    iget v3, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendCount:I

    iget v4, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendInterval:I

    iget v5, v10, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->soTimeout:I

    const-string v8, "qosEffectMonitor"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v6, p2

    move v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->startMonitor(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result v0

    return v0
.end method

.method public startMonitor(Ljava/lang/String;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 11

    .line 52
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getIcmpConfig()Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSoTimeout()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->soTimeout:I

    .line 55
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSendCount()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendCount:I

    .line 56
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getSendInterval()I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendInterval:I

    .line 57
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->getFreq()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->freq:I

    .line 59
    :cond_0
    iget v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendCount:I

    iget v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->sendInterval:I

    iget v6, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->soTimeout:I

    iget v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->freq:I

    const-string v9, "pingMonitor"

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->startMonitor(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    return p1
.end method

.method public stopMonitor()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->runningFlag:Z

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->pingWorkerThread:Ljava/lang/Thread;

    .line 231
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "PingMonitor\u5173\u95ed\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "PingMonitor\u5173\u95ed\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    .line 222
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->TAG:Ljava/lang/String;

    const-string v1, "PingMonitor\u7ebf\u7a0b\u5e76\u6ca1\u6709\u88ab\u5f00\u542f\u6216\u8005\u5df2\u7ecf\u9000\u51fa"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method
