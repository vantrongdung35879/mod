.class Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;
.super Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;
.source "CTIEndGetKeyInterceptor.java"


# instance fields
.field private newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;)Lcom/centauri/http/centaurihttp/CTINetworkManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-object p0
.end method

.method private processChangeKeyAndNormalRequestAgain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 3

    .line 122
    sget-object v0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->GET_KEY_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v1, :cond_0

    .line 124
    monitor-exit v0

    return-object p2

    .line 127
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->processGetKey(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->isResponseCentauriBusinessSuccess(Lcom/centauri/http/core/Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->notifyGetKeySuccess(Lcom/centauri/http/core/Response;)V

    .line 136
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    .line 137
    invoke-virtual {p2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestSyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object p2

    .line 139
    invoke-static {p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getCentauriBusinessResultCodeFromResponse(Lcom/centauri/http/core/Response;)I

    move-result v1

    const/16 v2, 0x44b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x446

    if-eq v1, v2, :cond_1

    const/16 v2, 0x451

    if-ne v1, v2, :cond_2

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {v1, p1}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Request;)V

    .line 148
    :cond_2
    monitor-exit v0

    return-object p2

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {p1, v1}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Response;)V

    .line 155
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static responseHasNeedChangeKey(Ljava/lang/String;)Z
    .locals 2

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 176
    :cond_1
    const-string p0, "need_change_key"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public declared-synchronized intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 30
    monitor-exit p0

    return-object p2

    .line 34
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 35
    monitor-exit p0

    return-object p2

    .line 38
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 39
    iget-boolean v1, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needEndGetKeyInterceptor:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 40
    monitor-exit p0

    return-object p2

    .line 44
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 45
    monitor-exit p0

    return-object p2

    .line 49
    :cond_3
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->isRequestInstanceAGetKeyRequest(Lcom/centauri/http/core/Request;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 50
    monitor-exit p0

    return-object p2

    .line 53
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 55
    monitor-exit p0

    return-object p2

    .line 61
    :cond_5
    :try_start_5
    invoke-static {p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getCentauriBusinessResultCodeFromResponse(Lcom/centauri/http/core/Response;)I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x446

    if-eq v1, v0, :cond_6

    const/16 v0, 0x44b

    if-eq v1, v0, :cond_6

    const/16 v0, 0x451

    if-eq v1, v0, :cond_6

    goto :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {v0, p1}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Request;)V

    .line 100
    check-cast p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    invoke-direct {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->processChangeKeyAndNormalRequestAgain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 71
    :cond_7
    :try_start_6
    iget-object p1, p2, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->responseHasNeedChangeKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 74
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {p1, v0}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->clearCryptKeyAndKeyTimeForNeedChangeKey(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V

    .line 76
    new-instance p1, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;

    invoke-direct {p1, p0}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;-><init>(Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;)V

    .line 89
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Callback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_8
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method
