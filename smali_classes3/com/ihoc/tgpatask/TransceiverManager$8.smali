.class Lcom/ihoc/tgpatask/TransceiverManager$8;
.super Ljava/lang/Object;
.source "TransceiverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/TransceiverManager;->detectDelayAndPkgLossInfo(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/TransceiverManager;

.field final synthetic val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

.field final synthetic val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/TransceiverManager;Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1088
    iput-object p1, p0, Lcom/ihoc/tgpatask/TransceiverManager$8;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    iput-object p2, p0, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    iput-object p3, p0, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 1091
    const-string v0, "dbm"

    const-string v2, "cid"

    .line 1092
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1094
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getLocalSessionId()Ljava/lang/String;

    move-result-object v4

    .line 1095
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    iput-object v4, v5, Lcom/ihoc/tgpatask/TransceiverManager;->rttEventId:Ljava/lang/String;

    .line 1097
    const-string v5, "event_id"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v4, "event_type"

    const-string v5, "detect"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v4, "client_type"

    const-string v6, "INET4"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v4, "client_iptype"

    const-string v6, "4"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v4, "client_addr"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "network_type"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "size"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "count"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "duration"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSotimeout()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "sotimeout"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string/jumbo v4, "udp"

    const-string v7, "method"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-boolean v4, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->icmpAvailable:Z

    if-eqz v4, :cond_0

    .line 1112
    const-string v4, "icmp"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1117
    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    const/4 v10, 0x0

    .line 1121
    :try_start_0
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getIps()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1122
    new-instance v15, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    iget-object v13, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSize()I

    move-result v16

    iget-object v13, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v17

    iget-object v13, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getDuration()I

    move-result v18

    iget-object v13, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSotimeout()I

    move-result v19

    move-object v13, v15

    move-object v14, v12

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-direct/range {v13 .. v18}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;-><init>(Ljava/lang/String;IIII)V

    .line 1123
    invoke-virtual/range {v20 .. v20}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->startDelayDetect()V

    .line 1124
    sget-object v13, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TransceiverManager.detectDelayAndPkgLossInfo]startDetect "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v20

    .line 1125
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1129
    :goto_1
    iget-object v12, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    if-ge v11, v12, :cond_3

    .line 1132
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    .line 1133
    invoke-virtual {v14}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->isFinishDetect()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1139
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v13, v12, :cond_3

    const-wide/16 v12, 0x14

    .line 1140
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1147
    :cond_3
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    if-eqz v11, :cond_4

    .line 1148
    sget-object v11, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[TransceiverManager.detectDelayAndPkgLossInfo] task is done, do callback nomal"

    invoke-static {v11, v12}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    invoke-interface {v11, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;->notifyDelayInfo(Ljava/util/ArrayList;)I

    goto :goto_3

    .line 1151
    :cond_4
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[TransceiverManager.detectDelayAndPkgLossInfo] no callback"

    invoke-static {v4, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1155
    :catch_0
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    .line 1156
    iget-object v4, v1, Lcom/ihoc/tgpatask/TransceiverManager$8;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->access$600(Lcom/ihoc/tgpatask/TransceiverManager;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "[TransceiverManager.detectDelayAndPkgLossInfo] enq control listener func:false"

    invoke-static {v4, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1162
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->getBaseStation()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1163
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->getBaseStation()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1164
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-virtual {v3, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string/jumbo v0, "wifi"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v0, "lbs"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    :goto_4
    const-string v0, "detail"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-string v0, "result"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string v0, "event_code"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v11, v7

    .line 1176
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "event_total_time"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v10

    const-string v0, "[TransceiverManager.detectDelayAndPkgLossInfo]detectResult:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ENQSDK"

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-static {v5, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
