.class public Lcom/beetalk/sdk/GuestRegistrationHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "GuestRegistrationHandler.java"


# direct methods
.method static bridge synthetic -$$Nest$mgrantTokenForGuest(Lcom/beetalk/sdk/GuestRegistrationHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method private getAuthResult(Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 5

    .line 95
    const-string v0, "error"

    .line 0
    const-string v1, "grant token failed, msg:"

    .line 96
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 105
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "open_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 109
    invoke-static {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->parseExchangeResponse(ILorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    if-nez v3, :cond_3

    .line 118
    invoke-static {v2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method private grantTokenForGuest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    iget-object v1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    .line 82
    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GuestRegistrationHandler;)V

    .line 81
    invoke-static {p1, p2, v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    return-void
.end method

.method static synthetic lambda$grantTokenForGuest$0()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfoSafely()Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->deleteGuestInfoSafely()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$grantTokenForGuest$1$com-beetalk-sdk-GuestRegistrationHandler(Lorg/json/JSONObject;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->getAuthResult(Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 84
    iget v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-static {}, Lcom/garena/pay/android/helper/UILoop;->getInstance()Lcom/garena/pay/android/helper/UILoop;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/helper/UILoop;->post(Ljava/lang/Runnable;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 2

    .line 33
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPassword()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance p1, Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/GuestAccountRegInfo;-><init>()V

    .line 43
    new-instance v0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler$1;-><init>(Lcom/beetalk/sdk/GuestRegistrationHandler;Lcom/beetalk/sdk/data/GuestAccountRegInfo;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/networking/service/AuthService;->registerGuest(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/beetalk/sdk/cache/PersistentCache;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 71
    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 74
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
