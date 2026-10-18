.class Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;
.super Ljava/lang/Object;
.source "UploadFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UploadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTask"
.end annotation


# instance fields
.field private cosAccessCode:Ljava/lang/String;

.field private cosUrl:Ljava/lang/String;

.field private customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field private rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field private resCode:I

.field private urlPath:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 70
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->urlPath:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    .line 72
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-void
.end method

.method private parseResp(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 218
    :try_start_0
    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;

    invoke-direct {v2}, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;-><init>()V

    .line 219
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;->parseJson(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 224
    :cond_1
    iget p1, v2, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;->code:I

    if-eqz p1, :cond_2

    return v0

    .line 228
    :cond_2
    iget-object p1, v2, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;->data:Ljava/util/HashMap;

    const-string v3, "authCodes"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosAccessCode:Ljava/lang/String;

    .line 229
    iget-object p1, v2, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$TaskConfig;->data:Ljava/util/HashMap;

    const-string v2, "cosHost"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosUrl:Ljava/lang/String;

    .line 231
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosAccessCode:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_3

    goto :goto_0

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosUrl:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_4

    goto :goto_0

    .line 237
    :cond_4
    const-string p1, "https://%s"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosUrl:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 74

    move-object/from16 v1, p0

    .line 79
    const-string v2, "generate requestData failed"

    const-string v3, "src file is not existed"

    const-string v4, "executeResult"

    const-string v5, "executeTime"

    const-string v6, "executeCode"

    const-string v7, "invokeCode"

    const-string/jumbo v8, "taskUuid"

    const-string v9, "name"

    const-string/jumbo v10, "type"

    const-string v11, "data"

    const-string v12, "msg"

    const-string v13, "code"

    const-string v14, "result"

    const-string v15, "Exception:%s"

    move-object/from16 v16, v2

    const-string v2, "localTaskApi"

    move-object/from16 v17, v15

    const-string v15, "cmd"

    move-object/from16 v18, v4

    const-string v4, "param"

    move-object/from16 v19, v5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v20, v6

    .line 80
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v21, v7

    .line 81
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v22, v8

    .line 83
    const-string v8, ""

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v25, v8

    .line 85
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    move-object/from16 v26, v9

    const-string v9, "filename"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    .line 89
    :try_start_0
    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v27
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_25
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    if-nez v27, :cond_1

    .line 90
    :try_start_1
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v8

    iput v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v21

    move-object/from16 v4, v25

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v20

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v17

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v28, v17

    move-object/from16 v32, v18

    move-object/from16 v31, v19

    move-object/from16 v30, v20

    move-object/from16 v29, v21

    move-object/from16 v8, v22

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v16, v0

    move-object/from16 v69, v29

    move-object/from16 v70, v30

    move-object/from16 v71, v31

    move-object/from16 v72, v32

    move-object/from16 v8, v25

    move-object v3, v9

    goto/16 :goto_2c

    :catch_1
    move-exception v0

    move-object/from16 v28, v17

    move-object/from16 v32, v18

    move-object/from16 v31, v19

    move-object/from16 v30, v20

    move-object/from16 v29, v21

    move-object/from16 v8, v22

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v16, v0

    move-object/from16 v3, v28

    move-object/from16 v65, v29

    move-object/from16 v66, v30

    move-object/from16 v67, v31

    move-object/from16 v68, v32

    move-object/from16 v73, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_25

    :cond_1
    move-object/from16 v28, v17

    move-object/from16 v32, v18

    move-object/from16 v31, v19

    move-object/from16 v30, v20

    move-object/from16 v29, v21

    move-object/from16 v9, v26

    .line 95
    :try_start_3
    new-instance v3, Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_24
    .catchall {:try_start_3 .. :try_end_3} :catchall_1d

    :try_start_4
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 96
    const-string v9, "filesize"

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_23
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    move-object/from16 v20, v10

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v9, "md5"

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 101
    new-instance v9, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;

    invoke-direct {v9, v3}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;-><init>(Ljava/util/HashMap;)V

    .line 102
    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;->generatePostParam()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_22
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    if-nez v3, :cond_3

    .line 104
    :try_start_6
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v8, v16

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    :try_start_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v9, v20

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v25

    move-object/from16 v8, v29

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v30

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v31

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v32

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v28

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v3, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v35, v32

    move-object/from16 v16, v0

    move-object/from16 v69, v8

    move-object/from16 v70, v33

    move-object/from16 v71, v34

    move-object/from16 v72, v35

    :goto_2
    move-object/from16 v8, v25

    :goto_3
    move-object v3, v10

    goto/16 :goto_23

    :catch_3
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v3, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v35, v32

    move-object/from16 v16, v0

    move-object/from16 v65, v8

    move-object/from16 v8, v22

    move-object/from16 v3, v28

    move-object/from16 v66, v33

    move-object/from16 v67, v34

    move-object/from16 v68, v35

    goto/16 :goto_25

    :cond_3
    move-object/from16 v37, v8

    move-object/from16 v9, v20

    move-object/from16 v36, v25

    move-object/from16 v10, v26

    move-object/from16 v21, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v35, v32

    .line 109
    :try_start_8
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_21
    .catchall {:try_start_8 .. :try_end_8} :catchall_1a

    :try_start_9
    const-string v10, "request remote server Data:%s"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_20
    .catchall {:try_start_9 .. :try_end_9} :catchall_19

    move-object/from16 v16, v2

    move-object/from16 v20, v9

    const/4 v9, 0x1

    :try_start_a
    new-array v2, v9, [Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1e
    .catchall {:try_start_a .. :try_end_a} :catchall_18

    const/4 v9, 0x0

    :try_start_b
    aput-object v3, v2, v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1f
    .catchall {:try_start_b .. :try_end_b} :catchall_18

    :try_start_c
    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v8, 0x3e8

    .line 112
    invoke-virtual {v2, v8}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    const/16 v8, 0xbb8

    .line 113
    invoke-virtual {v2, v8}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 114
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->urlPath:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1e
    .catchall {:try_start_c .. :try_end_c} :catchall_17

    if-nez v2, :cond_5

    .line 116
    :try_start_d
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v3, "remote server response:null"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 118
    const-string v3, "no response from remote svr"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 178
    :try_start_e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v16

    .line 184
    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v2, :cond_4

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v9, v20

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v21

    move-object/from16 v4, v36

    .line 198
    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v33

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v34

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v35

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v28

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v3, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v26

    move-object/from16 v38, v33

    move-object/from16 v39, v34

    move-object/from16 v40, v35

    move-object/from16 v2, v36

    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object/from16 v69, v8

    move-object/from16 v70, v38

    move-object/from16 v71, v39

    move-object/from16 v72, v40

    move-object/from16 v8, v25

    move-object v2, v3

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v3, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v26

    move-object/from16 v38, v33

    move-object/from16 v39, v34

    move-object/from16 v40, v35

    move-object/from16 v2, v36

    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object v2, v3

    move-object/from16 v65, v8

    move-object/from16 v8, v22

    move-object/from16 v3, v28

    move-object/from16 v66, v38

    move-object/from16 v67, v39

    move-object/from16 v68, v40

    goto/16 :goto_25

    :cond_5
    move-object/from16 v3, v16

    move-object/from16 v9, v20

    move-object/from16 v10, v26

    move-object/from16 v38, v33

    move-object/from16 v39, v34

    move-object/from16 v40, v35

    move-object/from16 v41, v36

    .line 121
    :try_start_f
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d
    .catchall {:try_start_f .. :try_end_f} :catchall_16

    :try_start_10
    const-string v10, "remote server response:%s"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    move-object/from16 v16, v3

    move-object/from16 v20, v9

    const/4 v9, 0x1

    :try_start_11
    new-array v3, v9, [Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1a
    .catchall {:try_start_11 .. :try_end_11} :catchall_14

    const/4 v9, 0x0

    :try_start_12
    aput-object v2, v3, v9
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1b
    .catchall {:try_start_12 .. :try_end_12} :catchall_14

    :try_start_13
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->parseResp(Ljava/lang/String;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1a
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    if-nez v2, :cond_7

    .line 124
    :try_start_14
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v3, "remote server invalid response"

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 126
    const-string v3, "invalid response"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 178
    :try_start_15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v16

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_6

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v9, v20

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v21

    move-object/from16 v4, v41

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v38

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v39

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v40

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v28

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v43, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v42, v28

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    move-object/from16 v46, v40

    move-object/from16 v3, v41

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    move-object/from16 v69, v43

    move-object/from16 v70, v44

    move-object/from16 v71, v45

    move-object/from16 v72, v46

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v43, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v42, v28

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    move-object/from16 v46, v40

    move-object/from16 v3, v41

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    move-object/from16 v3, v42

    move-object/from16 v65, v43

    move-object/from16 v66, v44

    move-object/from16 v67, v45

    move-object/from16 v68, v46

    goto/16 :goto_25

    :cond_7
    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v43, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v42, v28

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    move-object/from16 v46, v40

    move-object/from16 v25, v41

    .line 130
    :try_start_16
    const-string v3, "%s/%s"

    .line 131
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_19
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    move-object/from16 v22, v8

    const/4 v8, 0x2

    :try_start_17
    new-array v8, v8, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v16, v8, v18

    const-string v16, "ENQSDK/upload"

    const/16 v17, 0x1

    aput-object v16, v8, v17
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 130
    :try_start_18
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    move-object/from16 v16, v3

    const-string v3, "create dir failed"

    if-nez v8, :cond_9

    .line 134
    :try_start_19
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v8

    iput v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 178
    :try_start_1a
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_8

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v25

    move-object/from16 v8, v43

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v44

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v45

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v46

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v42

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v25

    move-object/from16 v47, v42

    move-object/from16 v48, v43

    move-object/from16 v49, v44

    move-object/from16 v50, v45

    move-object/from16 v51, v46

    move-object/from16 v16, v0

    move-object/from16 v28, v47

    move-object/from16 v69, v48

    move-object/from16 v70, v49

    move-object/from16 v71, v50

    move-object/from16 v72, v51

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v25

    move-object/from16 v47, v42

    move-object/from16 v48, v43

    move-object/from16 v49, v44

    move-object/from16 v50, v45

    move-object/from16 v51, v46

    move-object/from16 v16, v0

    move-object/from16 v3, v47

    move-object/from16 v65, v48

    move-object/from16 v66, v49

    move-object/from16 v67, v50

    move-object/from16 v68, v51

    goto/16 :goto_25

    :cond_9
    move-object/from16 v52, v25

    move-object/from16 v47, v42

    move-object/from16 v48, v43

    move-object/from16 v49, v44

    move-object/from16 v50, v45

    move-object/from16 v51, v46

    .line 140
    :try_start_1b
    const-string v8, "%s/uploadFile_%s.zip"
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    move-object/from16 v26, v10

    :try_start_1c
    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_16
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    move-object/from16 v20, v9

    const/4 v9, 0x2

    :try_start_1d
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v16, v9, v18
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_14
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    const/16 v16, 0x1

    :try_start_1e
    aput-object v10, v9, v16
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_15
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :try_start_1f
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v9
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_14
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-eqz v9, :cond_b

    .line 142
    :try_start_20
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "zipfile has been existed"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v8

    iput v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 178
    :try_start_21
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_a

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v9, v20

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v48

    move-object/from16 v4, v52

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v49

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v50

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v51

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v47

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void

    :catchall_5
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    move-object/from16 v55, v49

    move-object/from16 v56, v50

    move-object/from16 v57, v51

    move-object/from16 v3, v52

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    move-object/from16 v28, v53

    move-object/from16 v69, v54

    move-object/from16 v70, v55

    move-object/from16 v71, v56

    move-object/from16 v72, v57

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    move-object/from16 v55, v49

    move-object/from16 v56, v50

    move-object/from16 v57, v51

    move-object/from16 v3, v52

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    move-object/from16 v3, v53

    move-object/from16 v65, v54

    move-object/from16 v66, v55

    move-object/from16 v67, v56

    move-object/from16 v68, v57

    goto/16 :goto_25

    :cond_b
    move-object/from16 v9, v20

    move-object/from16 v59, v22

    move-object/from16 v10, v37

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    move-object/from16 v55, v49

    move-object/from16 v56, v50

    move-object/from16 v57, v51

    move-object/from16 v58, v52

    .line 148
    :try_start_22
    invoke-static {v10, v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->compress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    if-nez v10, :cond_d

    .line 149
    :try_start_23
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "zipfile has been existed"

    invoke-static {v8, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v8

    iput v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 178
    :try_start_24
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_c

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v59

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v54

    move-object/from16 v4, v58

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v55

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v56

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v57

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v53

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void

    :catchall_6
    move-exception v0

    move-object/from16 v10, v26

    move-object/from16 v60, v53

    move-object/from16 v61, v54

    move-object/from16 v62, v55

    move-object/from16 v63, v56

    move-object/from16 v64, v57

    move-object/from16 v3, v58

    move-object/from16 v8, v59

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    move-object/from16 v22, v8

    move-object/from16 v28, v60

    move-object/from16 v69, v61

    move-object/from16 v70, v62

    move-object/from16 v71, v63

    move-object/from16 v72, v64

    goto/16 :goto_2

    :catch_d
    move-exception v0

    move-object/from16 v10, v26

    move-object/from16 v60, v53

    move-object/from16 v61, v54

    move-object/from16 v62, v55

    move-object/from16 v63, v56

    move-object/from16 v64, v57

    move-object/from16 v3, v58

    move-object/from16 v8, v59

    move-object/from16 v16, v0

    move-object/from16 v25, v3

    :goto_9
    move-object/from16 v3, v60

    move-object/from16 v65, v61

    move-object/from16 v66, v62

    move-object/from16 v67, v63

    move-object/from16 v68, v64

    goto/16 :goto_25

    :cond_d
    move-object/from16 v10, v26

    move-object/from16 v60, v53

    move-object/from16 v61, v54

    move-object/from16 v62, v55

    move-object/from16 v63, v56

    move-object/from16 v64, v57

    move-object/from16 v25, v58

    move-object/from16 v22, v59

    .line 155
    :try_start_25
    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v3}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    move-object/from16 v26, v10

    const/16 v10, 0xbb8

    .line 156
    :try_start_26
    invoke-virtual {v3, v10}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 157
    invoke-virtual {v3, v10}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    .line 158
    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosUrl:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    move-object/from16 v20, v9

    :try_start_27
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->cosAccessCode:Ljava/lang/String;

    invoke-virtual {v3, v10, v9, v8}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 159
    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_10
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    if-nez v3, :cond_e

    .line 162
    :try_start_28
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cosServer resp is null"

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 164
    const-string v3, "cosServer resp is null"

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v10, v20

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    move-object/from16 v28, v60

    move-object/from16 v69, v61

    move-object/from16 v70, v62

    move-object/from16 v71, v63

    move-object/from16 v72, v64

    goto/16 :goto_2c

    :catch_e
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_9

    :cond_e
    const/16 v8, 0xc8

    if-ne v3, v8, :cond_f

    .line 166
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "uplod file to cos, ok"

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    move-object/from16 v3, v25

    goto :goto_a

    .line 168
    :cond_f
    :try_start_29
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cosServer response: auth fail"

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_AUTH_COS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 170
    const-string v3, "cosServer response: auth fail"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    .line 178
    :goto_a
    :try_start_2a
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v3, :cond_10

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v9, v20

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v25

    move-object/from16 v8, v61

    .line 198
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v62

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v63

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v64

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f

    goto/16 :goto_27

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v60

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    :catchall_8
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_b

    :catch_10
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_c

    :catchall_9
    move-exception v0

    :goto_b
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_d

    :catch_11
    move-exception v0

    :goto_c
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object/from16 v8, v22

    :goto_d
    move-object/from16 v3, v60

    move-object/from16 v65, v61

    move-object/from16 v66, v62

    move-object/from16 v67, v63

    move-object/from16 v68, v64

    goto/16 :goto_21

    :catch_12
    move-exception v0

    move-object/from16 v8, v22

    :goto_e
    move-object/from16 v3, v60

    move-object/from16 v65, v61

    move-object/from16 v66, v62

    move-object/from16 v67, v63

    move-object/from16 v68, v64

    goto/16 :goto_24

    :catchall_b
    move-exception v0

    move-object/from16 v10, v26

    move-object/from16 v3, v53

    move-object/from16 v65, v54

    move-object/from16 v66, v55

    move-object/from16 v67, v56

    move-object/from16 v68, v57

    move-object/from16 v25, v58

    move-object/from16 v8, v59

    goto/16 :goto_13

    :catch_13
    move-exception v0

    move-object/from16 v10, v26

    move-object/from16 v3, v53

    move-object/from16 v65, v54

    move-object/from16 v66, v55

    move-object/from16 v67, v56

    move-object/from16 v68, v57

    move-object/from16 v25, v58

    move-object/from16 v8, v59

    goto/16 :goto_24

    :catchall_c
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_f

    :catch_14
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_10

    :catch_15
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_12

    :catchall_d
    move-exception v0

    move-object/from16 v9, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v3, v47

    move-object/from16 v65, v48

    move-object/from16 v66, v49

    move-object/from16 v67, v50

    move-object/from16 v68, v51

    move-object/from16 v25, v52

    goto/16 :goto_13

    :catchall_e
    move-exception v0

    :goto_f
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_11

    :catch_16
    move-exception v0

    :goto_10
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_12

    :catchall_f
    move-exception v0

    move-object/from16 v8, v22

    :goto_11
    move-object/from16 v3, v47

    move-object/from16 v65, v48

    move-object/from16 v66, v49

    move-object/from16 v67, v50

    move-object/from16 v68, v51

    move-object/from16 v25, v52

    goto/16 :goto_21

    :catch_17
    move-exception v0

    move-object/from16 v8, v22

    :goto_12
    move-object/from16 v3, v47

    move-object/from16 v65, v48

    move-object/from16 v66, v49

    move-object/from16 v67, v50

    move-object/from16 v68, v51

    move-object/from16 v25, v52

    goto/16 :goto_24

    :catchall_10
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v42

    move-object/from16 v65, v43

    move-object/from16 v66, v44

    move-object/from16 v67, v45

    move-object/from16 v68, v46

    goto/16 :goto_21

    :catch_18
    move-exception v0

    move-object/from16 v8, v22

    goto :goto_14

    :catchall_11
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v42

    move-object/from16 v65, v43

    move-object/from16 v66, v44

    move-object/from16 v67, v45

    move-object/from16 v68, v46

    goto :goto_13

    :catchall_12
    move-exception v0

    move-object/from16 v3, v42

    move-object/from16 v65, v43

    move-object/from16 v66, v44

    move-object/from16 v67, v45

    move-object/from16 v68, v46

    :goto_13
    move-object/from16 v16, v0

    goto/16 :goto_19

    :catch_19
    move-exception v0

    :goto_14
    move-object/from16 v3, v42

    move-object/from16 v65, v43

    move-object/from16 v66, v44

    move-object/from16 v67, v45

    move-object/from16 v68, v46

    goto/16 :goto_24

    :catchall_13
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    goto :goto_15

    :catch_1a
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    goto :goto_16

    :catch_1b
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_18

    :catchall_14
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v3, v28

    move-object/from16 v66, v38

    move-object/from16 v67, v39

    move-object/from16 v68, v40

    move-object/from16 v25, v41

    goto :goto_13

    :catchall_15
    move-exception v0

    move-object v2, v3

    :goto_15
    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_17

    :catch_1c
    move-exception v0

    move-object v2, v3

    :goto_16
    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_18

    :catchall_16
    move-exception v0

    move-object v2, v3

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    :goto_17
    move-object/from16 v3, v28

    move-object/from16 v66, v38

    move-object/from16 v67, v39

    move-object/from16 v68, v40

    move-object/from16 v25, v41

    goto/16 :goto_20

    :catch_1d
    move-exception v0

    move-object v2, v3

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    :goto_18
    move-object/from16 v3, v28

    move-object/from16 v66, v38

    move-object/from16 v67, v39

    move-object/from16 v68, v40

    move-object/from16 v25, v41

    goto/16 :goto_24

    :catchall_17
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    goto :goto_1a

    :catch_1e
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    goto :goto_1b

    :catch_1f
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_1d

    :catchall_18
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v3, v28

    move-object/from16 v66, v33

    move-object/from16 v67, v34

    move-object/from16 v68, v35

    move-object/from16 v25, v36

    goto/16 :goto_13

    :goto_19
    move-object/from16 v28, v3

    move-object/from16 v22, v8

    goto/16 :goto_22

    :catchall_19
    move-exception v0

    :goto_1a
    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_1c

    :catch_20
    move-exception v0

    :goto_1b
    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    goto :goto_1d

    :catchall_1a
    move-exception v0

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    :goto_1c
    move-object/from16 v3, v28

    move-object/from16 v66, v33

    move-object/from16 v67, v34

    move-object/from16 v68, v35

    move-object/from16 v25, v36

    goto :goto_20

    :catch_21
    move-exception v0

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    :goto_1d
    move-object/from16 v3, v28

    move-object/from16 v66, v33

    move-object/from16 v67, v34

    move-object/from16 v68, v35

    move-object/from16 v25, v36

    goto/16 :goto_24

    :catchall_1b
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_1e

    :catch_22
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_1f

    :catchall_1c
    move-exception v0

    move-object v9, v10

    :goto_1e
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v3, v28

    move-object/from16 v65, v29

    move-object/from16 v66, v30

    move-object/from16 v67, v31

    move-object/from16 v68, v32

    goto :goto_20

    :catch_23
    move-exception v0

    move-object v9, v10

    :goto_1f
    move-object/from16 v8, v22

    move-object/from16 v10, v26

    move-object/from16 v3, v28

    move-object/from16 v65, v29

    move-object/from16 v66, v30

    move-object/from16 v67, v31

    move-object/from16 v68, v32

    goto/16 :goto_24

    :catchall_1d
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v28

    move-object/from16 v65, v29

    move-object/from16 v66, v30

    move-object/from16 v67, v31

    move-object/from16 v68, v32

    move-object/from16 v73, v10

    move-object v10, v9

    move-object/from16 v9, v73

    :goto_20
    move-object/from16 v16, v0

    goto :goto_22

    :catch_24
    move-exception v0

    move-object/from16 v8, v22

    move-object/from16 v3, v28

    move-object/from16 v65, v29

    move-object/from16 v66, v30

    move-object/from16 v67, v31

    move-object/from16 v68, v32

    move-object/from16 v73, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto :goto_24

    :catchall_1e
    move-exception v0

    move-object v9, v10

    move-object/from16 v3, v17

    move-object/from16 v68, v18

    move-object/from16 v67, v19

    move-object/from16 v66, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    :goto_21
    move-object/from16 v16, v0

    move-object/from16 v28, v3

    :goto_22
    move-object v3, v10

    move-object/from16 v8, v25

    move-object/from16 v69, v65

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    :goto_23
    move-object v10, v9

    goto/16 :goto_2c

    :catch_25
    move-exception v0

    move-object v9, v10

    move-object/from16 v3, v17

    move-object/from16 v68, v18

    move-object/from16 v67, v19

    move-object/from16 v66, v20

    move-object/from16 v65, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    :goto_24
    move-object/from16 v16, v0

    .line 173
    :goto_25
    :try_start_2b
    sget-object v18, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_23

    move-object/from16 v22, v8

    :try_start_2c
    invoke-virtual/range {v18 .. v18}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v8

    iput v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    .line 174
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_22

    move-object/from16 v26, v10

    .line 175
    :try_start_2d
    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_21

    move-object/from16 v18, v2

    move-object/from16 v20, v9

    const/4 v9, 0x1

    :try_start_2e
    new-array v2, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v16, v2, v9
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_20

    :try_start_2f
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1f

    .line 178
    :try_start_30
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v18

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v6, :cond_11

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v10, v20

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v9}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v9, v22

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v25

    move-object/from16 v9, v65

    .line 198
    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, v66

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v67

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v68

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v8}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_26

    goto :goto_27

    :catch_26
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_26
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-void

    :catchall_1f
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v16, v8

    move-object/from16 v2, v18

    move-object/from16 v10, v20

    goto :goto_2a

    :goto_28
    move-object/from16 v18, v0

    goto :goto_29

    :catchall_20
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v16, v8

    move-object/from16 v2, v18

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    move-object/from16 v69, v65

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    goto :goto_28

    :goto_29
    move-object/from16 v25, v8

    move-object/from16 v22, v9

    move-object/from16 v8, v16

    move-object/from16 v16, v18

    goto :goto_2c

    :catchall_21
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v16, v8

    move-object v10, v9

    :goto_2a
    move-object/from16 v9, v22

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    move-object/from16 v69, v65

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object/from16 v8, v16

    goto :goto_2b

    :catchall_22
    move-exception v0

    move-object/from16 v28, v3

    move-object v3, v10

    move-object/from16 v8, v25

    move-object/from16 v69, v65

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v10, v9

    move-object/from16 v9, v22

    :goto_2b
    move-object/from16 v16, v0

    goto :goto_2c

    :catchall_23
    move-exception v0

    move-object/from16 v28, v3

    move-object v3, v10

    move-object/from16 v69, v65

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v25

    move-object/from16 v16, v0

    move-object/from16 v22, v9

    .line 178
    :goto_2c
    :try_start_31
    iget v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v6, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v6, :cond_12

    .line 187
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 190
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v23

    .line 192
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->uuid:Ljava/lang/String;

    move-object/from16 v4, v22

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v25

    move-object/from16 v4, v69

    .line 198
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadFile$AsyncTask;->resCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v70

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v71

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v72

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v2, v8}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    move-object v2, v0

    .line 205
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v4, v28

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :goto_2d
    throw v16
.end method
