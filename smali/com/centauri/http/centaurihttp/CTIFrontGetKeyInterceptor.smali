.class public Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;
.super Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;
.source "CTIFrontGetKeyInterceptor.java"


# static fields
.field private static final ERROR_FRONT_GET_KEY_PARAM:I = 0x4e27

.field private static final TAG:Ljava/lang/String; = "FrontGetKey"


# instance fields
.field private newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method

.method private static generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;
    .locals 2

    .line 169
    const-string v0, "FrontGetKey"

    const-string v1, "Front get key fail!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e27

    .line 171
    const-string v1, "Internal parameter error!"

    invoke-static {v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->generateFakeCentauriResponse(ILjava/lang/String;)Lcom/centauri/http/core/Response;

    move-result-object v0

    const/4 v1, 0x1

    .line 174
    iput-boolean v1, v0, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    return-object v0
.end method


# virtual methods
.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 6

    if-nez p1, :cond_0

    .line 40
    const-string p1, "FrontGetKey"

    const-string p2, "Null request, drop front get key!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v0, :cond_1

    .line 46
    const-string p1, "FrontGetKey"

    const-string v0, "Not centauri request, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 50
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 53
    iget-boolean v1, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needFrontGetKeyInterceptor:Z

    if-nez v1, :cond_2

    .line 54
    const-string p1, "FrontGetKey"

    const-string v0, "Request set no need to front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->hasEncodeParameters()Z

    move-result v1

    if-nez v1, :cond_3

    .line 60
    const-string p1, "FrontGetKey"

    const-string v0, "Current request has no encode parameter, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v1, :cond_4

    .line 65
    const-string p1, "FrontGetKey"

    const-string p2, "No network manager, drop front get key!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 71
    :cond_4
    invoke-virtual {v1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v1

    if-nez v1, :cond_5

    .line 73
    const-string p1, "FrontGetKey"

    const-string v0, "No get key request, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->isRequestInstanceAGetKeyRequest(Lcom/centauri/http/core/Request;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    const-string p1, "FrontGetKey"

    const-string v0, "Current request is get key request, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 83
    :cond_6
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    .line 84
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object p1

    if-nez p1, :cond_7

    .line 86
    const-string p1, "FrontGetKey"

    const-string p2, "No comm info getter, drop front get key!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    .line 92
    const-string p1, "FrontGetKey"

    const-string p2, "Null context, drop front get key!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 96
    :cond_8
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 98
    const-string p1, "FrontGetKey"

    const-string p2, "Cannot get offer id from request for front get key process!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 102
    :cond_9
    invoke-interface {p1}, Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 104
    const-string p1, "FrontGetKey"

    const-string p2, "Cannot get sdkVersion for front get key process!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 108
    :cond_a
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 110
    const-string p1, "FrontGetKey"

    const-string p2, "Cannot get open id from request for front get key process!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->generateInterruptResponseWhenParamError()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    .line 116
    :cond_b
    iget-object v4, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v4, v1, v3, v2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needChangeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 117
    const-string p1, "FrontGetKey"

    const-string v0, "First need change key return false, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 121
    :cond_c
    const-string v4, "FrontGetKey"

    const-string v5, "First need change key return true!"

    invoke-static {v4, v5}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v4, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->GET_KEY_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 133
    :try_start_0
    iget-object v5, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v5, v1, v3, v2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needChangeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 134
    const-string p1, "FrontGetKey"

    const-string v0, "Second need change key return false, drop front get key!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    monitor-exit v4

    return-object p2

    .line 138
    :cond_d
    const-string p1, "FrontGetKey"

    const-string v1, "Second need change key return true! Start get key!"

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p0, p1, v0}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->processGetKey(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->isResponseCentauriBusinessSuccess(Lcom/centauri/http/core/Response;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 145
    const-string v0, "FrontGetKey"

    const-string v1, "Front get key request success!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->notifyGetKeySuccess(Lcom/centauri/http/core/Response;)V

    .line 157
    monitor-exit v4

    return-object p2

    .line 148
    :cond_e
    const-string p2, "FrontGetKey"

    const-string v0, "Front get key request fail!"

    invoke-static {p2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {p2, p1}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Response;)V

    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p1, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    .line 155
    monitor-exit v4

    return-object p1

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
