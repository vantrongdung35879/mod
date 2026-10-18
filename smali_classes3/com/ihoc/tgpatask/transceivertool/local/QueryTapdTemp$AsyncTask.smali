.class Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;
.super Ljava/lang/Object;
.source "QueryTapdTemp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTask"
.end annotation


# instance fields
.field private customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field private localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field private paramEncrypt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseData:Ljava/lang/String;

.field private taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

.field private taskExecuteTime:J

.field private urlPath:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->paramEncrypt:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->urlPath:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    .line 82
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->uuid:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-void
.end method

.method private static getPubKey()Ljava/lang/String;
    .locals 1

    .line 196
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyN9OexXciliWw+i91RbTh/OWL1Jp4p842R+h8eTJfp/3f78sKbggAJv3pcuQRmsOj5f+8MqvlCuCrykySN/S4ugKiSEHveZS7oGAsRSLW9aPpYNe9xcfCB7CegJJop9VOq6mbLSDBlF0maHCS0eszDFTY5joKnVycZ7gW0KDryQIDAQAB"

    return-object v0
.end method

.method private getTempsFromCos()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 121
    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->tryGetCosInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->parseResponse()Z

    move-result v2

    const-string v3, "remote server response: %s"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 129
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v2, "Request cos succeed!"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 132
    :cond_0
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    :cond_1
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get tapd cos token response null! times:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v2, "Request cos failed!"

    invoke-direct {v0, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseResponse()Z
    .locals 5

    .line 142
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "remote server response: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v4
.end method

.method private static prepareReportKey()Ljava/lang/String;
    .locals 5

    .line 184
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    const/16 v3, 0x24

    .line 189
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 190
    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reportTaskExecuteResult2Game()V
    .locals 8

    .line 214
    const-string v0, "data"

    .line 0
    const-string v1, "reportTaskExecuteResult2Game jsonData:"

    .line 214
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getLocalTaskShowToastAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    invoke-direct {p0, v2}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->showTaskExecuteResultByToast(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    .line 217
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 219
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 220
    const-string v5, "result"

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v6, v6, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v3, "code"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v3, "msg"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v3, "param"

    new-instance v5, Lorg/json/JSONArray;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->responseData:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v0, "cmd"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v0, "localTaskApi"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->customPipeCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "make report data for game exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showTaskExecuteResultByToast(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V
    .locals 2

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryGetCosInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 153
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    const-string v2, "param"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    const-string v3, "cmd"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->localParam:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    const-string v3, "appid"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->prepareReportKey()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->getPubKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/RSAUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/AESUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->paramEncrypt:Ljava/util/HashMap;

    const-string v3, "encrypted_key"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->paramEncrypt:Ljava/util/HashMap;

    const-string v2, "event_data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->paramEncrypt:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;-><init>(Ljava/util/HashMap;)V

    .line 167
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/CustomPipeReq;->generatePostParam()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "generate requestData failed"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "request remote server Data: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;

    invoke-direct {v1}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;-><init>()V

    const/16 v2, 0x3e8

    .line 177
    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    const/16 v2, 0xbb8

    .line 178
    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    .line 179
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->urlPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 88
    const-string v0, " , desc: "

    const-string v1, "Exception:%s"

    .line 0
    const-string v2, "execute task for tapd finished! total time: "

    const-string v3, "execute task for tapd finished! code: "

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->getTempsFromCos()Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    move-result-object v8

    .line 91
    iget-object v9, v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    if-eq v9, v10, :cond_0

    .line 92
    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    .line 103
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 104
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->reportTaskExecuteResult2Game()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_2
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "pass parameters to cos success!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v8, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    const-string v10, "execute tapd template query task successfully!"

    invoke-direct {v8, v9, v10}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    .line 103
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 104
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->reportTaskExecuteResult2Game()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 110
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v8

    .line 99
    :try_start_4
    new-instance v9, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;-><init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    .line 103
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 104
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->reportTaskExecuteResult2Game()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 110
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    .line 102
    :goto_3
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    iput-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    .line 103
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 104
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->taskExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/QueryTapdTemp$AsyncTask;->reportTaskExecuteResult2Game()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 110
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :goto_4
    throw v8
.end method
