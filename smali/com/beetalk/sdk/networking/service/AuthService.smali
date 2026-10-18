.class public Lcom/beetalk/sdk/networking/service/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"


# static fields
.field public static final KEY_LOGIN_SCENARIO:Ljava/lang/String; = "login_scenario"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appPlatformBindCreate(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    .line 283
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    sget-object p2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 290
    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method private static exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/beetalk/sdk/AuthClient$Result;"
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {p2, p0}, Lcom/beetalk/sdk/networking/service/AuthService;->parseResult(ILjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeFacebookTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "facebook_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string p0, "redirect_uri"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 120
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthFacebookTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 3

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string p0, "redirect_uri"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthServerExchangeTokenUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p5}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGoogleTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-string v1, "google_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 174
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthGoogleTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeLineTokenSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    const-string v1, "line_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 186
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    const-string/jumbo p0, "version"

    const-string/jumbo p1, "v2.1"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthLineTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangePGSToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    const-string v1, "google_auth_code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 228
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthPGSTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xe

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeTwitterToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string/jumbo v1, "twitter_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo p0, "token_secret"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 215
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthTwitterTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeVkTokenSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    const-string/jumbo v1, "vk_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 200
    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string p0, "login_scenario"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthVkTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchange(Ljava/lang/String;Ljava/util/HashMap;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static getAppPlatformBindInfo(Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/GGPlatform$Callback;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 272
    invoke-virtual {p0, v0, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static grantGuestToken(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 7

    .line 68
    new-instance v6, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v6}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getTokenInspectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$appPlatformBindCreate$5(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string p0, "secondary_access_token"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAppPlatformBindCreateURL()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 289
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic lambda$appPlatformBindCreate$6(Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$bindGuestAccount$2(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string p0, "guest_access_token"

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getBindGuestAccountURL()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v2, 0x0

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getAppPlatformBindInfo$3(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object p0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAppPlatformBindInfoURL()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;

    invoke-static {p0, v1, v0, v2}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;

    return-object p0
.end method

.method static synthetic lambda$getAppPlatformBindInfo$4(Lcom/beetalk/sdk/GGPlatform$Callback;Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$grantGuestToken$1(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "uid"

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p0, "password"

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p0, "response_type"

    invoke-virtual {p2}, Lcom/beetalk/sdk/request/ResponseType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "client_type"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "client_id"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "client_secret"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string p0, "device_id"

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGuestGrantTokenURL()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    sget-object v8, Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;->JSON:Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 77
    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$recallPGSSessionToken$8(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/PGSAuthService;->recallPGSSessionToken(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-eq v0, v1, :cond_0

    .line 317
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 321
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No token found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$registerGuest$0(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "password"

    iget-object p0, p0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "client_type"

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "app_id"

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo p0, "source"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRegisterGuestAccountURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    sget-object v8, Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;->JSON:Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-virtual/range {v0 .. v8}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-interface {p1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;->onResultObtained(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$uploadPGSSessionId$7(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/SaveTokenResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/service/PGSAuthService;->uploadPGSSessionId(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/SaveTokenResponse;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->hasError()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->isFailure()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static logoutSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string v1, "access_token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string p0, "refresh_token"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getLogoutUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    return-void
.end method

.method private static parseResult(ILjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    .line 337
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 341
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0

    .line 343
    :cond_0
    const-string p1, "error"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 345
    invoke-static {p0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0

    .line 348
    :cond_1
    const-string p1, "open_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 350
    :try_start_1
    invoke-static {p0, v0}, Lcom/beetalk/sdk/data/AuthToken;->parseExchangeResponse(ILorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    .line 351
    invoke-static {p0}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 353
    :catch_1
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0

    .line 356
    :cond_2
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static recallPGSSessionToken(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string p0, "grant_type"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static registerGuest(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda8;-><init>(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static uploadPGSSessionId(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method
