.class Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;
.super Ljava/lang/Object;
.source "CTIGetKeyInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Interceptor;


# static fields
.field static final GET_KEY_LOCK:Ljava/lang/Object;

.field static final RET_DECRYPT_FAIL:I = 0x451

.field static final RET_SECKEYERROR:I = 0x446

.field static final RET_SECKEYVALID:I = 0x44b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;->GET_KEY_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCryptKeyAndKeyTimeForNeedChangeKey(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 196
    :cond_3
    invoke-interface {v1}, Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 201
    :cond_4
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 206
    :cond_5
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 211
    :cond_6
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->clearCryptKeyAndKeyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Request;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 130
    :cond_1
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v0, :cond_2

    return-void

    .line 134
    :cond_2
    check-cast p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 136
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 146
    :cond_4
    invoke-interface {v1}, Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 151
    :cond_5
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 156
    :cond_6
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    .line 161
    :cond_7
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->isEncodeWithSecretKey()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 162
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->clearAllKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_8
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->isEncodeWithCryptKey()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 164
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->clearCryptKeyAndKeyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method static clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Response;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/centauri/http/core/Response;->request()Lcom/centauri/http/core/Request;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->isRequestInstanceAGetKeyRequest(Lcom/centauri/http/core/Request;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 100
    :cond_3
    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->getCentauriBusinessResultCodeFromResponse(Lcom/centauri/http/core/Response;)I

    move-result p1

    const/16 v1, 0x44b

    if-eq p1, v1, :cond_4

    const/16 v1, 0x446

    if-eq p1, v1, :cond_4

    const/16 v1, 0x451

    if-ne p1, v1, :cond_5

    .line 104
    :cond_4
    invoke-static {p0, v0}, Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Request;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method processGetKey(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;
    .locals 3

    .line 31
    new-instance v0, Lcom/centauri/http/core/Response;

    invoke-direct {v0}, Lcom/centauri/http/core/Response;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestSyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->isResponseCentauriBusinessSuccess(Lcom/centauri/http/core/Response;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 51
    :cond_2
    invoke-virtual {p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p2, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needUseBaseKeyToEncode:Z

    .line 59
    invoke-virtual {p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestSyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1
.end method
