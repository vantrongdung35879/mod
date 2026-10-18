.class public Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;
.super Ljava/lang/Object;
.source "ControlConfig.java"


# instance fields
.field private delayStartTime:I

.field private final eventReportConfig:Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;

.field private final icmpConfig:Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

.field private localMonitorFuncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localTaskFuncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final qosCfg:Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

.field private releaseTaskFuncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private samplingEventReport:Z

.field private taskStorageTime:J

.field private transceiver:Z

.field private transceiverDbm:Z

.field private transceiverIcmpParams:Z

.field private transceiverLocalMonitor:Z

.field private transceiverLocalTapd:Z

.field private transceiverLocalTask:Z

.field private transceiverLocalTaskShowToast:Z

.field private transceiverLocation:Z

.field private transceiverNetChange:Z

.field private transceiverQos:Z

.field private transceiverSignalpipe:Z

.field private transceiverStation:Z

.field private transceiverTask:Z

.field private transceiverTaskCache:Z

.field private transceiverWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    .line 16
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTask:Z

    .line 18
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    .line 19
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTapd:Z

    .line 21
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTaskShowToast:Z

    .line 22
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    .line 23
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    .line 24
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocation:Z

    .line 25
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverStation:Z

    .line 26
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverDbm:Z

    .line 27
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverWifi:Z

    .line 28
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTaskCache:Z

    .line 29
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverQos:Z

    .line 30
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverIcmpParams:Z

    .line 31
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->samplingEventReport:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localTaskFuncList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localMonitorFuncList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->releaseTaskFuncList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->delayStartTime:I

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->taskStorageTime:J

    .line 41
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->qosCfg:Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    .line 42
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->icmpConfig:Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    .line 43
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->eventReportConfig:Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;

    return-void
.end method


# virtual methods
.method public getDbmAvailable()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverDbm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDelayStartTime()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->delayStartTime:I

    return v0
.end method

.method public getEventReportConfig()Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->eventReportConfig:Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;

    return-object v0
.end method

.method public getIcmpConfig()Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverIcmpParams:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->icmpConfig:Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalMonitorAvailable()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocalMonitorFuncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localMonitorFuncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalTapdAvailable()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTapd:Z

    return v0
.end method

.method public getLocalTaskAvailable()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocalTaskFuncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localTaskFuncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalTaskShowToastAvailable()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTaskShowToast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocationAvailable()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNetChangeAvailable()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQosAvailable()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverQos:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverQos:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->qosCfg:Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseTaskFuncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->releaseTaskFuncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSDKAvailable()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    return v0
.end method

.method public getSamplingEventReport()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->samplingEventReport:Z

    return v0
.end method

.method public getSignalpipeAvailable()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStationAvailable()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverStation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTaskAvailable()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTaskCacheAvailable()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTaskCache:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTaskStorageTime()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->taskStorageTime:J

    return-wide v0
.end method

.method public getWifiAvailable()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverWifi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 55
    const-string/jumbo v2, "taskCache"

    const-string v3, "qos"

    const-string/jumbo v4, "transceiverTaskCache"

    const-string v5, "samplingEventReport"

    const-string/jumbo v6, "transceiverWifi"

    const-string/jumbo v7, "transceiverDbm"

    const-string/jumbo v8, "transceiverStation"

    const-string/jumbo v9, "transceiverLocation"

    const-string/jumbo v10, "transceiverNetChange"

    const-string/jumbo v11, "transceiverLocalTaskShowToast"

    const-string/jumbo v12, "transceiverLocalTapd"

    const-string/jumbo v13, "transceiverSignalpipe"

    const-string/jumbo v14, "transceiver"

    const-string v15, "ret"

    move-object/from16 v16, v2

    const-string/jumbo v2, "transceiverLocalMonitor"

    move-object/from16 v17, v4

    const-string/jumbo v4, "transceiverLocalTask"

    move-object/from16 v18, v3

    const-string/jumbo v3, "transceiverTask"

    const/16 v19, 0x0

    :try_start_0
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v5

    const-string v5, "config"

    move-object/from16 v22, v6

    const-string/jumbo v6, "switch"

    if-eqz v20, :cond_1

    .line 56
    :try_start_1
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    return v19

    .line 60
    :cond_0
    const-string v15, "data"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 62
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 64
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 65
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiver:Z

    .line 74
    :cond_2
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTask:Z

    .line 80
    :cond_3
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    .line 83
    :cond_4
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    .line 86
    :cond_5
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 87
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTapd:Z

    .line 89
    :cond_6
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 90
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalTaskShowToast:Z

    .line 92
    :cond_7
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 93
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    .line 95
    :cond_8
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 96
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    .line 98
    :cond_9
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 99
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverLocation:Z

    .line 101
    :cond_a
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 102
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverStation:Z

    .line 104
    :cond_b
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 105
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverDbm:Z

    :cond_c
    move-object/from16 v5, v22

    .line 107
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 108
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverWifi:Z

    :cond_d
    move-object/from16 v5, v21

    .line 110
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 111
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->samplingEventReport:Z

    .line 113
    :cond_e
    const-string/jumbo v5, "transceiverQos"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v5, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 114
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 115
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->qosCfg:Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    invoke-virtual {v7, v5}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->parseJson(Lorg/json/JSONObject;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverQos:Z

    :cond_f
    move-object/from16 v5, v17

    .line 118
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 119
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 120
    const-string/jumbo v8, "taskStorageTime"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->taskStorageTime:J

    .line 121
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverTaskCache:Z

    .line 124
    :cond_10
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "func"

    if-eqz v3, :cond_12

    :try_start_2
    const-string/jumbo v3, "taskTaskConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 125
    const-string/jumbo v3, "taskTaskConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 127
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 128
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->releaseTaskFuncList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 130
    :cond_11
    const-string v7, "delayTime"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->delayStartTime:I

    .line 141
    :cond_12
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "taskLocalTaskConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 142
    const-string/jumbo v3, "taskLocalTaskConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 143
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 144
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_13

    .line 145
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localTaskFuncList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 149
    :cond_13
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "taskLocalMonitorConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 150
    const-string/jumbo v2, "taskLocalMonitorConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 152
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 153
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->localMonitorFuncList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 157
    :cond_14
    const-string/jumbo v2, "transceiverIcmpParams"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "icmpConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 158
    const-string v2, "icmpConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 159
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->icmpConfig:Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;

    invoke-virtual {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->parseJson(Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->transceiverIcmpParams:Z

    .line 162
    :cond_15
    const-string v2, "eventReportConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 163
    const-string v2, "eventReportConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->eventReportConfig:Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;

    invoke-virtual {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/json/EventReportConfig;->parse(Lorg/json/JSONObject;)V

    :cond_16
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_17
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "tgpacloud has no ret or switch,parse error"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return v19

    :catch_0
    move-exception v0

    .line 167
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v19
.end method
