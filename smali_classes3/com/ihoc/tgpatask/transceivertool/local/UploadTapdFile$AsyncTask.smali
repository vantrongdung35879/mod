.class Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;
.super Ljava/lang/Object;
.source "UploadTapdFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTask"
.end annotation


# static fields
.field private static final TAPD_UPLOAD_DIR:Ljava/lang/String; = "TGPA/ENQ/tapdUpload"


# instance fields
.field private customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field private existLogFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private existPhotoFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private existVideoFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field private reportData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

.field private taskExecuteTime:J

.field private urlPath:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;",
            "Ljava/lang/String;",
            "Lcom/ihoc/tgpatask/VmpCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 158
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;

    invoke-direct {v0, p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    .line 175
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->urlPath:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    .line 177
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uuid:Ljava/lang/String;

    .line 178
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    .line 179
    iput-object p5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existLogFileList:Ljava/util/ArrayList;

    .line 180
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existPhotoFileList:Ljava/util/ArrayList;

    .line 181
    iput-object p7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existVideoFileList:Ljava/util/ArrayList;

    return-void
.end method

.method private parseGetFileTokenResp(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 440
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;

    invoke-direct {v1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;-><init>()V

    .line 441
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;->parseJson(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 446
    :cond_1
    iget p1, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;->code:I

    if-eqz p1, :cond_2

    return-object v0

    .line 450
    :cond_2
    iget-object p1, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;->data:Ljava/util/HashMap;

    const-string v2, "authCodes"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 451
    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$TaskConfig;->data:Ljava/util/HashMap;

    const-string v2, "cosHost"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 456
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_4

    goto :goto_0

    .line 459
    :cond_4
    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;

    invoke-direct {v2, v1, p1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_5
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private prepareCosInfo(Ljava/lang/String;JLjava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->tryGetCosInfo(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v0

    const-string p3, "remote server response: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v2}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->parseGetFileTokenResp(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;

    move-result-object p1

    return-object p1

    .line 373
    :cond_0
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get tapd cos token response null! times:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string p2, "get tapd cos token failed!"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private prepareTestFiles2Zip(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 358
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 359
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "TGPA/ENQ/tapdUpload"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const-string p2, "%s/%s/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 360
    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->compressMultiFiles(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private prepareUploadDir()Z
    .locals 3

    .line 349
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "TGPA/ENQ/tapdUpload"

    aput-object v2, v1, v0

    .line 348
    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkDirExsits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->clearFiles(Ljava/lang/String;I)Z

    return v0

    .line 354
    :cond_0
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private reportTaskExecuteResult2Game()V
    .locals 6

    const-string v0, "callback data for game data: "

    .line 498
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTaskShowToastAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    invoke-direct {p0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->showTaskExecuteResultByToast(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    .line 501
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 502
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 503
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 504
    const-string v4, "result"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v4, "data"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v2, "code"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v2, "msg"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v2, "param"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v4}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v2, "cmd"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v2, "localTaskApi"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v2, :cond_1

    .line 513
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :cond_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "callback data for game failed, callback is null!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "make report data for game exception!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showTaskExecuteResultByToast(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V
    .locals 2

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 469
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryGetCosInfo(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 381
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 382
    const-string v1, "filename"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string p1, "filesize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string p1, "md5"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;

    invoke-direct {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;-><init>(Ljava/util/HashMap;)V

    .line 386
    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;->generatePostParam()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 388
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string p2, "generate requestData failed"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object p3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {p1, p3, p2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_0
    sget-object p2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p4, "request remote server Data: %s"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance p2, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {p2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 p3, 0x3e8

    .line 396
    invoke-virtual {p2, p3}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    const/16 p3, 0xbb8

    .line 397
    invoke-virtual {p2, p3}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 398
    iget-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->urlPath:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tryUploadFiles2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uploadFile2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 407
    :cond_0
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload files to cos failed! times: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v0
.end method

.method private uploadFile2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z
    .locals 2

    .line 414
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v1, 0xbb8

    .line 415
    invoke-virtual {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 416
    invoke-virtual {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    .line 417
    iget-object v1, p2, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->url:Ljava/lang/String;

    iget-object p2, p2, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->accessCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 420
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cosServer resp is null"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {p1, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    return p2

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 424
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "upload file to cos ok"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 427
    :cond_1
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cosServer response: auth fail"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_AUTH_COS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {p1, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    return p2
.end method

.method private uploadLog2Cos()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 8

    .line 310
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existLogFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exsitLogFiles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uuid:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v0, "uploadLogFile_%s.zip"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existLogFileList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareTestFiles2Zip(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "compress log files to zip error! filename: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_COMPRESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "zip files error! filename: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v1

    .line 318
    :cond_0
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 319
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v6, "logZipName"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v6, "logZipSize"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v6, "logZipMD5"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 329
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareCosInfo(Ljava/lang/String;JLjava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 331
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get log cosinfo from server failed!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v3, "logZipCosPath"

    iget-object v4, v0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-direct {p0, v1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->tryUploadFiles2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload log zip file to cos try 3 times failed! ple manual upload it, path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_UPLOAD_TIMEOUT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string/jumbo v2, "upload log zip file to cos try 3 times failed!"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 342
    :cond_2
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 344
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string/jumbo v2, "upload log zip file to cos success!"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method private uploadPhoto2Cos()Z
    .locals 10

    .line 244
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existPhotoFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exsitPhotoFiles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uuid:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "uploadPhotoFile_%s.zip"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existPhotoFileList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareTestFiles2Zip(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "compress photo files to zip error!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 251
    :cond_0
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 252
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v8, "photoZipName"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v8, "photoZipSize"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v8, "photoZipMD5"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareCosInfo(Ljava/lang/String;JLjava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get photo cosinfo from server failed!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string v5, "photoZipCosPath"

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->tryUploadFiles2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload photo zip file to cos try 3 times failed! ple manual upload it, path: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 270
    :cond_2
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return v1
.end method

.method private uploadVideo2Cos()Z
    .locals 10

    .line 277
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existVideoFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exsitVideoFiles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uuid:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "uploadVideoFile_%s.zip"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existVideoFileList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareTestFiles2Zip(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "compress video files to zip error!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 284
    :cond_0
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 285
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string/jumbo v8, "videoZipName"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string/jumbo v8, "videoZipSize"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string/jumbo v8, "videoZipMD5"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareCosInfo(Ljava/lang/String;JLjava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 291
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get video cos info from server failed!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 294
    :cond_1
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    const-string/jumbo v5, "videoZipCosPath"

    iget-object v6, v0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-direct {p0, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->tryUploadFiles2Cos(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload video zip file to cos try 3 times failed! ple manual upload it, path: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 303
    :cond_2
    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return v1
.end method


# virtual methods
.method public reportTaskExecuteResult2Cloud()V
    .locals 5

    .line 525
    const-string v0, "localTaskApiTapd"

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportData:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 526
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v2, "cmd"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v2, "name"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v2, "param"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string/jumbo v2, "taskUuid"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v2, "invokeCode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v2, "executeCode"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v2, "executeTime"

    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 535
    const-string v3, "result"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v3, "executeResult"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 539
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report2SelfServer(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "report task execute result exception!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 11

    .line 186
    const-string v0, " , desc: "

    const-string v1, "Exception:%s"

    .line 0
    const-string v2, "execute task for tapd finished! total time: "

    const-string v3, "execute task for tapd finished! code: "

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->prepareUploadDir()Z

    move-result v8

    if-nez v8, :cond_0

    .line 189
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v10, "create enq tapd dir failed"

    invoke-direct {v8, v9, v10}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 227
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    .line 193
    :cond_0
    :try_start_2
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existLogFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 194
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v10, "no log file is existed!"

    invoke-direct {v8, v9, v10}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 227
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    .line 197
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uploadLog2Cos()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object v8

    .line 198
    iget-object v9, v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    if-eq v9, v10, :cond_2

    .line 199
    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 227
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    .line 202
    :cond_2
    :try_start_6
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "upload all log files to cos success!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existPhotoFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 204
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "no photo file is exist!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uploadPhoto2Cos()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "upload all photo files to cos success!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_4
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "upload all photo files to cos failed!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_3
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->existVideoFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_5

    .line 213
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "no video file is exist!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 215
    :cond_5
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->uploadVideo2Cos()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 216
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "upload all video files to cos success!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_6
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "upload all video files to cos failed!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_4
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v10, "execute tapd task success!"

    invoke-direct {v8, v9, v10}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 227
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :catchall_4
    move-exception v8

    goto :goto_7

    :catch_0
    move-exception v8

    .line 224
    :try_start_8
    new-instance v9, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 227
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void

    .line 227
    :goto_7
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    iput-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    .line 228
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 229
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Game()V

    .line 234
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->reportTaskExecuteResult2Cloud()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    .line 236
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    :goto_8
    throw v8
.end method
