.class public Lcom/centauri/api/UnityPayHelper;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"


# static fields
.field public static final APPEXTENDS:Ljava/lang/String; = "appExtends"

.field public static final AP_CTI_RESP_PAY_SUCC_POST_ERR:Ljava/lang/String; = "4"

.field public static final AP_CTI_RESP_RESULT_CANCEL:Ljava/lang/String; = "1"

.field public static final AP_CTI_RESP_RESULT_ERROR:Ljava/lang/String; = "-1"

.field public static final AP_CTI_RESP_RESULT_NET_ERROR:Ljava/lang/String; = "3"

.field public static final AP_CTI_RESP_RESULT_OK:Ljava/lang/String; = "0"

.field public static final AP_CTI_RESP_RESULT_PARAM_ERROR:Ljava/lang/String; = "2"

.field public static final AUTOPAY:Ljava/lang/String; = "autoPay"

.field private static final CALLBACKGETINFO:Ljava/lang/String; = "CentauriGetInfoCallback"

.field private static final CALLBACKGETPRODUCT:Ljava/lang/String; = "CentauriGetLocalPriceCallback"

.field private static final CALLBACKINIT:Ljava/lang/String; = "CentauriInitCallback"

.field private static final CALLBACKLOGIN:Ljava/lang/String; = "CentauriLoginExpiredCallback"

.field private static final CALLBACKOBJ:Ljava/lang/String; = "CentauriPay.CallBackUtils"

.field private static final CALLBACKPAY:Ljava/lang/String; = "CentauriPayCallback"

.field private static final CALLBACKREPROVIDE:Ljava/lang/String; = "CentauriReProvidetCallback"

.field public static final CHANNELEXTRAS:Ljava/lang/String; = "channelExtras"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final CTI_RESP_RESULT_CANCEL:Ljava/lang/String; = "1"

.field public static final CTI_RESP_RESULT_ERROR:Ljava/lang/String; = "-1"

.field public static final CTI_RESP_RESULT_NET_ERROR:Ljava/lang/String; = "3"

.field public static final CTI_RESP_RESULT_OK:Ljava/lang/String; = "0"

.field public static final CTI_RESP_RESULT_PARAM_ERROR:Ljava/lang/String; = "2"

.field public static final CTI_RESP_RESULT_THRID_CHANNEL_ERROR:Ljava/lang/String; = "100"

.field public static final CURRENCYTYPE:Ljava/lang/String; = "currencyType"

.field public static final DRMINFO:Ljava/lang/String; = "drmInfo"

.field public static final GOODSZONEID:Ljava/lang/String; = "goodsZoneId"

.field public static final GWALLET:Ljava/lang/String; = "gwallet"

.field private static final LOGTAG:Ljava/lang/String; = "UnityPayHelper"

.field public static final NET_FAILED:Ljava/lang/String; = "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

.field public static final OFFERID:Ljava/lang/String; = "offerId"

.field public static final OFFICAL:Ljava/lang/String; = "os_offical"

.field public static final OPENID:Ljava/lang/String; = "openId"

.field public static final PAYCHANNEL:Ljava/lang/String; = "payChannel"

.field public static final PAYRESULT_CANCEL:I = -0x2

.field public static final PAYRESULT_ERROR:I = -0x1

.field public static final PAYRESULT_GW_CANCEL:I = -0x7d1

.field public static final PAYRESULT_NET_ERROR:I = -0x4

.field public static final PAYRESULT_PARAMERROR:I = 0x3

.field public static final PAYRESULT_PAY_SUCC_POST_ERR:I = -0xbb9

.field public static final PAYRESULT_PAY_SUCC_POST_NET_ERR:I = -0xbba

.field public static final PAYRESULT_SUCC:I = 0x0

.field public static final PAYRESULT_UNKOWN:I = 0x4

.field public static final PENKEY:Ljava/lang/String; = "openKey"

.field public static final PF:Ljava/lang/String; = "pf"

.field public static final PFKEY:Ljava/lang/String; = "pfKey"

.field public static final PRODUCTID:Ljava/lang/String; = "productId"

.field public static final RESID:Ljava/lang/String; = "resId"

.field public static final RES_CODE:Ljava/lang/String; = "resultCode"

.field public static final RES_MSG:Ljava/lang/String; = "resultMsg"

.field public static final RET_OK:I = 0x0

.field public static final SERVICECODE:Ljava/lang/String; = "serviceCode"

.field public static final SERVICENAME:Ljava/lang/String; = "serviceName"

.field public static final SESSIONID:Ljava/lang/String; = "sessionId"

.field public static final SESSIONTYPE:Ljava/lang/String; = "sessionType"

.field public static final ZONEID:Ljava/lang/String; = "zoneId"

.field public static mAppExtends:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCentauriSDKVersion()Ljava/lang/String;
    .locals 2

    .line 314
    const-string v0, "UnityPayHelper"

    const-string v1, "SdkVersion: 4.05.26"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "4.05.26"

    return-object v0
.end method

.method public static GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 342
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/centauri/api/UnityPayHelper$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/centauri/api/UnityPayHelper$2;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 324
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/centauri/api/UnityPayHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 489
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/centauri/api/UnityPayHelper$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Reprovide(Ljava/lang/String;)V
    .locals 2

    .line 351
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$4;

    invoke-direct {v1, p0}, Lcom/centauri/api/UnityPayHelper$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static SetLogEnable(Z)V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetLogEnable enable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPayHelper"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/centauri/oversea/api/CTIPayAPI;->setLogEnable(Z)V

    return-void
.end method

.method private static _GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 499
    invoke-static {p1, p2}, Lcom/centauri/api/UnityPayHelper;->getBaseRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;

    move-result-object p1

    if-nez p1, :cond_0

    .line 501
    const-string p0, "CentauriGetInfoCallback"

    const-string/jumbo p1, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    const-string p2, "CentauriPay.CallBackUtils"

    invoke-static {p2, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p1

    new-instance p2, Lcom/centauri/api/UnityPayHelper$10;

    invoke-direct {p2}, Lcom/centauri/api/UnityPayHelper$10;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/centauri/oversea/api/CTIPayAPI;->net(Ljava/lang/String;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    return-void
.end method

.method public static _GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mapProducts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_GetProductInfo"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "os_offical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p0

    new-instance v0, Lcom/centauri/api/UnityPayHelper$5;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$5;-><init>()V

    const-string v1, "gwallet"

    invoke-virtual {p0, v1, p1, v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V

    goto :goto_0

    .line 371
    :cond_0
    const-string v0, "os_toy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 373
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$6;

    invoke-direct {v1}, Lcom/centauri/api/UnityPayHelper$6;-><init>()V

    const-string/jumbo v2, "toy"

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static _GetProductInfoForGarena(Ljava/lang/String;)V
    .locals 3

    .line 627
    :try_start_0
    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0

    .line 628
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/centauri/api/UnityPayHelper$13;

    invoke-direct {v2}, Lcom/centauri/api/UnityPayHelper$13;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GetProductinfoForGarena"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static _Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 410
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/api/CTIPayAPI;->setEnv(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/centauri/oversea/api/CTIPayAPI;->setReleaseIDC(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",env: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnityPayHelper"

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "idcInfo: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Initialize message req: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_0
    invoke-static {p3}, Lcom/centauri/api/UnityPayHelper;->getInitReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p1

    sget-object p2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance p3, Lcom/centauri/api/UnityPayHelper$7;

    invoke-direct {p3}, Lcom/centauri/api/UnityPayHelper$7;-><init>()V

    invoke-virtual {p1, p2, p0, p3}, Lcom/centauri/oversea/api/CTIPayAPI;->init(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    return-void

    :catch_0
    move-exception p0

    .line 420
    sget-object p1, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "InitReq error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static _Pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 524
    invoke-static {p0, p1}, Lcom/centauri/api/UnityPayHelper;->getBaseRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;

    move-result-object p0

    if-nez p0, :cond_0

    .line 526
    const-string p0, "CentauriPayCallback"

    const-string/jumbo p1, "{\"resultCode\":AP_CTI_RESP_RESULT_PARAM_ERROR,\"resultMsg\":\"not support bizType\"}"

    const-string v0, "CentauriPay.CallBackUtils"

    invoke-static {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 530
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "payReq payChannel: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnityPayHelper"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "payReq ProductID: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v1, v1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object p1, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    const-string v0, "os_offical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    const-string v0, "gwallet"

    iput-object v0, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    .line 538
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$11;

    invoke-direct {v1}, Lcom/centauri/api/UnityPayHelper$11;-><init>()V

    invoke-virtual {p1, v0, p0, v1}, Lcom/centauri/oversea/api/CTIPayAPI;->pay(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTICallBack;)V

    return-void
.end method

.method private static _Reprovide(Ljava/lang/String;)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reprovideReq message req: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPayHelper"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p0

    new-instance v0, Lcom/centauri/api/UnityPayHelper$8;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/api/CTIPayAPI;->reProvide(Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/centauri/api/UnityPayHelper;->_Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2}, Lcom/centauri/api/UnityPayHelper;->_GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->_Reprovide(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/centauri/api/UnityPayHelper;->_Pay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->errAdapter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static centauriSdkGetGrnProductInfo(Ljava/lang/String;)V
    .locals 2

    .line 618
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$12;

    invoke-direct {v1, p0}, Lcom/centauri/api/UnityPayHelper$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static errAdapter(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0xbba

    const/16 v1, -0x7d1

    if-eq p0, v0, :cond_4

    const/16 v0, -0xbb9

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v0, -0x4

    if-eq p0, v0, :cond_2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 127
    const-string v0, "-1"

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "2"

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "3"

    goto :goto_0

    .line 115
    :cond_3
    const-string v0, "1"

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "4"

    :goto_0
    if-eq v1, p0, :cond_5

    const/16 v1, -0x7d0

    if-gt p0, v1, :cond_5

    const/16 v1, -0xbb8

    if-le p0, v1, :cond_5

    .line 130
    const-string v0, "100"

    :cond_5
    return-object v0
.end method

.method private static getBaseRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;
    .locals 3

    .line 587
    sget-object v0, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pay message req: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bizType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 592
    :try_start_0
    const-string v2, "CTIBaseRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CTIGameRequest"

    .line 593
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 595
    :cond_0
    const-string v2, "CTIGoodsRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getGoodsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGoodsRequest;

    move-result-object p0

    goto :goto_2

    .line 597
    :cond_1
    const-string v2, "CTISubscribeRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CTIMonthRequest"

    .line 598
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 601
    :cond_2
    const-string p0, "not support bizType"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 599
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getSubsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIMonthRequest;

    move-result-object p0

    goto :goto_2

    .line 594
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p0

    :catch_0
    move-exception p0

    .line 605
    sget-object p1, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "payReq error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/centauri/oversea/api/request/CTIGameRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGameRequest;-><init>()V

    .line 168
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->offerId:Ljava/lang/String;

    .line 170
    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->openId:Ljava/lang/String;

    .line 171
    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->openKey:Ljava/lang/String;

    .line 172
    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->sessionId:Ljava/lang/String;

    .line 173
    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->sessionType:Ljava/lang/String;

    .line 174
    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->zoneId:Ljava/lang/String;

    .line 175
    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->goodsZoneId:Ljava/lang/String;

    .line 176
    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->pf:Ljava/lang/String;

    .line 177
    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->pfKey:Ljava/lang/String;

    .line 178
    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->reserv:Ljava/lang/String;

    .line 181
    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->extras:Ljava/lang/String;

    .line 184
    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->country:Ljava/lang/String;

    .line 187
    :cond_2
    const-string p0, "currencyType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->currency_type:Ljava/lang/String;

    .line 190
    :cond_3
    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    .line 193
    :cond_4
    const-string p0, "payChannel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    .line 196
    :cond_5
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 200
    iput p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 202
    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resid error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_6
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 206
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 207
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method private static getGoodsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGoodsRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGoodsRequest;-><init>()V

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->offerId:Ljava/lang/String;

    .line 217
    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->openId:Ljava/lang/String;

    .line 218
    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->openKey:Ljava/lang/String;

    .line 219
    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->sessionId:Ljava/lang/String;

    .line 220
    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->sessionType:Ljava/lang/String;

    .line 221
    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->zoneId:Ljava/lang/String;

    .line 222
    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->goodsZoneId:Ljava/lang/String;

    .line 223
    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->pf:Ljava/lang/String;

    .line 224
    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->pfKey:Ljava/lang/String;

    .line 225
    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->reserv:Ljava/lang/String;

    .line 228
    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->extras:Ljava/lang/String;

    .line 231
    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->country:Ljava/lang/String;

    .line 234
    :cond_2
    const-string p0, "currencyType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->currency_type:Ljava/lang/String;

    .line 237
    :cond_3
    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    .line 240
    :cond_4
    const-string p0, "payChannel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    .line 243
    :cond_5
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 247
    iput p0, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resid error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_6
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 253
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 254
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method private static getInitReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/centauri/oversea/api/request/CTIGameRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGameRequest;-><init>()V

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->offerId:Ljava/lang/String;

    .line 139
    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->openId:Ljava/lang/String;

    .line 140
    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->openKey:Ljava/lang/String;

    .line 141
    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->sessionId:Ljava/lang/String;

    .line 142
    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->sessionType:Ljava/lang/String;

    .line 143
    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->zoneId:Ljava/lang/String;

    .line 144
    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->goodsZoneId:Ljava/lang/String;

    .line 145
    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->pf:Ljava/lang/String;

    .line 146
    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->pfKey:Ljava/lang/String;

    .line 148
    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->reserv:Ljava/lang/String;

    .line 150
    iget-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->reserv:Ljava/lang/String;

    sput-object p0, Lcom/centauri/api/UnityPayHelper;->mAppExtends:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_0
    const-string p0, ""

    sput-object p0, Lcom/centauri/api/UnityPayHelper;->mAppExtends:Ljava/lang/String;

    .line 154
    :goto_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->extras:Ljava/lang/String;

    .line 158
    :cond_1
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private static getSubsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIMonthRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIMonthRequest;-><init>()V

    .line 262
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->offerId:Ljava/lang/String;

    .line 264
    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->openId:Ljava/lang/String;

    .line 265
    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->openKey:Ljava/lang/String;

    .line 266
    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->sessionId:Ljava/lang/String;

    .line 267
    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->sessionType:Ljava/lang/String;

    .line 268
    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->zoneId:Ljava/lang/String;

    .line 269
    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->goodsZoneId:Ljava/lang/String;

    .line 270
    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->pf:Ljava/lang/String;

    .line 271
    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->pfKey:Ljava/lang/String;

    .line 272
    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->reserv:Ljava/lang/String;

    .line 275
    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->extras:Ljava/lang/String;

    .line 278
    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->country:Ljava/lang/String;

    .line 281
    :cond_2
    const-string p0, "currencyType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->currency_type:Ljava/lang/String;

    .line 284
    :cond_3
    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    .line 287
    :cond_4
    const-string p0, "payChannel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    .line 290
    :cond_5
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 294
    iput p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resid error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_6
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 300
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 301
    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    .line 305
    :cond_7
    const-string p0, "serviceCode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    .line 306
    const-string p0, "serviceName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    .line 307
    const-string p0, "autoPay"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AutoPay: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UnityPayHelper"

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
