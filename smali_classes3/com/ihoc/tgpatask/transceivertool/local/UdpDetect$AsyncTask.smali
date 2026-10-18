.class Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;
.super Ljava/lang/Object;
.source "UdpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTask"
.end annotation


# instance fields
.field private customCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field private rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field private resCode:I

.field private targetIp:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    .line 140
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    .line 141
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->uuid:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 45

    move-object/from16 v1, p0

    .line 147
    const-string v0, "%s%s "

    const-string v2, "executeResult"

    const-string v3, "executeTime"

    const-string v4, "executeCode"

    const-string v5, "invokeCode"

    const-string/jumbo v6, "taskUuid"

    const-string v7, "name"

    const-string/jumbo v8, "type"

    const-string v9, "data"

    const-string v10, "msg"

    const-string v11, "code"

    const-string v12, "Exception:%s"

    const-string v13, "localTaskApi"

    const-string v14, "cmd"

    const-string v15, "param"

    move-object/from16 v16, v12

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v2

    .line 148
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v3

    .line 149
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v4

    .line 151
    const-string v4, ""

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v22, v5

    const/16 v23, 0x0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 157
    new-instance v5, Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    move-object/from16 v25, v6

    :try_start_1
    new-instance v6, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask$1;

    invoke-direct {v6, v1}, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-wide/16 v26, 0x7d0

    .line 168
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 169
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    if-nez v5, :cond_a

    :try_start_2
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    if-nez v5, :cond_0

    goto/16 :goto_d

    .line 175
    :cond_0
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->port:I

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->count:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v32, v7

    :try_start_3
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget-object v7, v7, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->content:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-object/from16 v33, v8

    :try_start_4
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->timeout:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v34, v12

    :try_start_5
    iget-object v12, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v12, v12, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->interval:I

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;IILjava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object v8, v4

    move-object v12, v8

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    :try_start_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v28, :cond_6

    :try_start_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v5

    move-object/from16 v5, v28

    check-cast v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v28, v9

    .line 190
    :try_start_8
    iget-object v9, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mRawContent:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v30, v15

    .line 191
    :try_start_9
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v9, :cond_1

    :try_start_a
    const-string/jumbo v9, "x"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v4

    move-object v5, v10

    move-object/from16 v36, v16

    move-object/from16 v43, v17

    move-object/from16 v42, v18

    move-object/from16 v41, v19

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object/from16 v31, v4

    move-object v5, v10

    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    goto/16 :goto_14

    :cond_1
    :goto_1
    move-object/from16 v31, v4

    const/4 v4, 0x2

    move-object/from16 v35, v10

    :try_start_b
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v23

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-static {v15, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 192
    iget-boolean v9, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mResult:Z

    if-nez v9, :cond_2

    .line 193
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v23

    const-string v5, "-1"

    const/4 v9, 0x1

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object/from16 v9, v28

    move-object/from16 v5, v29

    move-object/from16 v15, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v35

    goto/16 :goto_0

    .line 203
    :cond_2
    iget v5, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mRTT:I

    .line 204
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "%s%d "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v23

    const/4 v12, 0x1

    aput-object v15, v4, v12

    invoke-static {v9, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    if-gt v13, v5, :cond_3

    if-nez v13, :cond_4

    :cond_3
    move v13, v5

    :cond_4
    if-ge v14, v5, :cond_5

    move v14, v5

    :cond_5
    add-int/2addr v7, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v35, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v35, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v31, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v31, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v28, v9

    :goto_3
    move-object/from16 v35, v10

    move-object/from16 v30, v15

    :goto_4
    move-object/from16 v36, v16

    move-object/from16 v43, v17

    move-object/from16 v42, v18

    move-object/from16 v41, v19

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v28, v9

    :goto_5
    move-object/from16 v35, v10

    move-object/from16 v30, v15

    :goto_6
    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    goto/16 :goto_14

    :cond_6
    move-object/from16 v31, v4

    move-object/from16 v28, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v15

    if-eqz v6, :cond_7

    .line 216
    div-int/2addr v7, v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    int-to-float v0, v7

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    .line 219
    :goto_7
    :try_start_c
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->count:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v4, :cond_8

    .line 220
    :try_start_d
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->count:I

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->count:I

    div-int/2addr v4, v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 223
    :goto_8
    :try_start_e
    const-string v5, "ip"

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v5, "raw_info"

    invoke-virtual {v3, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v5, "raw_response"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v5, "min_rtt"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v5, "max_rtt"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v5, "avg_rtt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v0, "pkg_loss_rate"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "send_pkg"

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "rece_pkg"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v4, "remote server response: %s"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/4 v5, 0x1

    :try_start_f
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v8, v6, v23
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 243
    :try_start_11
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v4, v31

    move-object/from16 v5, v35

    .line 244
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v30

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v7, v28

    .line 246
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    move-object/from16 v8, v27

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v10, v26

    move-object/from16 v9, v34

    .line 248
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_9

    .line 251
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 254
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v20

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v13, v33

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v14, v32

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v15, v25

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v22

    .line 262
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, v18

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {v10, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_16

    :catch_5
    move-exception v0

    .line 269
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    move-object/from16 v3, v16

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v22, v12

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    goto/16 :goto_10

    :catchall_6
    move-exception v0

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    move-object/from16 v5, v35

    goto/16 :goto_11

    :catchall_7
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v10, v13

    move-object v8, v14

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    :goto_9
    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v10, v13

    move-object v8, v14

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    :goto_a
    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v9, v34

    goto/16 :goto_10

    :catchall_9
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v9, v12

    move-object v10, v13

    move-object v8, v14

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    goto/16 :goto_b

    :catch_a
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v9, v12

    move-object v10, v13

    move-object v8, v14

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    goto/16 :goto_10

    :catchall_a
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v9, v12

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object/from16 v14, v32

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v7, v9

    move-object v5, v10

    move-object v9, v12

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v12, v22

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object/from16 v14, v32

    goto/16 :goto_10

    :catchall_b
    move-exception v0

    move-object v5, v10

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    :goto_b
    move-object/from16 v16, v0

    move-object v0, v4

    :goto_c
    move-object/from16 v42, v18

    move-object/from16 v41, v37

    move-object/from16 v43, v38

    move-object v12, v0

    goto/16 :goto_1b

    :catch_c
    move-exception v0

    move-object v5, v10

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    goto/16 :goto_10

    :cond_a
    :goto_d
    move-object v5, v10

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move-object/from16 v38, v17

    move-object/from16 v37, v19

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    .line 170
    :try_start_12
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    move-object/from16 v31, v4

    :try_start_13
    const-string v4, "parse host timeout or failed"

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_DNS_PARSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    .line 172
    const-string v4, "detect failed response:null"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 243
    :try_start_14
    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_b

    .line 251
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 254
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v31

    .line 262
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v37

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v38

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {v10, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    .line 269
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    move-object/from16 v3, v36

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void

    :catchall_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    goto :goto_11

    :catchall_d
    move-exception v0

    move-object/from16 v31, v4

    :goto_f
    move-object/from16 v4, v36

    move-object/from16 v39, v37

    move-object/from16 v40, v38

    move-object/from16 v16, v0

    move-object/from16 v22, v12

    goto/16 :goto_13

    :catch_f
    move-exception v0

    :goto_10
    move-object/from16 v31, v4

    :goto_11
    move-object/from16 v4, v36

    move-object/from16 v39, v37

    move-object/from16 v40, v38

    goto/16 :goto_14

    :catchall_e
    move-exception v0

    move-object/from16 v31, v4

    move-object v5, v10

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    goto :goto_12

    :catch_10
    move-exception v0

    move-object/from16 v31, v4

    move-object v5, v10

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object/from16 v15, v25

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    goto :goto_14

    :catchall_f
    move-exception v0

    move-object/from16 v31, v4

    move-object v5, v10

    move-object v10, v13

    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    move-object/from16 v44, v15

    move-object v15, v6

    move-object/from16 v6, v44

    :goto_12
    move-object/from16 v16, v0

    move-object/from16 v36, v4

    :goto_13
    move-object/from16 v42, v18

    move-object/from16 v0, v31

    move-object v12, v0

    move-object/from16 v41, v39

    move-object/from16 v43, v40

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v31, v4

    move-object v5, v10

    move-object v10, v13

    move-object/from16 v4, v16

    move-object/from16 v40, v17

    move-object/from16 v39, v19

    move-object v13, v8

    move-object v8, v14

    move-object v14, v7

    move-object v7, v9

    move-object v9, v12

    move-object/from16 v12, v22

    move-object/from16 v44, v15

    move-object v15, v6

    move-object/from16 v6, v44

    .line 238
    :goto_14
    :try_start_15
    sget-object v16, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    move-object/from16 v22, v12

    :try_start_16
    invoke-virtual/range {v16 .. v16}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v12

    iput v12, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    move-object/from16 v25, v15

    .line 240
    :try_start_17
    sget-object v15, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    const/4 v14, 0x1

    :try_start_18
    new-array v13, v14, [Ljava/lang/Object;

    aput-object v0, v13, v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    :try_start_19
    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 243
    :try_start_1a
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v2, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_c

    .line 251
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 254
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v20

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v13, v33

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v14, v32

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v15, v25

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v22

    move-object/from16 v2, v31

    .line 262
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v39

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v18

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v40

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {v10, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 269
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v23

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_15
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    return-void

    :catchall_10
    move-exception v0

    move-object/from16 v36, v4

    move-object/from16 v16, v12

    move-object/from16 v42, v18

    move-object/from16 v4, v22

    move-object/from16 v15, v25

    move-object/from16 v12, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    goto :goto_17

    :catchall_11
    move-exception v0

    move-object/from16 v36, v4

    move-object/from16 v16, v12

    move-object/from16 v42, v18

    move-object/from16 v4, v22

    move-object/from16 v15, v25

    move-object/from16 v12, v31

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v41, v39

    move-object/from16 v43, v40

    move-object/from16 v22, v4

    goto :goto_18

    :catchall_12
    move-exception v0

    move-object/from16 v36, v4

    move-object/from16 v16, v12

    move-object/from16 v42, v18

    move-object/from16 v4, v22

    move-object/from16 v15, v25

    move-object/from16 v12, v31

    :goto_17
    move-object/from16 v41, v39

    move-object/from16 v43, v40

    :goto_18
    move-object/from16 v44, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v44

    goto :goto_1b

    :catchall_13
    move-exception v0

    move-object/from16 v36, v4

    move-object/from16 v42, v18

    move-object/from16 v4, v22

    move-object/from16 v12, v31

    move-object/from16 v41, v39

    move-object/from16 v43, v40

    :goto_19
    move-object/from16 v16, v0

    goto :goto_1a

    :catchall_14
    move-exception v0

    move-object/from16 v36, v4

    move-object v4, v12

    move-object/from16 v42, v18

    move-object/from16 v12, v31

    move-object/from16 v41, v39

    move-object/from16 v43, v40

    move-object/from16 v16, v0

    move-object/from16 v22, v4

    :goto_1a
    move-object v0, v12

    .line 243
    :goto_1b
    :try_start_1b
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->customCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_d

    .line 251
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 254
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v22

    .line 262
    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v41

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v42

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v43

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {v10, v0}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13

    goto :goto_1c

    :catch_13
    move-exception v0

    .line 269
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v23

    move-object/from16 v3, v36

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    :goto_1c
    throw v16
.end method
