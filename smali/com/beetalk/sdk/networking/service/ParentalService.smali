.class public Lcom/beetalk/sdk/networking/service/ParentalService;
.super Ljava/lang/Object;
.source "ParentalService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePostRequest(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    const/4 v6, 0x0

    sget-object v8, Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;->FORM:Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->parse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    .line 121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method

.method public static requestBindInfoOTP(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/GetOTPResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getBindInfoOTPUrl()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p0, "mobile_no"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p0, "region"

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 50
    invoke-static {v0, v1, p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->makePostRequest(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/GetOTPResponse;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/GetOTPResponse;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveBoundPhoneNumber(Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRetrieveBoundPhoneNumURL()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->parse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 111
    new-instance v0, Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static unBindPhoneNum(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getUnBindPhoneNumUrl()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string p0, "mobile_no"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo p0, "sms_otp"

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 95
    invoke-static {v0, v1, p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->makePostRequest(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;

    move-result-object p0

    return-object p0
.end method

.method public static updatePhoneNum(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getUpdatePhoneNumUrl()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string p0, "mobile_no"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo p0, "sms_otp"

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 80
    invoke-static {v0, v1, p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->makePostRequest(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;

    move-result-object p0

    return-object p0
.end method

.method public static verifyBindInfoOTP(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getBindInfoVerifyOTPUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string p0, "mobile_no"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo p0, "sms_otp"

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 65
    invoke-static {v0, v1, p0}, Lcom/beetalk/sdk/networking/service/ParentalService;->makePostRequest(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;

    move-result-object p0

    return-object p0
.end method
