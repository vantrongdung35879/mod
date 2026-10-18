.class public Lcom/centauri/http/centaurihttp/CTIHttpAns;
.super Ljava/lang/Object;
.source "CTIHttpAns.java"

# interfaces
.implements Lcom/centauri/http/core/Callback;


# instance fields
.field private centauriHttpCallback:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

.field private centauriHttpRequest:Lcom/centauri/http/centaurihttp/CTIHttpRequest;

.field protected errorMsg:Ljava/lang/String;

.field public exception:Ljava/lang/Exception;

.field protected msgErrorCode:Ljava/lang/String;

.field protected resultCode:I

.field protected resultData:Ljava/lang/String;

.field protected resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultCode:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultMsg:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->msgErrorCode:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->errorMsg:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpCallback:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    return-void
.end method

.method public static generateFakeCentauriHttpAns(ILjava/lang/String;)Lcom/centauri/http/centaurihttp/CTIHttpAns;
    .locals 2

    .line 182
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpAns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 183
    iput p0, v0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultCode:I

    .line 184
    iput-object p1, v0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultMsg:Ljava/lang/String;

    .line 185
    iput-object p1, v0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->errorMsg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpRequest:Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    return-object v0
.end method

.method protected getDecodeKey()Ljava/lang/String;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpRequest:Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getEncodeKey()Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v2, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgErrorCode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->msgErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultCode:I

    return v0
.end method

.method public getResultData()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultData:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onResponse(Lcom/centauri/http/core/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultData:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->exception:Ljava/lang/Exception;

    .line 95
    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getCentauriHttpResponseFromResponse(Lcom/centauri/http/core/Response;)Lcom/centauri/http/centaurihttp/CTIHttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, v0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultMsg:Ljava/lang/String;

    .line 99
    iget v1, v0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultCode:I

    iput v1, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->resultCode:I

    .line 100
    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->centauriBusinessResultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->errorMsg:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    iget-boolean v0, p1, Lcom/centauri/http/core/Response;->isStopped:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleStop(Lcom/centauri/http/core/Response;)Z

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpCallback:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 110
    invoke-interface {v0, p0}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleSuccess(Lcom/centauri/http/core/Response;)Z

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpCallback:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 117
    invoke-interface {v0, p0}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleFailure(Lcom/centauri/http/core/Response;)Z

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpCallback:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 125
    invoke-interface {v0, p0}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCentauriHttpRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpAns;->centauriHttpRequest:Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    return-void
.end method
