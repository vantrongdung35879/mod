.class public Lcom/tencent/gcloud/msdk/login/GarenaLogin;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/login/LoginInterface;
.implements Lcom/tencent/gcloud/msdk/core/login/AutoLoginInterface;
.implements Lcom/tencent/gcloud/msdk/core/login/LoginNotifyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;
    }
.end annotation


# instance fields
.field private final GARENA_LOGIN_REPORT_TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "GarenaLogin"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->GARENA_LOGIN_REPORT_TYPE:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  Garena Login initialize start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackRecallFailed(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V
    .locals 0

    .line 50
    invoke-static/range {p0 .. p6}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->notifyLoginParams(Ljava/lang/String;ILjava/lang/String;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V

    return-void
.end method

.method private static callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V
    .locals 3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] recall -> need login : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IIILjava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    const/16 p1, 0x65

    invoke-static {p1, v0, p0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method private static callbackRecallFailed(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 7

    .line 452
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->mapRecallErrorCodeToRetCode(Lcom/garena/pay/android/GGErrorCode;)I

    move-result v2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] callbackRecallFailed, garenaErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> msdkRetCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne v2, v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recall failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    new-instance v6, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "garena recall failed "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    const/4 v4, -0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    :goto_0
    if-nez p1, :cond_2

    .line 462
    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v5, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    const/16 p1, 0x65

    .line 458
    invoke-static {p1, v6, p0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method private static notifyLoginParams(Ljava/lang/String;ILjava/lang/String;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V
    .locals 13

    move-object v1, p0

    move v2, p1

    const-string v3, "[ "

    .line 484
    new-instance v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;

    invoke-direct {v4, p1}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;-><init>(I)V

    .line 485
    const-string v0, "Garena"

    iput-object v0, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->channel:Ljava/lang/String;

    const/16 v0, 0xa

    .line 486
    iput v0, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->channelID:I

    .line 489
    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->channelOpenID:Ljava/lang/String;

    .line 493
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x6f

    .line 495
    const-string/jumbo v8, "token"

    const-string/jumbo v9, "uid"

    if-eqz p6, :cond_1

    .line 498
    :try_start_1
    const-string v10, "access_token"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getUid()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    const-string v10, "0"

    :goto_0
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v10, "openid"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getOpenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v10, "platform"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPlatform()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    const-string v10, "login_platform"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getLoginPlatform()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string v10, "primary_platform"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPrimaryPlatform()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 505
    const-string v10, "create_time"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getCreateTime()J

    move-result-wide v11

    invoke-virtual {v0, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 506
    const-string v10, "expiry_time"

    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getExpiryTime()J

    move-result-wide v11

    invoke-virtual {v0, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 508
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 509
    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    invoke-virtual/range {p6 .. p6}, Lcom/beetalk/sdk/networking/model/RecallToken;->getOpenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v11, "channel_info"

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_1
    const/16 v10, 0x70

    if-eq v2, v10, :cond_5

    if-ne v2, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v10, 0x71

    if-ne v2, v10, :cond_6

    if-eqz p3, :cond_4

    .line 517
    const-string v10, "garena_guest_openid"

    invoke-virtual/range {p3 .. p3}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v10, "garena_guest_token"

    invoke-virtual/range {p3 .. p3}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v11

    invoke-virtual {v11}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v10, "is_sns_bind"

    invoke-virtual/range {p3 .. p3}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v11

    sget-object v12, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-eq v11, v12, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 521
    :cond_4
    const-string v10, "garena_sns_openid"

    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v10, "garena_sns_token"

    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v11

    invoke-virtual {v11}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 513
    :cond_5
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->pluginData:Ljava/lang/String;

    .line 535
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 536
    const-string/jumbo v0, "subChannel"

    move-object v11, p2

    invoke-virtual {v10, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ne v2, v7, :cond_b

    if-nez p6, :cond_9

    .line 548
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/MSDKLogin;->getLoginRet()Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 549
    iget-object v7, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->channelInfo:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] cur loginRet.channelInfo : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->channelInfo:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", garena return token : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v11

    invoke-virtual {v11}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", garena return uid : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->channelInfo:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 556
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 557
    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v8

    invoke-virtual {v8}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    move v6, v5

    goto :goto_5

    :catch_0
    move-exception v0

    .line 562
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] get channel info catch exception : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 565
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] loginRet is null or channelInfo is empty"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 569
    :cond_9
    :goto_5
    const-string v0, "autoLoginFlags"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 572
    invoke-static/range {p5 .. p5}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 573
    const-string v0, "autoLoginSource"

    move-object/from16 v5, p5

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    :cond_a
    const-string v0, "recallEnable"

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isRecallEnabled()Z

    move-result v5

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 578
    :cond_b
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->extraJson:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] pluginResult = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v0, 0x6d

    .line 593
    invoke-static {v0, v4, p0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] catch exception : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 583
    new-instance v3, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "catch exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3e8

    invoke-direct {v3, p1, v4, v4, v0}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IIILjava/lang/String;)V

    const/16 v0, 0x65

    .line 583
    invoke-static {v0, v3, p0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method private static recallLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] recallLogin invoked, recallEnable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isRecallEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasRecallSuccessFlag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->hasRecallSuccessFlag()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isRecallEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] recall disabled, skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 315
    const-string v0, "recall disabled"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->hasRecallSuccessFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] already recalled before on this device, skip recall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 321
    const-string v0, "already recalled before on this device"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] activity is null, can not recall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 326
    const-string v0, "activity is null, can not recall"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->callbackNeedLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->initialize(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] step0 : GGPlatform.hasPGSSignedIn start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->hasPGSSignedIn(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method


# virtual methods
.method public autoLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] loginType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subChannel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", login with permissions : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->permissions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] subChannel is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    const-string/jumbo v2, "subChannel is empty"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    const/16 v1, 0x65

    invoke-static {v1, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    const/4 v2, 0x0

    const-string v3, "local"

    invoke-direct {v1, p1, v2, v3}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] can not get last garena session, try PGS recall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 299
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->recallLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V

    :goto_0
    return-void
.end method

.method public isSetNoNeedLogoutBeforeAction(ILjava/lang/String;)Z
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] isSetNoNeedLogoutBeforeAction for methodID : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 p2, 0x70

    if-eq p2, p1, :cond_1

    const/16 p2, 0x71

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public login(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 13

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] loginType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subChannel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", login with permissions = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->permissions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getLoginPlatformByChannel(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] subChannel is same as last session, no need to create new session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :cond_1
    const/4 v5, 0x1

    :goto_0
    const/16 v6, 0x65

    const/16 v7, 0x71

    if-eqz v5, :cond_c

    .line 136
    new-instance v5, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v5

    .line 138
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v5

    sget-object v8, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 139
    invoke-virtual {v5, v8}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v5

    .line 141
    iget-object v8, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "Google"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_1
    const-string v2, "Garena"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    const-string v2, "Facebook"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_3
    const-string v2, "Guest"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v2, "Email"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "Line"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] unknown sub channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget v8, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown sub channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v9, 0xb

    const/16 v11, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-static {v6, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 160
    :pswitch_0
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    const v2, 0xdba6

    .line 161
    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    goto :goto_3

    .line 143
    :pswitch_1
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    goto :goto_3

    .line 147
    :pswitch_2
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/beetalk/sdk/facebook/FBClient;->clearSession(Landroid/content/Context;)V

    .line 148
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    const v2, 0xdba3

    .line 149
    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    .line 150
    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->permissions:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->permissions:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 151
    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->permissions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 152
    array-length v3, v2

    if-lez v3, :cond_8

    .line 153
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/beetalk/sdk/SDKConstants;->setFacebookLoginPermissions(Ljava/util/List;)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] set facebook permissions : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 164
    :pswitch_3
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    goto :goto_3

    .line 167
    :pswitch_4
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    const v2, 0xdba9

    .line 168
    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    goto :goto_3

    .line 171
    :pswitch_5
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v5, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    .line 183
    :cond_8
    :goto_3
    iget v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    if-ne v2, v7, :cond_b

    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_9

    goto :goto_4

    .line 198
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] clear for GGGetSessionForBind"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;

    invoke-direct {v1, p0, p1, v5, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession$Builder;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->clearThirdPartySession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    goto/16 :goto_5

    .line 187
    :cond_a
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] clear for GGGetAppSessionForBind"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;

    invoke-direct {v1, p0, v5, p1, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/beetalk/sdk/GGLoginSession$Builder;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->clearAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    goto :goto_5

    .line 211
    :cond_b
    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 213
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    invoke-direct {v1, p1, v4}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_5

    .line 217
    :cond_c
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    if-ne v0, v7, :cond_d

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] sub channel is same as last session!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget v8, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sub channel is same as last session!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 222
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v9, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 219
    invoke-static {v6, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_d
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    invoke-direct {v1, p1, v4}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x242414 -> :sswitch_5
        0x3ff5b7c -> :sswitch_4
        0x41f3db8 -> :sswitch_3
        0x217bfee6 -> :sswitch_2
        0x7eb45720 -> :sswitch_1
        0x7f784a59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logout(Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] loginType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->methodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subChannel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->subChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraJson : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->subChannel:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$3;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->clearThirdPartySession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    :goto_0
    return-void
.end method

.method public onAfterAutoLoginFailed(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onAfterAutoLoginFailed invoked by core, retCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thirdCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->thirdCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thirdMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", force clearSession start"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 443
    new-instance p2, Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;

    invoke-direct {p2, p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V

    invoke-static {p2}, Lcom/beetalk/sdk/GGLoginSession;->clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    return-void
.end method

.method public onAfterLoginSuccess(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] onAfterLoginSuccess invoked by core, saveTokenEnable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isSaveTokenEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isSaveTokenEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] saveToken disabled, skip saveTokenToPGS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 394
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v2, :cond_1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] current session is Guest, skip saveTokenToPGS to avoid being recalled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 399
    :cond_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] activity is null, skip saveTokenToPGS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_2
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->initialize(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] step0 : GGPlatform.hasPGSSignedIn start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->hasPGSSignedIn(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method
