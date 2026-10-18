.class Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;
.super Ljava/lang/Object;
.source "IcmpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTask"
.end annotation


# instance fields
.field customCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field resCode:I

.field targetIp:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    .line 116
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    .line 117
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    move-object/from16 v1, p0

    .line 124
    const-string v0, ";"

    const-string v2, "executeResult"

    const-string v3, "executeTime"

    const-string v4, "executeCode"

    const-string v5, "invokeCode"

    const-string/jumbo v6, "taskUuid"

    const-string v7, "name"

    const-string/jumbo v8, "type"

    const-string v9, "data"

    const-string v10, "msg"

    const-string v11, "Exceptin:%s"

    const-string v12, "code"

    const-string v13, "localTaskApi"

    const-string v14, "cmd"

    const-string v15, "param"

    move-object/from16 v16, v11

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v2

    .line 125
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v3

    .line 126
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v4

    .line 128
    const-string v4, ""

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v23, v4

    .line 132
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 134
    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v25, v0

    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask$1;

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;)V

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-wide/16 v26, 0x7d0

    .line 145
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    const-string v4, "detect failed response:null"

    if-nez v0, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 153
    :cond_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->size:I

    new-array v0, v0, [B

    .line 154
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object/from16 v32, v5

    :try_start_2
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v27

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->count:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v33, v6

    :try_start_3
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->interval:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 v34, v7

    :try_start_4
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v7, v7, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->timeout:I

    move-object/from16 v28, v0

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-virtual/range {v26 .. v31}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-nez v0, :cond_2

    .line 156
    :try_start_5
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    :try_start_6
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v11, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v6, v34

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v7, v33

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v23

    move-object/from16 v6, v32

    .line 228
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v19

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v18

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v17

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v13, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v22

    move-object/from16 v3, v16

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v35, v16

    move-object/from16 v36, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v32

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    move-object/from16 v16, v0

    move-object v0, v4

    move-object v5, v11

    move-object/from16 v44, v17

    move-object/from16 v43, v18

    move-object/from16 v42, v36

    move-object v11, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v13

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object/from16 v35, v16

    move-object/from16 v36, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v32

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    move-object/from16 v41, v17

    move-object/from16 v39, v35

    move-object/from16 v40, v36

    move-object/from16 v45, v7

    move-object v7, v4

    move-object v4, v5

    move-object v5, v11

    move-object v11, v8

    move-object/from16 v8, v45

    move-object/from16 v46, v13

    move-object v13, v6

    move-object/from16 v6, v46

    goto/16 :goto_15

    :cond_2
    move-object/from16 v35, v16

    move-object/from16 v36, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v34

    .line 169
    :try_start_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    array-length v6, v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/16 v16, 0x0

    move-object/from16 v19, v8

    move-object/from16 v23, v11

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_1
    if-ge v8, v6, :cond_8

    move/from16 v28, v6

    :try_start_9
    aget-object v6, v7, v8

    move-object/from16 v29, v7

    .line 170
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v30, v13

    const/4 v13, 0x1

    if-lt v7, v13, :cond_7

    :try_start_a
    const-string v7, "-1.000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 173
    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/lit8 v11, v11, 0x1

    cmpl-float v7, v26, v6

    if-gtz v7, :cond_4

    cmpl-float v7, v26, v16

    if-nez v7, :cond_5

    :cond_4
    move/from16 v26, v6

    :cond_5
    cmpg-float v7, v27, v6

    if-gez v7, :cond_6

    move/from16 v27, v6

    :cond_6
    add-float v25, v25, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v13, v30

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v30, v13

    :goto_3
    move-object/from16 v16, v0

    move-object v0, v4

    move-object v13, v0

    move-object/from16 v44, v17

    move-object/from16 v43, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    move-object/from16 v11, v33

    move-object/from16 v8, v34

    move-object/from16 v42, v36

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v30, v13

    :goto_4
    move-object v7, v4

    move-object/from16 v41, v17

    move-object/from16 v11, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    move-object/from16 v4, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v39, v35

    move-object/from16 v40, v36

    goto/16 :goto_15

    :cond_8
    move-object/from16 v30, v13

    if-eqz v11, :cond_9

    int-to-float v6, v11

    div-float v16, v25, v6

    .line 188
    :cond_9
    :try_start_b
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->count:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v6, :cond_a

    .line 189
    :try_start_c
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->count:I

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0x64

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v7, v7, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->count:I

    div-int/2addr v6, v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 192
    :goto_5
    :try_start_d
    const-string v7, "ip"

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v7, "raw_info"

    const-string v8, " "

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v5, "min_rtt"

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v5, "max_rtt"

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v5, "avg_rtt"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v5, "pkg_loss_rate"

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v5, "send_pkg"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->count:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v5, "rece_pkg"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v6, "remote server response:%s"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v7, 0x1

    :try_start_e
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v22
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 209
    :try_start_10
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    .line 214
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_b

    .line 217
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 220
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v20

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v11, v19

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v13, v34

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v5, v33

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v32

    .line 228
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v36

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v18

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v17

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_17

    :catch_4
    move-exception v0

    .line 235
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v22

    move-object/from16 v3, v35

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    move-object v11, v8

    move-object/from16 v8, v33

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v5, v11

    move-object/from16 v7, v32

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    move-object v11, v8

    move-object/from16 v8, v33

    move-object/from16 v45, v13

    move-object v13, v6

    move-object/from16 v6, v45

    :goto_6
    move-object v7, v11

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v5, v11

    move-object/from16 v7, v32

    move-object/from16 v16, v35

    move-object/from16 v37, v36

    move-object v11, v8

    move-object/from16 v8, v33

    move-object/from16 v45, v13

    move-object v13, v6

    move-object/from16 v6, v45

    goto/16 :goto_d

    :catchall_7
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    move-object v11, v8

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    :goto_7
    move-object v11, v8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object v13, v7

    move-object v11, v8

    move-object/from16 v7, v32

    :goto_8
    move-object/from16 v8, v33

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v5, v11

    move-object v6, v13

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object v13, v7

    move-object v11, v8

    move-object/from16 v7, v32

    :goto_9
    move-object/from16 v8, v33

    goto/16 :goto_d

    :catchall_9
    move-exception v0

    move-object v5, v11

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v32

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v5, v11

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v32

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object/from16 v45, v7

    move-object v7, v5

    move-object v5, v11

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object/from16 v13, v45

    :goto_a
    move-object/from16 v32, v7

    :goto_b
    move-object v7, v11

    move-object/from16 v35, v16

    :goto_c
    move-object/from16 v44, v17

    move-object/from16 v43, v18

    move-object/from16 v42, v37

    move-object/from16 v16, v0

    move-object v0, v4

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v37, v19

    move-object/from16 v4, v23

    move-object/from16 v45, v7

    move-object v7, v5

    move-object v5, v11

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object/from16 v13, v45

    :goto_d
    move-object/from16 v39, v16

    move-object/from16 v41, v17

    move-object/from16 v40, v37

    move-object/from16 v45, v7

    move-object v7, v4

    move-object/from16 v4, v45

    goto/16 :goto_15

    :cond_c
    :goto_e
    move-object v0, v4

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v45, v7

    move-object v7, v5

    move-object v5, v11

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object/from16 v13, v45

    .line 147
    :try_start_11
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v32, v7

    :try_start_12
    const-string v7, "parse host timeout or failed"

    invoke-static {v4, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_DNS_PARSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    iput v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 209
    :try_start_13
    invoke-virtual {v2, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_d

    .line 217
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 220
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v23

    move-object/from16 v2, v32

    .line 228
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v37

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v38

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_f

    :catch_c
    move-exception v0

    .line 235
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v22

    move-object/from16 v3, v16

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void

    :catchall_b
    move-exception v0

    move-object/from16 v39, v16

    move-object/from16 v7, v23

    move-object/from16 v4, v32

    move-object/from16 v40, v37

    move-object/from16 v41, v38

    move-object/from16 v16, v0

    goto :goto_12

    :catch_d
    move-exception v0

    move-object/from16 v39, v16

    move-object/from16 v7, v23

    move-object/from16 v4, v32

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object v4, v7

    move-object/from16 v39, v16

    move-object/from16 v7, v23

    move-object/from16 v40, v37

    move-object/from16 v41, v38

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v4, v7

    move-object/from16 v39, v16

    move-object/from16 v7, v23

    :goto_10
    move-object/from16 v40, v37

    move-object/from16 v41, v38

    goto :goto_15

    :catchall_d
    move-exception v0

    move-object v4, v5

    move-object v5, v11

    move-object/from16 v39, v16

    move-object/from16 v41, v17

    move-object/from16 v40, v19

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v23

    :goto_11
    move-object/from16 v16, v0

    move-object/from16 v32, v4

    :goto_12
    move-object v0, v7

    move-object/from16 v43, v18

    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    move-object v7, v11

    :goto_13
    move-object v11, v8

    move-object v8, v13

    :goto_14
    move-object v13, v0

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    move-object v4, v5

    move-object v5, v11

    move-object/from16 v39, v16

    move-object/from16 v41, v17

    move-object/from16 v40, v19

    move-object v11, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v23

    .line 204
    :goto_15
    :try_start_14
    sget-object v16, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    move-object/from16 v32, v4

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    iput v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    move-object/from16 v23, v7

    .line 206
    :try_start_16
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    move-object/from16 v33, v8

    :try_start_17
    const-string v8, "Exceptin:%s\n"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object/from16 v19, v11

    move-object/from16 v34, v13

    const/4 v13, 0x1

    :try_start_18
    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :try_start_19
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 209
    :try_start_1a
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_e

    .line 217
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 220
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v8, v34

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v11, v33

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v23

    move-object/from16 v2, v32

    .line 228
    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v40

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v41

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    goto :goto_17

    :catch_10
    move-exception v0

    .line 235
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v22

    move-object/from16 v3, v39

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_16
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void

    :catchall_e
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v43, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v23

    move-object/from16 v4, v32

    move-object/from16 v11, v33

    move-object/from16 v8, v34

    goto :goto_18

    :catchall_f
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v43, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v23

    move-object/from16 v4, v32

    move-object/from16 v11, v33

    move-object/from16 v8, v34

    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    move-object/from16 v32, v4

    goto :goto_19

    :catchall_10
    move-exception v0

    move-object/from16 v16, v4

    move-object v7, v11

    move-object v8, v13

    move-object/from16 v43, v18

    move-object/from16 v13, v23

    move-object/from16 v4, v32

    move-object/from16 v11, v33

    :goto_18
    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    goto :goto_19

    :catchall_11
    move-exception v0

    move-object/from16 v16, v4

    move-object v7, v11

    move-object/from16 v43, v18

    move-object/from16 v4, v32

    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    move-object v11, v8

    move-object v8, v13

    move-object/from16 v13, v23

    :goto_19
    move-object/from16 v45, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v45

    goto :goto_1b

    :catchall_12
    move-exception v0

    move-object/from16 v43, v18

    move-object/from16 v4, v32

    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v13

    move-object v13, v7

    move-object v7, v11

    move-object v11, v8

    move-object/from16 v8, v45

    move-object/from16 v16, v0

    goto :goto_1a

    :catchall_13
    move-exception v0

    move-object/from16 v43, v18

    move-object/from16 v35, v39

    move-object/from16 v42, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v13

    move-object v13, v7

    move-object v7, v11

    move-object v11, v8

    move-object/from16 v8, v45

    move-object/from16 v16, v0

    move-object/from16 v32, v4

    :goto_1a
    move-object v0, v13

    .line 209
    :goto_1b
    :try_start_1b
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_f

    .line 217
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 220
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v32

    .line 228
    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v42

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v43

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v44

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_11

    goto :goto_1c

    :catch_11
    move-exception v0

    .line 235
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v22

    move-object/from16 v3, v35

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :goto_1c
    throw v16
.end method
