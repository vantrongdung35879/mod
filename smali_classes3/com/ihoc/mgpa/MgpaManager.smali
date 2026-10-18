.class public Lcom/ihoc/mgpa/MgpaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAdiitionalMgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;


# instance fields
.field private engineType:Lcom/ihoc/mgpa/gradish/K;

.field private hasInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ihoc/mgpa/MgpaManager;->hasInit:Z

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->c:Lcom/ihoc/mgpa/gradish/K;

    iput-object v0, p0, Lcom/ihoc/mgpa/MgpaManager;->engineType:Lcom/ihoc/mgpa/gradish/K;

    .line 7
    const-string/jumbo v0, "tgpa"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->setSDKTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/ihoc/mgpa/MgpaCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/MgpaManager;->sAdiitionalMgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;

    return-object v0
.end method

.method private checkDeviceIsReal()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDeviceCheckFuncOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "CheckDevice: device check func is not open."

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/w;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/w;->a()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "CheckDevice: you need init first."

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/w;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/w;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/w;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveGameDataToCache(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/MgpaManager;->hasInit:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2
    const-string v0, "MultiGameData"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveGameDataInCacheMap(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    const-string p2, "SDK hasn\'t been initialized! Save multi game data to cache exception."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveGameDataInCacheMap(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public static setTuringShieldMonitorWrapper(Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f1;->a()Lcom/ihoc/mgpa/gradish/f1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ihoc/mgpa/gradish/f1;->a(Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;)V

    return-void
.end method


# virtual methods
.method public checkSdkCanWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableDebugMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setDebugMode(Z)V

    return-void
.end method

.method public getCurrentThreadTid()I
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    const-string v1, "TID: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, -0x1

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    const-string v2, "get tid exception!"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public getDataFromTGPA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "GetData: key: %s, value: %s"

    invoke-static {v4, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GetTid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "GetPredownPath2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "CheckDevice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "NetWorkStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "GetOptCfg2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "RichTapSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "GetPredownPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "GetBgPreDownloadFromCache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "SupportRefreshRate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "RichTapAmplitudeSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "ClientIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "GameAdaptionSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "RouterSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "SuperResolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "DualWifiState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "GetBgPreDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "TIMZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "OAID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "XID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "UID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "LID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "GameAdaptionCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "UniqueID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "CurrentRefreshRate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "GameAdaptionLicensePath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_19
    const-string v1, "FrameInterpolation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v1, "GameAdaptionVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v1, "WirelessDisplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v1, "GameAdaptionLicense"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v1, "LiveResult"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v1, "GetOptCfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v1, "PreDownloadServiceSwitch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v4, 0x0

    .line 120
    :goto_0
    const-string p1, "/test.bytes"

    const-string v1, "QEGA"

    const-string v5, "1"

    const-string v6, "0"

    const-string v7, "-1"

    packed-switch v4, :pswitch_data_0

    return-object v7

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/MgpaManager;->getCurrentThreadTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/gradish/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lcom/ihoc/mgpa/MgpaManager;->checkDeviceIsReal()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :pswitch_3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/x1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 235
    :pswitch_4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l0;->c()Lcom/ihoc/mgpa/gradish/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/l0;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 273
    :pswitch_5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 274
    :pswitch_6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/gradish/q0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 314
    :pswitch_7
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getBgPreDownloadFromCache()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    if-eqz p2, :cond_20

    .line 315
    const-string p1, "All"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 316
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getDeviceSupportRefreshRateSet(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 318
    :cond_20
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getDeviceSupportRefreshRate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 327
    :pswitch_9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 329
    :pswitch_a
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/C0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 336
    :pswitch_b
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean p1, p1, Lcom/ihoc/mgpa/gradish/L$b;->i0:Z

    if-eqz p1, :cond_21

    goto :goto_1

    :cond_21
    move-object v5, v6

    :goto_1
    return-object v5

    .line 337
    :pswitch_c
    sget-boolean p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouter:Z

    if-nez p1, :cond_22

    return-object v7

    .line 340
    :cond_22
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2

    :cond_23
    move-object v5, v6

    :goto_2
    return-object v5

    .line 391
    :pswitch_d
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/p1;->a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 395
    :pswitch_e
    sget-object p1, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/c0;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 396
    :pswitch_f
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getBgPreDownload()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 397
    :pswitch_10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/T0;->d()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_3

    :cond_24
    move-object v6, v7

    :goto_3
    return-object v6

    .line 409
    :pswitch_11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->c()V

    if-eqz p2, :cond_25

    .line 410
    const-string p1, "OnlyFromCache"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 411
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 413
    :cond_25
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_12
    if-eqz p2, :cond_26

    .line 414
    const-string p1, "WithoutInit"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 415
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 417
    :cond_26
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 418
    :pswitch_13
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 433
    :pswitch_14
    invoke-static {}, Lcom/ihoc/mgpa/gradish/Y;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 463
    :pswitch_15
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    if-eqz p1, :cond_28

    if-eqz p2, :cond_27

    .line 464
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 465
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    iget p1, p1, Lcom/ihoc/mgpa/gradish/H;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_27
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    iget p1, p1, Lcom/ihoc/mgpa/gradish/H;->b:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_28
    return-object v7

    .line 471
    :pswitch_16
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 492
    :pswitch_17
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 493
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getDeviceCurrentRefreshRate(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 555
    :pswitch_18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 563
    :pswitch_19
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/p1;->a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 564
    :pswitch_1a
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_29

    .line 565
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 566
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    iget p1, p1, Lcom/ihoc/mgpa/gradish/H;->d:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 568
    :cond_29
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    iget p1, p1, Lcom/ihoc/mgpa/gradish/H;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v7

    .line 604
    :pswitch_1b
    sget-object p1, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/c0;->g()Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_4

    :cond_2b
    move-object v5, v6

    :goto_4
    return-object v5

    .line 605
    :pswitch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 608
    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 609
    new-instance v2, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 611
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 614
    :cond_2c
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2d

    .line 615
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 616
    const-string p1, "-2"

    return-object p1

    .line 618
    :cond_2d
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->z:Lcom/ihoc/mgpa/gradish/H;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/H;->c:Ljava/lang/String;

    return-object p1

    :cond_2e
    return-object v7

    .line 623
    :pswitch_1d
    invoke-static {}, Lcom/ihoc/mgpa/gradish/Y;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_1e
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l0;->c()Lcom/ihoc/mgpa/gradish/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/l0;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 720
    :pswitch_1f
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 721
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string v0, "PreDownloadServiceSwitch result: %s"

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2f

    goto :goto_5

    :cond_2f
    move-object v7, p1

    :goto_5
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78acd822 -> :sswitch_1f
        -0x5facc479 -> :sswitch_1e
        -0x57ce1fb7 -> :sswitch_1d
        -0x578aaeb7 -> :sswitch_1c
        -0x55d04cdc -> :sswitch_1b
        -0x4c861620 -> :sswitch_1a
        -0x2c4f8aa9 -> :sswitch_19
        -0x2070a2f2 -> :sswitch_18
        -0x1380e0be -> :sswitch_17
        -0xdb2b734 -> :sswitch_16
        -0xc03c21b -> :sswitch_15
        0x12667 -> :sswitch_14
        0x14830 -> :sswitch_13
        0x15373 -> :sswitch_12
        0x24e66d -> :sswitch_11
        0x274ae2 -> :sswitch_10
        0x19e73b30 -> :sswitch_f
        0x22ef2d40 -> :sswitch_e
        0x24349e67 -> :sswitch_d
        0x2fbc9c26 -> :sswitch_c
        0x2ff74cd7 -> :sswitch_b
        0x39ff9a52 -> :sswitch_a
        0x4432c0f3 -> :sswitch_9
        0x4b78ab2c -> :sswitch_8
        0x4f7e5ca8 -> :sswitch_7
        0x5eed4e74 -> :sswitch_6
        0x6099b8c8 -> :sswitch_5
        0x6a14358b -> :sswitch_4
        0x6df847c0 -> :sswitch_3
        0x76cfb15e -> :sswitch_2
        0x7ebc803e -> :sswitch_1
        0x7eed5d79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x100b

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "4.1.0.7"

    return-object v0
.end method

.method public getVmpNumber()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hapticAmplitudeSupport()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/P;->f()I

    move-result v0

    return v0
.end method

.method public hapticPlay(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/P;->c(Ljava/lang/String;)V

    return-void
.end method

.method public hapticPlay(Ljava/lang/String;III)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/P;->b(Ljava/lang/String;III)V

    return-void
.end method

.method public hapticPlayWithFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/P;->b(Ljava/lang/String;)V

    return-void
.end method

.method public hapticPlayWithFile(Ljava/lang/String;III)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/P;->a(Ljava/lang/String;III)V

    return-void
.end method

.method public hapticStop()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/P;->c()V

    return-void
.end method

.method public hapticSupport()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/P;->e()I

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Init failed, activity is null, ple check!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/K;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/K;

    move-result-object p2

    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->setGameEngineType(Lcom/ihoc/mgpa/gradish/K;)V

    .line 10
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->setMainActivity(Landroid/app/Activity;)V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/MgpaManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 12
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "4.1.0.7"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "international"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Init start. sdk version name: %s_%s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Init warn, get activity is null, ple check!"

    invoke-static {v4, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ActivityUtil;->setMainActivity(Landroid/app/Activity;)V

    if-nez p1, :cond_1

    .line 19
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Init failed, context is null, ple check!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 22
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->init(Landroid/content/Context;)V

    .line 23
    iget-boolean p1, p0, Lcom/ihoc/mgpa/MgpaManager;->hasInit:Z

    if-eqz p1, :cond_2

    .line 24
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "SDK has been initialized, don\'t repeat to init!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 27
    :cond_2
    :try_start_2
    new-instance p1, Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p1}, Lcom/ihoc/mgpa/gradish/M0;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 29
    iput-boolean v3, p0, Lcom/ihoc/mgpa/MgpaManager;->hasInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/K;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/K;

    move-result-object p2

    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->setGameEngineType(Lcom/ihoc/mgpa/gradish/K;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/MgpaManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public init(Lcom/ihoc/mgpa/gradish/K;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->setGameEngineType(Lcom/ihoc/mgpa/gradish/K;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/MgpaManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ihoc/mgpa/MgpaManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public initForCocos()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->e:Lcom/ihoc/mgpa/gradish/K;

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/MgpaManager;->init(Lcom/ihoc/mgpa/gradish/K;)V

    return-void
.end method

.method public initForUE4()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->e:Lcom/ihoc/mgpa/gradish/K;

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/MgpaManager;->init(Lcom/ihoc/mgpa/gradish/K;)V

    return-void
.end method

.method public initForUFO()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->g:Lcom/ihoc/mgpa/gradish/K;

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/MgpaManager;->init(Lcom/ihoc/mgpa/gradish/K;)V

    return-void
.end method

.method public initForUnity()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->d:Lcom/ihoc/mgpa/gradish/K;

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/MgpaManager;->init(Lcom/ihoc/mgpa/gradish/K;)V

    return-void
.end method

.method public native nativeNotifySystemInfo(Ljava/lang/String;)V
.end method

.method public postGameMatchFPS(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G;->a()Lcom/ihoc/mgpa/gradish/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/G;->c(ILjava/util/ArrayList;)V

    return-void
.end method

.method public registerAdditionalCallback(Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/ihoc/mgpa/MgpaManager;->sAdiitionalMgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;

    return-void
.end method

.method public registerCallback()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameEngineType()Lcom/ihoc/mgpa/gradish/K;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/gradish/K;->d:Lcom/ihoc/mgpa/gradish/K;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->checkUnityPlayerSendMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Register callback by game object for platform Unity"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/MgpaManager$1;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/MgpaManager$1;-><init>(Lcom/ihoc/mgpa/MgpaManager;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register callback by jni start for platform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameEngineType()Lcom/ihoc/mgpa/gradish/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/MgpaManager$2;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/MgpaManager$2;-><init>(Lcom/ihoc/mgpa/MgpaManager;)V

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/MgpaManager;->registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V

    return-void
.end method

.method public registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Register callback start."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lcom/ihoc/mgpa/MgpaManager$3;

    invoke-direct {v0, p0, p1}, Lcom/ihoc/mgpa/MgpaManager$3;-><init>(Lcom/ihoc/mgpa/MgpaManager;Lcom/ihoc/mgpa/MgpaCallback;)V

    .line 31
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/I;->a(Lcom/ihoc/mgpa/MgpaCallback;)V

    .line 32
    invoke-static {}, Lcom/ihoc/mgpa/task/TransceiverHelper;->getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/task/TransceiverHelper;->registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V

    return-void
.end method

.method public registerCallbackForUnity()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Register VmpCallback start for Unity. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/ihoc/mgpa/MgpaManager;->registerCallback()V

    return-void
.end method

.method public reportGameUserInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Update: reportGameUserInfo start."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p1

    const-string v0, "DeviceBind"

    invoke-virtual {p1, v0, p2}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setLogAble(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enableLog(Z)V

    return-void
.end method

.method public updateGameInfo(IF)V
    .locals 5

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%.2f"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/ihoc/mgpa/MgpaManager;->updateGameInfo(ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 6
    new-array p1, v2, [F

    aput p2, p1, v4

    .line 7
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/ihoc/mgpa/MgpaManager;->updateGameInfo(I[F)V

    :cond_0
    return-void
.end method

.method public updateGameInfo(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/MgpaManager;->updateGameInfo(ILjava/lang/String;)V

    return-void
.end method

.method public updateGameInfo(ILjava/lang/String;)V
    .locals 3

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Update: int/string data, key: %d"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ihoc/mgpa/MgpaManager;->saveGameDataToCache(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 22
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->c(ILjava/lang/String;)V

    return-void
.end method

.method public updateGameInfo(I[F)V
    .locals 3

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSdkFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->b(I[F)V

    goto :goto_1

    .line 12
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Update: FPS/float[] sdk func or report is not open. "

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 15
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->startRouterReport:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Update: NET/float[] sdk func or report is not open. "

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->b(I[F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateGameInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 25
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Update: string/string data, key: %s"

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HEStop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "HEPlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "UseNonRichTap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ServerDomain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "FreshLatencyInMatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "DynamicSetting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "BgPreDownloadHotfix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "CleanPDFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "MapID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "AppID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "TIMZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "GPU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "FPS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "63"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "60"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "LocalTransceiverTapd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "Transceiver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_11
    const-string v1, "ReportAllLatencyInMatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_12
    const-string v1, "ChannelID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_13
    const-string v1, "LocalTransceiver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_14
    const-string v1, "OverseaDomain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_15
    const-string v1, "BgPreDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_16
    const-string v1, "FreshIpTuples"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_17
    const-string v1, "ReleaseIpTuples"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/MgpaManager;->saveGameDataToCache(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "SDK hasn\'t been initialized! Save k/v data to cache success, key: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_18
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 119
    :pswitch_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 120
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p2

    if-lez p1, :cond_19

    goto :goto_2

    :cond_19
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/ihoc/mgpa/gradish/P;->a(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void

    .line 146
    :pswitch_1
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/C0;->e(Ljava/lang/String;)V

    return-void

    .line 147
    :pswitch_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setDynamicSetting(Ljava/lang/String;)V

    .line 148
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/lang/String;)V

    return-void

    .line 188
    :pswitch_3
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->handleStrCommand(Ljava/lang/String;)V

    return-void

    .line 189
    :pswitch_4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q0;->d()V

    return-void

    .line 190
    :pswitch_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setMapID(Ljava/lang/String;)V

    return-void

    .line 196
    :pswitch_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setAppId(Ljava/lang/String;)V

    return-void

    .line 209
    :pswitch_7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/T0;->h()V

    return-void

    .line 210
    :pswitch_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setMobileGPUType(Ljava/lang/String;)V

    return-void

    .line 239
    :pswitch_9
    :try_start_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/ihoc/mgpa/gradish/s1;->c(ILjava/lang/String;)V

    .line 241
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-array v3, v0, [F

    aput p1, v3, v2

    .line 242
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/ihoc/mgpa/gradish/s1;->b(I[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 245
    :catch_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Perf_update: update fps exception. value\uff1a%s"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void

    .line 264
    :pswitch_a
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/gradish/P;->a(Ljava/lang/String;)V

    return-void

    .line 268
    :pswitch_b
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/P;->c()V

    return-void

    .line 269
    :pswitch_c
    invoke-static {}, Lcom/ihoc/mgpa/task/TransceiverHelper;->getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/task/TransceiverHelper;->handleLocalTaskTapdData(Ljava/lang/String;)V

    return-void

    .line 270
    :pswitch_d
    invoke-static {}, Lcom/ihoc/mgpa/task/TransceiverHelper;->getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/task/TransceiverHelper;->handleTaskData(Ljava/lang/String;)V

    return-void

    .line 321
    :pswitch_e
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v0, "netlatency"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/t1;->f(Ljava/util/HashMap;)V

    .line 324
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/C0;->d(Ljava/lang/String;)V

    return-void

    .line 325
    :pswitch_f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setGameChannelID(Ljava/lang/String;)V

    return-void

    .line 341
    :pswitch_10
    invoke-static {}, Lcom/ihoc/mgpa/task/TransceiverHelper;->getInstance()Lcom/ihoc/mgpa/task/TransceiverHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/task/TransceiverHelper;->handleLocalTaskData(Ljava/lang/String;)V

    return-void

    .line 342
    :pswitch_11
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/l;->c(Ljava/lang/String;)V

    return-void

    .line 395
    :pswitch_12
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->handleStrCommand(Ljava/lang/String;)V

    return-void

    .line 409
    :pswitch_13
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/C0;->b(Ljava/lang/String;)V

    return-void

    .line 412
    :pswitch_14
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->e()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72490147 -> :sswitch_17
        -0x4a1f0f20 -> :sswitch_16
        -0x419d955a -> :sswitch_15
        -0x36961881 -> :sswitch_14
        -0x34a751a7 -> :sswitch_13
        -0x316d8ec2 -> :sswitch_12
        -0x1c9bba31 -> :sswitch_11
        -0x1974757c -> :sswitch_10
        -0x7a07ce6 -> :sswitch_f
        0x6ba -> :sswitch_e
        0x6bd -> :sswitch_d
        0x110c9 -> :sswitch_c
        0x1148c -> :sswitch_b
        0x274ae2 -> :sswitch_a
        0x3c88edc -> :sswitch_9
        0x46ad757 -> :sswitch_8
        0x5aa829a -> :sswitch_7
        0xfe4baee -> :sswitch_6
        0x4cd71d31 -> :sswitch_5
        0x53ad4170 -> :sswitch_4
        0x61c88607 -> :sswitch_3
        0x69e65261 -> :sswitch_2
        0x7ecf41d1 -> :sswitch_1
        0x7ed0be9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public updateGameInfo(Ljava/lang/String;Ljava/util/HashMap;)V
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

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Update: string/Map data, key: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
