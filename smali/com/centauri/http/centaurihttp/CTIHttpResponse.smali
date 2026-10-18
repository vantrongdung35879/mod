.class public Lcom/centauri/http/centaurihttp/CTIHttpResponse;
.super Ljava/lang/Object;
.source "CTIHttpResponse.java"


# static fields
.field private static final ERROR_NETWORK_CONTIMEOUT:I = 0x4e21

.field private static final ERROR_NETWORK_HTTPSCMWAP:I = 0x4e85

.field private static final ERROR_NETWORK_HTTPSTIMES:I = 0x4e84

.field private static final ERROR_NETWORK_HTTPSWIFIPROXY:I = 0x4e86

.field private static final ERROR_NETWORK_IOEXCEPTION:I = 0x4e25

.field private static final ERROR_NETWORK_READTIMEOUT:I = 0x4e22

.field private static final ERROR_NETWORK_SYSTEM:I = 0x4e20

.field private static final RESULT_CODE_ERROR_JSON:I = -0x65

.field private static final RESULT_CODE_JSON_CONSTRUCT_ERROR:I = -0x68

.field private static final RESULT_CODE_JSON_RET_EMPTY:I = -0x66

.field private static final RESULT_CODE_JSON_RET_NOT_NUM:I = -0x67

.field private static final RESULT_MSG_SYSTEM_BUSY:Ljava/lang/String; = "The system is busy, please try again later"


# instance fields
.field centauriBusinessResultCode:I

.field centauriBusinessResultMsg:Ljava/lang/String;

.field public exception:Ljava/lang/Exception;

.field httpResultCode:I

.field public resultData:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    const/16 v0, 0x64

    .line 59
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->httpResultCode:I

    .line 63
    const-string v0, "default_resultMsg"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->resultData:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p2, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->resultData:Ljava/lang/String;

    .line 75
    iget-object v0, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->exception:Ljava/lang/Exception;

    .line 76
    iget v0, p2, Lcom/centauri/http/core/Response;->resultCode:I

    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->httpResultCode:I

    .line 78
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0, p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->handleSuccess(Lcom/centauri/http/core/Response;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->hasException()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 83
    const-string p1, "CTIHttpResponse"

    const-string p2, "http-core, context null!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->handleException(Landroid/content/Context;Lcom/centauri/http/core/Response;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->isResultCodeOK()Z

    move-result p1

    if-nez p1, :cond_4

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Network error (error code"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->hasNotEmptyBody()Z

    move-result p1

    if-nez p1, :cond_5

    .line 93
    const-string p1, "Network connection returns empty results, please try again later"

    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method static generateFakeCentauriResponse(ILjava/lang/String;)Lcom/centauri/http/core/Response;
    .locals 2

    .line 212
    new-instance v0, Lcom/centauri/http/core/Response;

    invoke-direct {v0}, Lcom/centauri/http/core/Response;-><init>()V

    const/4 v1, 0x0

    .line 213
    iput-object v1, v0, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    const/16 v1, 0x64

    .line 217
    iput v1, v0, Lcom/centauri/http/core/Response;->resultCode:I

    .line 218
    invoke-static {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->generateFakeJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method private static generateFakeJson(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"ret\": \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\", \"msg\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCentauriBusinessResultCodeFromResponse(Lcom/centauri/http/core/Response;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-string p0, "ret"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static getCentauriHttpResponseFromResponse(Lcom/centauri/http/core/Response;)Lcom/centauri/http/centaurihttp/CTIHttpResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/http/core/Response;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 241
    :cond_1
    instance-of v1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;

    if-nez v1, :cond_2

    return-object v0

    .line 245
    :cond_2
    check-cast p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;

    return-object p0
.end method

.method private static getErrorCode(I)Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(100-100-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleException(Landroid/content/Context;Lcom/centauri/http/core/Response;)V
    .locals 3

    .line 101
    iget-object v0, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    .line 103
    instance-of v1, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_0

    .line 104
    const-string v0, "Network connection timed out, please check the network"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    const/16 v0, 0x4e21

    .line 105
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    goto :goto_0

    .line 107
    :cond_0
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    .line 108
    const-string v0, "The network response timed out, please check the network"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    const/16 v0, 0x4e22

    .line 109
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "The network connection is abnormal, please check the network"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    const/16 v0, 0x4e25

    .line 113
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "Network error, please try again later"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    const/16 v0, 0x4e20

    .line 117
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 120
    :goto_0
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->isHttpsResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget-object p2, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    :goto_1
    if-eqz p2, :cond_6

    .line 123
    invoke-static {p2}, Lcom/centauri/http/centaurihttp/CTIHttpModuleTools;->isTimeError(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x4e84

    .line 124
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your device system time is incorrect, please change it"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    .line 130
    :cond_3
    invoke-static {p2, p1}, Lcom/centauri/http/centaurihttp/CTIHttpModuleTools;->isWifiProxy(Ljava/lang/Throwable;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4e86

    .line 131
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your wifi has a proxy set up, please change it"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    .line 137
    :cond_4
    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_5

    const/16 v0, 0x4e85

    .line 140
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The system is busy, please try again later"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    .line 146
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    :cond_6
    return-void
.end method

.method private handleSuccess(Lcom/centauri/http/core/Response;)V
    .locals 4

    .line 158
    const-string v0, "The system is busy, please try again later"

    iget-object v1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    .line 168
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    const-string p1, "ret"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, -0x66

    .line 181
    iput p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 182
    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    return-void

    .line 187
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    const-string p1, "msg"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p1, -0x67

    .line 192
    iput p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 193
    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    return-void

    :catch_1
    move-exception p1

    .line 170
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p1, -0x65

    .line 173
    iput p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    .line 174
    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    return-void
.end method

.method static isResponseCentauriBusinessSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getCentauriBusinessResultCodeFromResponse(Lcom/centauri/http/core/Response;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
