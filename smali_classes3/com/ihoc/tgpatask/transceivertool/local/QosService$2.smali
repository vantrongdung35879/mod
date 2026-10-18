.class Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;
.super Ljava/lang/Object;
.source "QosService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/QosService;->startQosApp(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

.field final synthetic val$finalDuration:Ljava/lang/String;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/QosService;Ljava/lang/String;Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$finalDuration:Ljava/lang/String;

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    move-object/from16 v1, p0

    .line 438
    const-string v2, "correlationId"

    const-string v3, "qosStartUnixTimestamp"

    const-string v4, "qosState"

    const-string v5, "qosUuid"

    const-string v6, "qosTag"

    const-string v7, "qosDuration"

    const-string v8, "eventcode"

    const-string v9, "qosInfo"

    const-string/jumbo v10, "startQosApp enter TransceiverManager.getInstance().signalPipeCallback is not null"

    const-string/jumbo v11, "startQosApp check TransceiverManager.getInstance().signalPipeCallback is null"

    const-string v12, "localTaskApi"

    const-string v13, "cmd"

    const-string v14, "param"

    const-string v15, "msg"

    move-object/from16 v16, v2

    const-string/jumbo v2, "startQosApp Exceptin:%s"

    move-object/from16 v17, v2

    const-string v2, "code"

    move-object/from16 v18, v9

    const-string v9, "data"

    move-object/from16 v19, v11

    .line 0
    const-string/jumbo v11, "startQosApp enq qos server response is "

    move-object/from16 v20, v11

    const-string v11, "qosService\u529f\u80fd\u5f00\u542f\uff0cqosType:["

    move-object/from16 v21, v11

    const-string/jumbo v11, "startQosApp qosService\u529f\u80fd\u5f00\u542f\uff0cqosType:["

    move-object/from16 v22, v11

    const-string/jumbo v11, "startQosApp qosService\u529f\u80fd\u65e0\u6cd5\u5f00\u542f\uff0cqosType:["

    .line 438
    sget-object v23, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual/range {v23 .. v23}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v11

    .line 439
    const-string v11, ""

    move-object/from16 v25, v10

    .line 440
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v10

    .line 441
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v27, v12

    .line 442
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v28, v13

    .line 443
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v29, v9

    .line 445
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByDevice()Z

    move-result v9

    invoke-virtual {v12, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v9, 0x0

    .line 446
    invoke-virtual {v12, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    invoke-virtual {v12, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    invoke-virtual {v12, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 452
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v9

    iget-object v9, v9, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    move-object/from16 v30, v3

    const-string v3, "4G"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3d

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    const-string v9, "5G"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v3, :cond_1

    .line 453
    :try_start_2
    const-string/jumbo v11, "startQosApp qosService\u529f\u80fd\u65e0\u6cd5\u5f00\u542f\uff0c\u5f53\u524d\u6ca1\u6709\u4f7f\u75284G\u6216\u80055G\u7f51\u7edc"

    .line 454
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETENV_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 455
    :try_start_3
    invoke-virtual {v10, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    :try_start_5
    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v13, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v9, v29

    .line 684
    invoke-virtual {v13, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    move-object/from16 v4, v28

    invoke-virtual {v13, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v5, v27

    .line 687
    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_0

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v6, v25

    invoke-static {v3, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_0
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v8, v18

    .line 694
    invoke-static {v8, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v25

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object v3, v13

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    move-object/from16 v41, v9

    move-object v9, v4

    move-object v4, v7

    move-object v7, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v8

    move-object/from16 v8, v41

    goto/16 :goto_85

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v25

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v9, v28

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v25

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object/from16 v17, v0

    move-object/from16 v23, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v25

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object/from16 v16, v0

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v9, v28

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v23

    :goto_2
    move-object/from16 v41, v15

    move-object v15, v4

    move-object v4, v7

    move-object v7, v14

    move-object v14, v6

    move-object/from16 v6, v41

    goto/16 :goto_85

    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v25

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v16, v11

    move-object v11, v4

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v3

    move-object v3, v13

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v41, v14

    move-object v14, v6

    :goto_4
    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, v41

    goto/16 :goto_7a

    :catchall_3
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v9, v29

    move-object/from16 v41, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v41

    move-object/from16 v16, v0

    move-object v8, v9

    move-object v3, v13

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object v5, v2

    move-object v15, v4

    move-object v4, v7

    move-object v7, v14

    move-object/from16 v2, v23

    move-object v14, v11

    move-object/from16 v11, v25

    goto/16 :goto_85

    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v9, v29

    move-object/from16 v41, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v41

    move-object/from16 v17, v0

    move-object/from16 v28, v3

    move-object v3, v13

    move-object/from16 v16, v25

    move-object v13, v5

    move-object v5, v2

    move-object v11, v4

    move-object v4, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v14, v41

    goto/16 :goto_7a

    :cond_1
    move-object/from16 v31, v4

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v9, v29

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v41, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v41

    move-object/from16 v42, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v42

    .line 461
    :try_start_6
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v27
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4d
    .catchall {:try_start_6 .. :try_end_6} :catchall_3c

    move-object/from16 v28, v3

    :try_start_7
    invoke-virtual/range {v27 .. v27}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getQosType()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4c
    .catchall {:try_start_7 .. :try_end_7} :catchall_3b

    move-object/from16 v27, v4

    .line 462
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4b
    .catchall {:try_start_8 .. :try_end_8} :catchall_3a

    move-object/from16 v29, v7

    const v7, -0x50e1bda3

    move-object/from16 v32, v11

    const/4 v11, 0x2

    if-eq v4, v7, :cond_4

    const v7, -0x507f191c

    if-eq v4, v7, :cond_3

    const v7, -0x3b4973bc

    if-eq v4, v7, :cond_2

    goto/16 :goto_b

    :cond_2
    :try_start_9
    const-string v4, "qCloud"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_c

    :cond_3
    const-string v4, "ctcc4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    goto :goto_c

    :catchall_4
    move-exception v0

    :goto_5
    move-object/from16 v16, v0

    :goto_6
    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v11, v25

    move-object/from16 v17, v28

    move-object/from16 v4, v29

    move-object/from16 v14, v32

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v27

    :goto_7
    move-object v5, v2

    goto/16 :goto_80

    :catch_4
    move-exception v0

    move-object/from16 v17, v0

    move-object v4, v8

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    :goto_8
    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v32

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    :goto_9
    move-object/from16 v15, v29

    :goto_a
    move-object v5, v2

    goto/16 :goto_7a

    :cond_4
    :try_start_a
    const-string v4, "cmcc4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4a
    .catchall {:try_start_a .. :try_end_a} :catchall_39

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_c

    :cond_5
    :goto_b
    const/4 v4, -0x1

    :goto_c
    if-eqz v4, :cond_b

    const/4 v7, 0x1

    if-eq v4, v7, :cond_a

    if-eq v4, v11, :cond_7

    .line 482
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v7, v24

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is incorrect"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 483
    :try_start_c
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETENV_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 484
    :try_start_d
    invoke-virtual {v10, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    invoke-static {v4, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 681
    :try_start_f
    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v13, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v13, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v13, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_6

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v4, v32

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_d

    .line 692
    :cond_6
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v7, v29

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    move-object/from16 v8, v27

    .line 694
    invoke-static {v8, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void

    :catchall_5
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v8, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    move-object/from16 v41, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v13, v41

    move-object/from16 v42, v14

    move-object v14, v4

    move-object v4, v7

    move-object/from16 v7, v42

    move-object/from16 v43, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v8

    move-object/from16 v8, v43

    goto/16 :goto_85

    :catchall_6
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v11

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v3

    move-object v3, v13

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    goto/16 :goto_1e

    :catch_6
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v11

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v23, v17

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object v8, v9

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    goto :goto_10

    :catch_7
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    :goto_f
    move-object/from16 v17, v0

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v16, v0

    move-object v8, v9

    move-object/from16 v17, v11

    move-object/from16 v11, v25

    :goto_10
    move-object v9, v6

    move-object v6, v15

    move-object v15, v3

    move-object v3, v13

    move-object v13, v5

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v17, v0

    move-object/from16 v16, v25

    :goto_11
    move-object v11, v3

    move-object v3, v13

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v41, v14

    move-object v14, v4

    move-object v4, v8

    move-object v8, v9

    move-object v9, v6

    goto/16 :goto_4

    :cond_7
    move-object/from16 v33, v3

    move-object/from16 v3, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    .line 471
    :try_start_10
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->refreshSecurityToken()Z

    move-result v22
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    if-nez v22, :cond_9

    move-object/from16 v28, v11

    .line 473
    :try_start_11
    const-string/jumbo v11, "startQosApp qosService\u529f\u80fd\u65e0\u6cd5\u5f00\u542f\uff0c\u5f53\u524d\u6ca1\u6709\u4f7f\u7528\u7535\u4fe14G\u7f51\u7edc\uff0c\u83b7\u53d6token\u5931\u8d25"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 474
    :try_start_12
    sget-object v16, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETENV_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v27, v3

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 475
    :try_start_14
    invoke-virtual {v10, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v24, v8

    .line 476
    :try_start_15
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 681
    :try_start_16
    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v13, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v13, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v13, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_8

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_12

    .line 692
    :cond_8
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    move-object/from16 v8, v27

    .line 694
    invoke-static {v8, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :catch_a
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_14

    :catchall_9
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v8, v27

    move-object/from16 v3, v28

    move-object/from16 v17, v3

    move-object v3, v13

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v24, v8

    :goto_14
    move-object/from16 v8, v27

    move-object/from16 v3, v28

    move-object/from16 v17, v0

    move-object v3, v13

    move-object/from16 v23, v16

    move-object v13, v5

    move-object/from16 v16, v11

    move-object v5, v2

    move-object v11, v8

    move-object v8, v9

    goto :goto_17

    :catchall_a
    move-exception v0

    move-object/from16 v8, v27

    goto :goto_15

    :catch_c
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v8, v27

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object v8, v3

    :goto_15
    move-object/from16 v3, v28

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object v3, v13

    goto :goto_18

    :catch_d
    move-exception v0

    move-object/from16 v24, v8

    move-object v8, v3

    :goto_16
    move-object/from16 v3, v28

    move-object/from16 v17, v0

    move-object/from16 v16, v11

    move-object v3, v13

    move-object v13, v5

    move-object v11, v8

    move-object v8, v9

    move-object v5, v2

    :goto_17
    move-object v9, v6

    move-object v6, v15

    goto/16 :goto_21

    :catchall_c
    move-exception v0

    move-object v8, v3

    move-object/from16 v3, v28

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object v3, v13

    move-object/from16 v11, v25

    :goto_18
    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v23

    :goto_19
    move-object/from16 v41, v14

    move-object v14, v4

    move-object v4, v7

    move-object/from16 v7, v41

    move-object/from16 v42, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v8

    move-object/from16 v8, v42

    goto/16 :goto_85

    :catch_e
    move-exception v0

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v3, v28

    move-object/from16 v17, v0

    move-object v11, v8

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v16, v25

    goto/16 :goto_20

    :cond_9
    move-object/from16 v24, v8

    move-object v8, v3

    move-object v3, v11

    .line 479
    :try_start_17
    sget-object v11, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    move-object/from16 v28, v3

    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    move-object/from16 v27, v8

    move-object/from16 v8, v21

    :try_start_19
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v33

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], \u5f53\u524d\u6b63\u5728\u4f7f\u7528\u7535\u4fe14G\u7f51\u7edc"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    move-object/from16 v29, v7

    goto/16 :goto_24

    :catchall_d
    move-exception v0

    goto :goto_1c

    :catch_f
    move-exception v0

    goto :goto_1f

    :catchall_e
    move-exception v0

    goto :goto_1a

    :catch_10
    move-exception v0

    goto :goto_1b

    :catchall_f
    move-exception v0

    move-object/from16 v28, v3

    :goto_1a
    move-object/from16 v27, v8

    goto :goto_1c

    :catch_11
    move-exception v0

    move-object/from16 v28, v3

    :goto_1b
    move-object/from16 v27, v8

    goto :goto_1f

    :catchall_10
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v11

    :goto_1c
    move-object/from16 v16, v0

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v11, v25

    move-object/from16 v17, v28

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v27

    :goto_1d
    move-object v5, v2

    move-object/from16 v2, v23

    :goto_1e
    move-object/from16 v41, v14

    move-object v14, v4

    move-object v4, v7

    move-object/from16 v7, v41

    goto/16 :goto_85

    :catch_12
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v24, v8

    move-object/from16 v28, v11

    :goto_1f
    move-object/from16 v17, v0

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    :goto_20
    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object v5, v2

    :goto_21
    move-object v15, v7

    move-object v7, v14

    move-object v14, v4

    move-object/from16 v4, v24

    goto/16 :goto_7a

    :cond_a
    move-object/from16 v24, v8

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object v8, v3

    .line 468
    :try_start_1a
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_14
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    move-object/from16 v29, v7

    move-object/from16 v7, v22

    :try_start_1b
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    goto :goto_24

    :catchall_11
    move-exception v0

    goto :goto_22

    :catch_13
    move-exception v0

    goto :goto_23

    :catchall_12
    move-exception v0

    move-object/from16 v29, v7

    :goto_22
    move-object/from16 v16, v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v11, v25

    move-object/from16 v17, v28

    move-object v14, v4

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v27

    move-object/from16 v4, v29

    goto/16 :goto_7

    :catch_14
    move-exception v0

    move-object/from16 v29, v7

    :goto_23
    move-object/from16 v17, v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object v14, v4

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v4, v24

    goto/16 :goto_9

    :cond_b
    move-object/from16 v24, v8

    move-object/from16 v4, v32

    .line 465
    :try_start_1c
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->refreshSecurityToken()Z

    .line 490
    :goto_24
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_49
    .catchall {:try_start_1c .. :try_end_1c} :catchall_38

    if-eqz v3, :cond_d

    .line 492
    :try_start_1d
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    move-object/from16 v8, v16

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v11}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v11
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    move-object/from16 v32, v4

    :try_start_1e
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v11, "qosType"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/QosService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 493
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "qosType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/QosService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_19
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_28

    :catch_15
    move-exception v0

    goto :goto_27

    :catchall_13
    move-exception v0

    move-object/from16 v32, v4

    goto/16 :goto_5

    :catch_16
    move-exception v0

    move-object/from16 v32, v4

    :goto_25
    move-object/from16 v17, v0

    :goto_26
    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v4, v24

    goto/16 :goto_8

    :catch_17
    move-exception v0

    move-object/from16 v32, v4

    :goto_27
    move-object v3, v0

    .line 496
    :try_start_1f
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 497
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "startQosApp clear ip history error:%s"

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_19
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    const/4 v8, 0x1

    :try_start_20
    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v11, v8
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_18
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    :try_start_21
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_c
    :goto_28
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$400(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_19
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto :goto_2d

    :goto_29
    move-object v3, v0

    goto :goto_2b

    :goto_2a
    move-object v3, v0

    goto :goto_2c

    :catchall_14
    move-exception v0

    goto :goto_29

    :goto_2b
    move-object/from16 v16, v3

    goto/16 :goto_6

    :catch_18
    move-exception v0

    goto :goto_2a

    :goto_2c
    move-object/from16 v17, v3

    goto :goto_26

    :catch_19
    move-exception v0

    goto :goto_25

    :cond_d
    move-object/from16 v32, v4

    .line 504
    :goto_2d
    :try_start_22
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->isDetect()Z

    move-result v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_48
    .catchall {:try_start_22 .. :try_end_22} :catchall_39

    if-eqz v3, :cond_f

    .line 505
    :try_start_23
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectFreq()I

    move-result v3

    if-lez v3, :cond_f

    .line 506
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectDuration()I

    move-result v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1e
    .catchall {:try_start_23 .. :try_end_23} :catchall_17

    if-lez v3, :cond_f

    .line 508
    :try_start_24
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectDuration()I

    move-result v3

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectFreq()I

    move-result v4

    div-int v38, v3, v4

    if-lez v38, :cond_e

    .line 510
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v35

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    const-string v4, "123456789012345678"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v37

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectFreq()I

    move-result v39

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getQosConfig()Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/json/QosConfig;->getDetectTimeout()I

    move-result v40

    move-object/from16 v36, v3

    invoke-virtual/range {v35 .. v40}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1b
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    move-object/from16 v4, v26

    .line 511
    :try_start_25
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1a
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    goto :goto_2e

    :catch_1a
    move-exception v0

    goto :goto_2f

    :cond_e
    move-object/from16 v4, v26

    :goto_2e
    move-object/from16 v16, v5

    goto/16 :goto_39

    :catch_1b
    move-exception v0

    move-object/from16 v4, v26

    :goto_2f
    move-object v3, v0

    .line 514
    :try_start_26
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "startQosApp prepare netData error:%s"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1e
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    move-object/from16 v16, v5

    const/4 v11, 0x1

    :try_start_27
    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v5, v11
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1d
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    :try_start_28
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1c
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    goto/16 :goto_39

    :catchall_15
    move-exception v0

    goto :goto_35

    :catch_1c
    move-exception v0

    goto/16 :goto_37

    :goto_30
    move-object v3, v0

    goto :goto_32

    :goto_31
    move-object v3, v0

    goto :goto_34

    :catchall_16
    move-exception v0

    goto :goto_30

    :goto_32
    move-object v5, v2

    move-object v8, v9

    move-object v7, v14

    move-object/from16 v2, v23

    move-object/from16 v11, v25

    move-object/from16 v17, v28

    move-object/from16 v4, v29

    move-object/from16 v14, v32

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v27

    move-object/from16 v41, v16

    move-object/from16 v16, v3

    :goto_33
    move-object v3, v13

    move-object/from16 v13, v41

    goto/16 :goto_85

    :catch_1d
    move-exception v0

    goto :goto_31

    :goto_34
    move-object v5, v2

    move-object/from16 v17, v3

    goto :goto_38

    :catchall_17
    move-exception v0

    move-object/from16 v16, v5

    :goto_35
    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v13, v16

    move-object/from16 v2, v23

    move-object/from16 v11, v25

    :goto_36
    move-object/from16 v17, v28

    move-object/from16 v4, v29

    move-object/from16 v14, v32

    move-object/from16 v16, v0

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v27

    goto/16 :goto_85

    :catch_1e
    move-exception v0

    move-object/from16 v16, v5

    :goto_37
    move-object/from16 v17, v0

    move-object v5, v2

    :goto_38
    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v13, v16

    move-object/from16 v4, v24

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v32

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v29

    goto/16 :goto_7a

    :cond_f
    move-object/from16 v16, v5

    move-object/from16 v4, v26

    .line 519
    :goto_39
    :try_start_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 520
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v5, "netaccesstype"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_47
    .catchall {:try_start_29 .. :try_end_29} :catchall_37

    move-object/from16 v7, v25

    :try_start_2a
    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    iget-object v5, v5, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_46
    .catchall {:try_start_2a .. :try_end_2a} :catchall_36

    if-eqz v5, :cond_10

    .line 523
    :try_start_2b
    const-string v5, "netaccesstype"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v8

    iget-object v8, v8, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v10, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    goto :goto_3a

    :catchall_18
    move-exception v0

    move-object v5, v2

    move-object v11, v7

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v13, v16

    move-object/from16 v2, v23

    goto :goto_36

    :catch_1f
    move-exception v0

    move-object/from16 v17, v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v4, v24

    move-object/from16 v11, v27

    move-object v9, v6

    move-object/from16 v16, v7

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    goto/16 :goto_7a

    .line 525
    :cond_10
    :goto_3a
    :try_start_2c
    const-string v5, "ip"

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v5, "netData"

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v5, "dbm"

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v5, "cid"

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 530
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$finalDuration:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/json/QosStrategyReq;

    invoke-direct {v8, v3, v4, v5}, Lcom/ihoc/tgpatask/transceivertool/json/QosStrategyReq;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 532
    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v3}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v4, 0x2710

    .line 533
    invoke-virtual {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    const/16 v4, 0x2710

    .line 534
    invoke-virtual {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 535
    const-string v4, "https://%s/%s"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->getHost()Ljava/lang/String;

    move-result-object v5
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_46
    .catchall {:try_start_2c .. :try_end_2c} :catchall_36

    const/4 v11, 0x2

    :try_start_2d
    new-array v11, v11, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v5, v11, v21

    const-string v5, "enq/startQos"

    const/16 v21, 0x1

    aput-object v5, v11, v21
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_45
    .catchall {:try_start_2d .. :try_end_2d} :catchall_35

    :try_start_2e
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/json/QosStrategyReq;->generatePostParam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_46
    .catchall {:try_start_2e .. :try_end_2e} :catchall_36

    if-nez v3, :cond_12

    .line 540
    :try_start_2f
    const-string/jumbo v11, "startQosApp enq qos server response is null"
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_23
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    .line 541
    :try_start_30
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_22
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    move-object/from16 v4, v24

    .line 542
    :try_start_31
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_21
    .catchall {:try_start_31 .. :try_end_31} :catchall_1a

    :try_start_32
    invoke-static {v5, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_21
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    .line 681
    :try_start_33
    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v13, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v13, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v13, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v5, v16

    .line 687
    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_11

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v8, v32

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_3b

    .line 692
    :cond_11
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v7, v29

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    move-object/from16 v4, v27

    .line 694
    invoke-static {v4, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_33} :catch_20

    goto :goto_3c

    :catch_20
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void

    :catchall_19
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v27

    move-object/from16 v7, v28

    move-object/from16 v19, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object v7, v14

    move-object v14, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v4

    move-object/from16 v4, v19

    goto :goto_3d

    :catchall_1a
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v7, v28

    move-object/from16 v19, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move-object/from16 v17, v7

    move-object v7, v14

    move-object/from16 v4, v19

    move-object v14, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    :goto_3d
    move-object/from16 v41, v5

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_33

    :catch_21
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v7, v28

    move-object/from16 v19, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move-object/from16 v17, v0

    move-object/from16 v23, v3

    goto :goto_3e

    :catchall_1b
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v7, v28

    move-object/from16 v19, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move-object/from16 v17, v7

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v4, v19

    goto :goto_3f

    :catch_22
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v24

    move-object/from16 v7, v28

    move-object/from16 v19, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move-object/from16 v17, v0

    :goto_3e
    move-object v3, v13

    move-object v7, v14

    move-object v13, v5

    move-object v14, v8

    move-object v8, v9

    move-object v5, v2

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v19

    goto/16 :goto_7a

    :catchall_1c
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v11, v27

    move-object/from16 v3, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v7

    move-object/from16 v7, v28

    move-object v4, v3

    move-object/from16 v17, v7

    move-object v3, v13

    move-object v7, v14

    :goto_3f
    move-object v13, v5

    move-object v14, v8

    move-object v8, v9

    move-object v5, v2

    move-object v9, v6

    move-object v6, v15

    goto/16 :goto_77

    :catch_23
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v24

    move-object/from16 v11, v27

    move-object/from16 v3, v29

    move-object/from16 v8, v32

    move-object/from16 v16, v7

    move-object/from16 v7, v28

    move-object/from16 v17, v0

    move-object v7, v14

    move-object v14, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v3

    move-object v3, v13

    move-object v13, v5

    goto/16 :goto_a

    :cond_12
    move-object/from16 v5, v16

    move-object/from16 v4, v24

    move-object/from16 v8, v32

    move-object/from16 v16, v7

    move-object/from16 v7, v29

    .line 547
    :try_start_34
    sget-object v11, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_44
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    :try_start_35
    new-instance v7, Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_43
    .catchall {:try_start_35 .. :try_end_35} :catchall_33

    move-object/from16 v25, v8

    move-object/from16 v8, v20

    :try_start_36
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 556
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_42
    .catchall {:try_start_36 .. :try_end_36} :catchall_32

    .line 559
    :try_start_37
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_37} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_42
    .catchall {:try_start_37 .. :try_end_37} :catchall_32

    if-eqz v3, :cond_1c

    :try_start_38
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 561
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_38} :catch_32
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_31
    .catchall {:try_start_38 .. :try_end_38} :catchall_23

    move-object/from16 v20, v5

    :try_start_39
    const-string/jumbo v5, "uuid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v21, v3

    const-string/jumbo v3, "tag"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v22, v3

    const-string v3, "monitorDuration"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 565
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_39} :catch_30
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_2f
    .catchall {:try_start_39 .. :try_end_39} :catchall_22

    move-object/from16 v24, v6

    move-object/from16 v6, v19

    :try_start_3a
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3a} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_2d
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21

    move-object/from16 v19, v14

    .line 566
    :try_start_3b
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_3b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_2b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_20

    move-object/from16 v26, v15

    :try_start_3c
    const-string v15, "monitorFreq"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 567
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3c} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_29
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    move-object/from16 v32, v2

    :try_start_3d
    const-string v2, "isOpenPingMonitor"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/16 v15, 0xe10

    if-gt v5, v15, :cond_14

    const/4 v15, 0x1

    if-ge v5, v15, :cond_13

    goto :goto_40

    :cond_13
    move/from16 v33, v5

    const/16 v5, 0xe10

    goto :goto_41

    :cond_14
    const/4 v15, 0x1

    :goto_40
    const/16 v5, 0xe10

    const/16 v33, 0xe10

    :goto_41
    if-gt v3, v5, :cond_15

    if-ge v3, v15, :cond_16

    :cond_15
    const/16 v3, 0xe10

    :cond_16
    const/16 v5, 0x7d0

    if-gt v14, v5, :cond_18

    const/4 v5, 0x5

    if-ge v14, v5, :cond_17

    goto :goto_42

    :cond_17
    move v5, v14

    goto :goto_43

    :cond_18
    :goto_42
    const/16 v5, 0x3e8

    .line 580
    :goto_43
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "referIp"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    move/from16 v34, v2

    const/4 v15, 0x0

    .line 581
    :goto_44
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_1a

    .line 582
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->isIPv4(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 584
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_44

    .line 588
    :cond_1a
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v11, "qosIpInstanceIdMap"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 590
    :goto_45
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 591
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_3d} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_27
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    .line 593
    :try_start_3e
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 594
    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_3e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_27
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1e

    move-object/from16 v35, v2

    move/from16 v36, v3

    move/from16 v37, v5

    goto :goto_46

    :catch_24
    move-exception v0

    move-object v14, v0

    .line 596
    :try_start_3f
    sget-object v15, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v2

    const-string/jumbo v2, "startQosApp parse qosIpInstanceMap failed:%s"

    invoke-virtual {v14}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_3f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_27
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1e

    move/from16 v36, v3

    move/from16 v37, v5

    const/4 v3, 0x1

    :try_start_40
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v5, v3
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_40} :catch_26
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_25
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    :try_start_41
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_41} :catch_28
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_27
    .catchall {:try_start_41 .. :try_end_41} :catchall_1e

    :goto_46
    move-object/from16 v2, v35

    move/from16 v3, v36

    move/from16 v5, v37

    goto :goto_45

    :goto_47
    move-object v3, v0

    goto :goto_4a

    :goto_48
    move-object v3, v0

    goto :goto_4b

    :goto_49
    move-object v2, v0

    goto :goto_4c

    :catchall_1d
    move-exception v0

    goto :goto_47

    :goto_4a
    move-object v8, v9

    move-object/from16 v11, v16

    move-object/from16 v7, v19

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v15, v27

    move-object/from16 v17, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v13, v20

    goto/16 :goto_85

    :catch_25
    move-exception v0

    goto :goto_48

    :goto_4b
    move-object/from16 v17, v3

    goto/16 :goto_56

    :catch_26
    move-exception v0

    goto :goto_49

    :goto_4c
    move-object/from16 v17, v2

    goto/16 :goto_5b

    :cond_1b
    move/from16 v36, v3

    move/from16 v37, v5

    move-object/from16 v15, v18

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move/from16 v5, v33

    move/from16 v14, v36

    move/from16 v11, v37

    goto/16 :goto_5c

    :catchall_1e
    move-exception v0

    goto :goto_50

    :catch_27
    move-exception v0

    goto/16 :goto_55

    :catch_28
    move-exception v0

    goto/16 :goto_5a

    :catchall_1f
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_50

    :catch_29
    move-exception v0

    move-object/from16 v32, v2

    goto/16 :goto_55

    :catch_2a
    move-exception v0

    move-object/from16 v32, v2

    goto/16 :goto_5a

    :catchall_20
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_4f

    :catch_2b
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_54

    :catch_2c
    move-exception v0

    move-object/from16 v32, v2

    goto/16 :goto_59

    :catchall_21
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_4e

    :catch_2d
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_53

    :catch_2e
    move-exception v0

    move-object/from16 v32, v2

    goto/16 :goto_58

    :catchall_22
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_4d

    :catch_2f
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_52

    :catch_30
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_57

    :catchall_23
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v20, v5

    :goto_4d
    move-object/from16 v24, v6

    :goto_4e
    move-object/from16 v19, v14

    :goto_4f
    move-object/from16 v26, v15

    :goto_50
    move-object v8, v9

    move-object v3, v13

    move-object/from16 v11, v16

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    :goto_51
    move-object/from16 v2, v23

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v15, v27

    move-object/from16 v17, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    goto/16 :goto_78

    :catch_31
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v20, v5

    :goto_52
    move-object/from16 v24, v6

    :goto_53
    move-object/from16 v19, v14

    :goto_54
    move-object/from16 v26, v15

    :goto_55
    move-object/from16 v17, v0

    :goto_56
    move-object v8, v9

    move-object v3, v13

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    goto/16 :goto_7a

    :catch_32
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v20, v5

    :goto_57
    move-object/from16 v24, v6

    :goto_58
    move-object/from16 v19, v14

    :goto_59
    move-object/from16 v26, v15

    :goto_5a
    move-object/from16 v17, v0

    :goto_5b
    move-object v8, v9

    move-object v3, v13

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    goto/16 :goto_67

    :cond_1c
    move-object/from16 v32, v2

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v15

    move-object/from16 v6, v19

    move-object/from16 v19, v14

    move-object/from16 v2, v16

    move-object v3, v2

    move-object/from16 v15, v18

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v34, 0x0

    .line 609
    :goto_5c
    :try_start_42
    invoke-virtual {v10, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_39
    .catchall {:try_start_42 .. :try_end_42} :catchall_2a

    move-object/from16 v18, v9

    .line 610
    :try_start_43
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v9
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_38
    .catchall {:try_start_43 .. :try_end_43} :catchall_29

    move-object/from16 v21, v13

    :try_start_44
    iget-object v13, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v9, v13, v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->setQosEventId(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->setQosEventTag(Ljava/lang/String;)V

    .line 613
    const-string v9, "qosIp"

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v9, "qosReferIp"

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v17

    .line 616
    invoke-virtual {v10, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_37
    .catchall {:try_start_44 .. :try_end_44} :catchall_28

    .line 619
    :try_start_45
    invoke-virtual {v12, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    invoke-virtual {v12, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_20

    if-lez v5, :cond_20

    .line 622
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->addQosInfo(Ljava/util/HashMap;I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 625
    const-string v3, "qosRes"

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz v2, :cond_1f

    .line 628
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_1e

    goto :goto_5d

    .line 631
    :cond_1e
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByDevice()Z

    move-result v3

    move-object/from16 v7, v31

    invoke-virtual {v12, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v35, 0x3e8

    div-long v7, v7, v35

    move-object/from16 v3, v30

    invoke-virtual {v12, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 633
    invoke-virtual {v12, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 635
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_20

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    .line 636
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startQosApp qosed ip has been monitored"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 629
    :cond_1f
    :goto_5d
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startQosApp none ip has been qos"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_5e
    if-eqz v34, :cond_21

    .line 644
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;

    invoke-direct {v3, v1, v14, v11}, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 664
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_33
    .catchall {:try_start_45 .. :try_end_45} :catchall_24

    goto :goto_5f

    :catchall_24
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    goto/16 :goto_51

    :catch_33
    move-exception v0

    move-object v2, v0

    .line 667
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startQosApp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_21
    :goto_5f
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_37
    .catchall {:try_start_46 .. :try_end_46} :catchall_28

    .line 671
    :try_start_47
    const-string/jumbo v11, "startQosApp ok"
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_36
    .catchall {:try_start_47 .. :try_end_47} :catchall_27

    .line 672
    :try_start_48
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_35
    .catchall {:try_start_48 .. :try_end_48} :catchall_26

    :try_start_49
    invoke-static {v3, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_35
    .catchall {:try_start_49 .. :try_end_49} :catchall_25

    move-object/from16 v3, v21

    move-object/from16 v5, v32

    .line 681
    :try_start_4a
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v6, v26

    .line 682
    invoke-virtual {v3, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v19

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v8, v18

    .line 684
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    move-object/from16 v9, v24

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v13, v20

    .line 687
    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_22

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v14, v25

    invoke-static {v3, v14}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_60

    .line 692
    :cond_22
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v15, v29

    invoke-static {v2, v15}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60
    move-object/from16 v4, v27

    .line 694
    invoke-static {v4, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4a} :catch_34

    goto/16 :goto_7d

    :catch_34
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7c

    :catchall_25
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    move-object/from16 v16, v0

    move-object/from16 v41, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v41

    move-object/from16 v42, v15

    move-object v15, v4

    move-object/from16 v4, v42

    goto/16 :goto_85

    :catchall_26
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v11

    goto :goto_61

    :catch_35
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v11

    goto :goto_62

    :catchall_27
    move-exception v0

    move-object/from16 v17, v2

    :goto_61
    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    move-object v4, v15

    move-object v15, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    move-object/from16 v41, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v41

    goto/16 :goto_85

    :catch_36
    move-exception v0

    move-object/from16 v17, v2

    :goto_62
    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    move-object/from16 v23, v17

    goto/16 :goto_74

    :catchall_28
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    goto :goto_64

    :catch_37
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    goto :goto_66

    :catchall_29
    move-exception v0

    move-object v3, v13

    move-object/from16 v8, v18

    goto :goto_63

    :catch_38
    move-exception v0

    move-object v3, v13

    move-object/from16 v8, v18

    goto :goto_65

    :catchall_2a
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    :goto_63
    move-object/from16 v7, v19

    move-object/from16 v13, v20

    :goto_64
    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    goto/16 :goto_75

    :catch_39
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    :goto_65
    move-object/from16 v7, v19

    move-object/from16 v13, v20

    :goto_66
    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v15, v29

    move-object/from16 v5, v32

    goto/16 :goto_74

    :catch_3a
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v29

    move-object v5, v2

    move-object/from16 v2, v28

    move-object/from16 v17, v0

    .line 601
    :goto_67
    :try_start_4b
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_41
    .catchall {:try_start_4b .. :try_end_4b} :catchall_31

    move-object/from16 v28, v2

    .line 602
    :try_start_4c
    const-string/jumbo v2, "startQosApp parse qos server response failed:%s"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_40
    .catchall {:try_start_4c .. :try_end_4c} :catchall_30

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    const/4 v11, 0x1

    :try_start_4d
    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v17, v15, v11
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_3f
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2f

    :try_start_4e
    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_3e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2e

    .line 603
    :try_start_4f
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_3d
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2d

    .line 604
    :try_start_50
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v15, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_3c
    .catchall {:try_start_50 .. :try_end_50} :catchall_2c

    :try_start_51
    invoke-static {v15, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3c
    .catchall {:try_start_51 .. :try_end_51} :catchall_2b

    .line 681
    :try_start_52
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v3, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_23

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_68

    .line 692
    :cond_23
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v15, v19

    invoke-static {v2, v15}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    move-object/from16 v4, v18

    .line 694
    invoke-static {v4, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_52} :catch_3b

    goto :goto_69

    :catch_3b
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-void

    :catchall_2b
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v4, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    move-object/from16 v41, v15

    move-object v15, v4

    move-object/from16 v4, v41

    goto/16 :goto_85

    :catchall_2c
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    move-object v4, v15

    move-object v15, v11

    move-object/from16 v11, v17

    goto/16 :goto_7e

    :catch_3c
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    move-object/from16 v23, v16

    goto :goto_6a

    :catchall_2d
    move-exception v0

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    move-object/from16 v16, v0

    move-object v4, v15

    move-object v15, v11

    move-object/from16 v11, v17

    goto/16 :goto_7f

    :catch_3d
    move-exception v0

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    :goto_6a
    move-object/from16 v16, v17

    goto/16 :goto_74

    :catchall_2e
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    goto/16 :goto_6f

    :catch_3e
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    goto/16 :goto_73

    :catchall_2f
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    goto/16 :goto_6b

    :catch_3f
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v2, v28

    goto/16 :goto_79

    :catchall_30
    move-exception v0

    goto/16 :goto_6f

    :catch_40
    move-exception v0

    goto/16 :goto_73

    :catchall_31
    move-exception v0

    goto/16 :goto_75

    :catch_41
    move-exception v0

    goto/16 :goto_79

    :catchall_32
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    goto/16 :goto_6e

    :catch_42
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    goto/16 :goto_71

    :catchall_33
    move-exception v0

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v11, v27

    move-object v13, v5

    move-object v14, v8

    move-object v8, v9

    move-object v5, v2

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v2, v28

    goto/16 :goto_6c

    :catch_43
    move-exception v0

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v11, v27

    move-object v13, v5

    move-object v14, v8

    move-object v8, v9

    move-object v5, v2

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v2, v28

    goto/16 :goto_6d

    :catchall_34
    move-exception v0

    move-object v3, v13

    move-object/from16 v11, v27

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v28

    move-object/from16 v41, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object v14, v8

    move-object/from16 v8, v41

    goto/16 :goto_75

    :catch_44
    move-exception v0

    move-object v3, v13

    move-object/from16 v11, v27

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v28

    move-object/from16 v41, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object v14, v8

    move-object/from16 v8, v41

    goto/16 :goto_74

    :catchall_35
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object v9, v6

    move-object/from16 v16, v7

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    :goto_6b
    move-object v4, v0

    move-object/from16 v17, v2

    move-object/from16 v2, v23

    move-object/from16 v41, v16

    move-object/from16 v16, v4

    move-object v4, v15

    move-object v15, v11

    goto/16 :goto_83

    :catch_45
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v4, v24

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object v9, v6

    move-object/from16 v16, v7

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    goto/16 :goto_79

    :catchall_36
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object v9, v6

    move-object/from16 v16, v7

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    goto/16 :goto_75

    :catch_46
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v4, v24

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object v9, v6

    move-object/from16 v16, v7

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    goto/16 :goto_74

    :catchall_37
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v13, v16

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v14, v32

    move-object v9, v6

    move-object v6, v15

    :goto_6c
    move-object/from16 v15, v29

    goto/16 :goto_75

    :catch_47
    move-exception v0

    move-object v5, v2

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v13, v16

    move-object/from16 v4, v24

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v2, v28

    move-object/from16 v14, v32

    move-object v9, v6

    move-object v6, v15

    :goto_6d
    move-object/from16 v15, v29

    goto/16 :goto_74

    :catch_48
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v4, v24

    goto :goto_70

    :catchall_38
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object v14, v4

    goto :goto_6e

    :catch_49
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object v14, v4

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v4, v24

    goto :goto_72

    :catchall_39
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v32

    :goto_6e
    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v29

    move-object v5, v2

    :goto_6f
    move-object/from16 v2, v28

    goto/16 :goto_75

    :catch_4a
    move-exception v0

    move-object v4, v8

    move-object v8, v9

    move-object v3, v13

    move-object v7, v14

    :goto_70
    move-object/from16 v16, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v32

    :goto_71
    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    :goto_72
    move-object/from16 v15, v29

    move-object v5, v2

    :goto_73
    move-object/from16 v2, v28

    goto/16 :goto_74

    :catchall_3a
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v16, v25

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object v5, v2

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v2, v28

    move-object v14, v11

    move-object/from16 v11, v27

    goto/16 :goto_75

    :catch_4b
    move-exception v0

    move-object v4, v8

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v16, v25

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object v5, v2

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v2, v28

    move-object v14, v11

    move-object/from16 v11, v27

    goto :goto_74

    :catchall_3b
    move-exception v0

    move-object v8, v9

    move-object v3, v13

    move-object/from16 v16, v25

    move-object v13, v5

    move-object v9, v6

    move-object v6, v15

    move-object v5, v2

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v2, v28

    move-object v14, v11

    move-object v11, v4

    goto :goto_75

    :catch_4c
    move-exception v0

    move-object v3, v13

    move-object/from16 v16, v25

    move-object v13, v5

    move-object v5, v2

    move-object/from16 v2, v28

    move-object/from16 v41, v11

    move-object v11, v4

    move-object v4, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v14, v41

    :goto_74
    move-object/from16 v17, v0

    goto/16 :goto_7a

    :catchall_3c
    move-exception v0

    move-object v8, v9

    move-object/from16 v16, v25

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object v14, v11

    move-object v11, v4

    move-object/from16 v41, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v13, v41

    :goto_75
    move-object/from16 v17, v2

    goto :goto_76

    :catch_4d
    move-exception v0

    move-object/from16 v16, v25

    move-object/from16 v41, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v13, v41

    move-object/from16 v42, v11

    move-object v11, v4

    move-object v4, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v14

    move-object/from16 v14, v42

    goto :goto_79

    :catchall_3d
    move-exception v0

    move-object v5, v2

    move-object/from16 v16, v11

    move-object v3, v13

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v2, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v13, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    :goto_76
    move-object v4, v15

    :goto_77
    move-object/from16 v2, v23

    move-object v15, v11

    move-object/from16 v11, v16

    :goto_78
    move-object/from16 v16, v0

    goto/16 :goto_85

    :catch_4e
    move-exception v0

    move-object v5, v2

    move-object v4, v8

    move-object/from16 v16, v11

    move-object v3, v13

    move-object v7, v14

    move-object v6, v15

    move-object/from16 v2, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v13, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    :goto_79
    move-object/from16 v17, v0

    move-object/from16 v28, v2

    .line 675
    :goto_7a
    :try_start_53
    const-string/jumbo v2, "startQosApp start qos error:%s"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_42

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    const/4 v11, 0x1

    :try_start_54
    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v17, v15, v11
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_41

    :try_start_55
    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_40

    .line 676
    :try_start_56
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_3f

    .line 677
    :try_start_57
    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_3e

    .line 681
    :try_start_58
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v3, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_24

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_7b

    .line 692
    :cond_24
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v4, v19

    invoke-static {v2, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    move-object/from16 v15, v18

    .line 694
    invoke-static {v15, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_58} :catch_4f

    goto :goto_7d

    :catch_4f
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v28

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_7c
    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7d
    return-void

    :catchall_3e
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v15, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v28

    :goto_7e
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    goto/16 :goto_78

    :catchall_3f
    move-exception v0

    move-object/from16 v15, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v28

    move-object/from16 v16, v0

    :goto_7f
    move-object/from16 v17, v2

    :goto_80
    move-object/from16 v2, v23

    goto :goto_85

    :catchall_40
    move-exception v0

    move-object/from16 v15, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v28

    goto :goto_84

    :goto_81
    move-object v11, v0

    goto :goto_82

    :catchall_41
    move-exception v0

    move-object/from16 v15, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v28

    goto :goto_81

    :goto_82
    move-object/from16 v17, v2

    move-object/from16 v2, v23

    move-object/from16 v41, v16

    move-object/from16 v16, v11

    :goto_83
    move-object/from16 v11, v41

    goto :goto_85

    :catchall_42
    move-exception v0

    move-object v4, v15

    move-object/from16 v2, v28

    move-object v15, v11

    :goto_84
    move-object/from16 v17, v2

    move-object/from16 v11, v16

    move-object/from16 v2, v23

    goto/16 :goto_78

    .line 681
    :goto_85
    :try_start_59
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    invoke-virtual {v3, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$param:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_25

    .line 689
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->signalPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_86

    .line 692
    :cond_25
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_86
    invoke-static {v15, v10}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_59} :catch_50

    goto :goto_87

    :catch_50
    move-exception v0

    move-object v2, v0

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_87
    throw v16
.end method
