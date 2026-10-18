.class public Lcom/tencent/gcloud/msdk/report/BeaconReport;
.super Ljava/lang/Object;
.source "BeaconReport.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/Report/ReportInterface;
.implements Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;


# static fields
.field private static final MASK_BEACON_ANDROID_ID_KEY:Ljava/lang/String; = "AndroidID"

.field private static final MASK_BEACON_CID_KEY:Ljava/lang/String; = "Cid"

.field private static final MASK_BEACON_IMEI_KEY:Ljava/lang/String; = "Imei"

.field private static final MASK_BEACON_IMSI_KEY:Ljava/lang/String; = "Imsi"

.field private static final MASK_BEACON_KEY:Ljava/lang/String; = "BEACON_APP_KEY_ANDROID"

.field private static final MASK_BEACON_MAC_ADDRESS_KEY:Ljava/lang/String; = "WiFiMacAddress"

.field private static final MASK_BEACON_MODEL_KEY:Ljava/lang/String; = "Model"

.field private static final MASK_BEACON_OAID_KEY:Ljava/lang/String; = "Oaid"

.field private static final MSDK_BEACON_CC_ENABLE:Ljava/lang/String; = "MSDK_BEACON_CC_ENABLE"

.field private static final MSDK_BEACON_CHANNEL:Ljava/lang/String; = "Beacon"

.field private static final MSDK_BEACON_DEBUG:Ljava/lang/String; = "Beacon"

.field private static final MSDK_BEACON_IS_COLLECT_MAC:Ljava/lang/String; = "MSDK_BEACON_IS_COLLECT_MAC"

.field private static final MSDK_BEACON_PAGE_PATH_ENABLE:Ljava/lang/String; = "MSDK_BEACON_PAGE_PATH_ENABLE"

.field private static final MSDK_BEACON_SENSOR_ENABLE:Ljava/lang/String; = "MSDK_BEACON_SENSOR_ENABLE"

.field private static final MSDK_BEACON_USER_AGREE_PRIVACY:Ljava/lang/String; = "UserAgreePrivacy"


# instance fields
.field private mCurrentAppKey:Ljava/lang/String;

.field private mOpenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    .line 65
    const-string v1, "Beacon Report init start"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->RegistSensitiveObserver(Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;)V

    .line 69
    const-string v1, "BEACON_APP_KEY_ANDROID"

    invoke-static {v1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setUserAgreePrivacy(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    .line 73
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->getCouldCollectSensitiveInfo()Z

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->setCouldCollectSensitiveInfo(Z)V

    .line 75
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->getSensitiveInfo()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->setSensitiveInfo(Ljava/lang/String;)V

    return-void
.end method

.method private getOpenId()Ljava/lang/String;
    .locals 3

    .line 197
    const-string v0, "getOpenId start"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/MSDKLogin;->getLoginRet()Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->openID:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->openID:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get new openId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 206
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method private resetUserId()V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOpenId while not the same : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 186
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mOpenId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setUserID(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 85
    const-string v0, "init start"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 88
    const-string v0, "Beacon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getDebugConfig(Ljava/lang/String;Z)Z

    move-result v2

    .line 90
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setLogAble(Z)V

    .line 92
    invoke-virtual {v3, v1}, Lcom/tencent/beacon/event/open/BeaconReport;->setCollectProcessInfo(Z)V

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Beacon Config AppKey: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconConfig;->builder()Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v4

    .line 96
    invoke-virtual {v4, v1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->setNeedInitQimei(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v4

    const-string v5, "MSDK_BEACON_PAGE_PATH_ENABLE"

    .line 97
    invoke-static {v5, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->pagePathEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v4

    const-string v5, "MSDK_BEACON_CC_ENABLE"

    .line 98
    invoke-static {v5, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->auditEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    const-string v4, "MSDK_BEACON_SENSOR_ENABLE"

    const/4 v5, 0x1

    .line 99
    invoke-static {v4, v5}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->bidEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->build()Lcom/tencent/beacon/event/open/BeaconConfig;

    move-result-object v1

    .line 103
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v4

    .line 104
    const-string v5, ""

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfigChannelID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/tencent/qimei/sdk/IQimeiSDK;->setChannelID(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v4

    .line 105
    invoke-interface {v4, v2}, Lcom/tencent/qimei/sdk/IQimeiSDK;->setLogAble(Z)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/tencent/qimei/sdk/IQimeiSDK;->init(Landroid/content/Context;)Z

    move-result v2

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "QimeiSDK init: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfigChannelID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/tencent/beacon/event/open/BeaconReport;->setChannelID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/tencent/beacon/event/open/BeaconReport;->setUserID(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v1}, Lcom/tencent/beacon/event/open/BeaconReport;->start(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/beacon/event/open/BeaconConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    const-string v2, "Beacon init error"

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_0
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconReport;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5.11.000"

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] reportEvent eventName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isRealTime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", params : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NULL"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extraJson : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 137
    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    const-string p1, "eventName is empty, return"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->resetUserId()V

    .line 144
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    .line 145
    const-string p5, "BEACON_APP_KEY_ANDROID"

    const-string v0, ""

    invoke-static {p5, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 146
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iput-object p5, p0, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    .line 148
    invoke-virtual {p1, p5}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withAppKey(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    .line 150
    :cond_2
    invoke-virtual {p1, p2}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p3}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 152
    sget-object p3, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    :goto_1
    invoke-virtual {p1, p3}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 153
    invoke-virtual {p1, p3}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withIsSucceed(Z)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p1

    .line 156
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/EventResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " report success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_4
    const-string p1, "beacon event record error, make an attend on beacon log"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setCouldCollectSensitiveInfo(Z)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeaconReport setCouldCollectSensitiveInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->setCollectProcessInfo(Z)V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] Beacon push token, not need"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setSensitiveInfo(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 215
    const-string v2, "Cid"

    const-string v3, "Imsi"

    const-string v4, "Oaid"

    const-string v5, "Model"

    const-string v6, "Imei"

    const-string v7, "WiFiMacAddress"

    const-string v8, "AndroidID"

    const-string v9, "UserAgreePrivacy"

    .line 0
    const-string v10, "Set Cid to Qimei:"

    const-string v11, "Set Imsi to Beacon and Qimei:"

    const-string v12, "Set Oaid to Beacon and Qimei:"

    const-string v13, "Set Model to Beacon and Qimei:"

    const-string v14, "Set Imei to Beacon and Qimei:"

    const-string v15, "Set WiFiMacAddress to Beacon and Qimei:"

    move-object/from16 v16, v10

    const-string v10, "Set AndroidID to Beacon and Qimei:"

    move-object/from16 v17, v2

    const-string v2, "Set UserAgreePrivacy to Qimei:"

    move-object/from16 v18, v11

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    const-string v3, "BeaconReport setSensitiveInfo:"

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 221
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    .line 224
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 225
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->getCouldCollectSensitiveInfo()Z

    move-result v11

    .line 226
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v20, v12

    .line 227
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 228
    iget-object v2, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v2

    if-eqz v11, :cond_2

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2, v9}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setUserAgreePrivacy(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    goto :goto_2

    :cond_3
    move-object/from16 v20, v12

    .line 231
    :goto_2
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setAndroidID(Ljava/lang/String;)V

    .line 235
    iget-object v8, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v8

    invoke-interface {v8}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setAndroidId(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    .line 238
    :cond_4
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setMac(Ljava/lang/String;)V

    .line 242
    iget-object v7, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setMAC(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    .line 245
    :cond_5
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setImei(Ljava/lang/String;)V

    .line 249
    iget-object v6, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setIMEI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    .line 252
    :cond_6
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 253
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setModel(Ljava/lang/String;)V

    .line 256
    iget-object v5, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setBuildModel(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    .line 259
    :cond_7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setOAID(Ljava/lang/String;)V

    .line 263
    iget-object v4, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setOAID(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    :cond_8
    move-object/from16 v2, v19

    .line 266
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 267
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setImsi(Ljava/lang/String;)V

    .line 270
    iget-object v0, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setIMSI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    :cond_9
    move-object/from16 v0, v17

    .line 273
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 274
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 276
    iget-object v2, v1, Lcom/tencent/gcloud/msdk/report/BeaconReport;->mCurrentAppKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->setCid(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method
