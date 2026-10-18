.class public Lcom/ihoc/mgpa/toolkit/model/DataRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;
    }
.end annotation


# static fields
.field private static final DYNAMIC_SETTING:Ljava/lang/String; = "dynamic_setting"

.field private static final FPS_LEVEL:Ljava/lang/String; = "fps_level"

.field private static final FRAME_MISS_AVG_STR:Ljava/lang/String; = "avg_frame_miss"

.field private static final FRAME_MISS_STR:Ljava/lang/String; = "6"

.field private static final KEY_INSTALL_SIGN:Ljava/lang/String; = "install_sign"

.field private static final NET_LATENCY_AVG_STR:Ljava/lang/String; = "avg_net_latency"

.field private static final NET_LATENCY_STR:Ljava/lang/String; = "12"

.field private static final RECORDING_STR:Ljava/lang/String; = "13"

.field private static final ROLE_STATUS_STR:Ljava/lang/String; = "16"

.field private static final USERS_COUNT_STR:Ljava/lang/String; = "11"

.field private static final VENDOR_TEMP_LEVEL:Ljava/lang/String; = "temp_level"

.field private static apmKey:Ljava/lang/String; = null

.field private static app_id:Ljava/lang/String; = ""

.field private static channelID:Ljava/lang/String; = null

.field private static cloudFuncOpenList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static currentEffectLevel:Ljava/lang/String; = null

.field public static currentMapID:Ljava/lang/String; = null

.field public static currentModelLevel:Ljava/lang/String; = null

.field private static currentRecording:Ljava/lang/String; = null

.field public static currentRoleOutline:Ljava/lang/String; = null

.field private static currentRoleStaus:Ljava/lang/String; = null

.field public static currentSceneId:Ljava/lang/String; = null

.field public static currentTargetFPS:Ljava/lang/String; = null

.field public static currentTransformSceneID:Ljava/lang/String; = null

.field public static currentUserCount:Ljava/lang/String; = null

.field public static dirtyFpsStatus:Z = false

.field private static dynamicSetting:Ljava/lang/String; = null

.field private static fpsLevel:Ljava/lang/String; = null

.field private static isDebugMode:Z = false

.field private static isReportThreadSuppend:Z = false

.field public static isSimulator:Z = false

.field private static lastMapID:Ljava/lang/String; = null

.field public static mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRomVersion:Ljava/lang/String; = null

.field private static mSwVersion:Ljava/lang/String; = null

.field private static main_version_code:Ljava/lang/String; = ""

.field private static matchMark:I = 0x0

.field private static matchStartTime:J = 0x0L

.field private static matchState:Ljava/lang/String; = null

.field public static mobileGPUType:Ljava/lang/String; = null

.field private static open_id:Ljava/lang/String; = ""

.field public static optimizeConfig:Ljava/lang/String; = null

.field public static samsungSceneSdkOpen:Z = false

.field public static samsungSharedMemoryOpen:Z = false

.field private static sceneStartTime:J = 0x0L

.field private static sub_version_code:Ljava/lang/String; = ""

.field private static supportSceneArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static threadMatchRules:Ljava/lang/String;

.field public static vendorServerIsOk:Z

.field public static vendorServerVersion:Ljava/lang/String;

.field private static vendorStrategySupport1:I

.field private static vendorStrategySupport2:I

.field private static vendorStrategySupport3:I

.field private static vendorStrategySupport4:I

.field private static vendorStrategySupport5:I

.field private static vendorStrategySupport6:I

.field private static vendorStrategySupport7:I

.field private static vendorStrategySupport8:I

.field private static vendorStrategySupportStr:Ljava/lang/String;

.field private static vendorTempLevel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    const-string v0, "1"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    .line 131
    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRoleStaus:Ljava/lang/String;

    .line 145
    const-string v0, "0"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRecording:Ljava/lang/String;

    .line 162
    const-string v1, ""

    sput-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    .line 169
    sput-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRoleOutline:Ljava/lang/String;

    .line 176
    sput-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentModelLevel:Ljava/lang/String;

    .line 183
    sput-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentEffectLevel:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 191
    sput-wide v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->sceneStartTime:J

    .line 204
    const-string v2, "-1"

    sput-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    .line 219
    sput-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTransformSceneID:Ljava/lang/String;

    const/4 v3, 0x0

    .line 254
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchState:Ljava/lang/String;

    const/4 v4, 0x0

    .line 277
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchMark:I

    .line 283
    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    .line 284
    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->lastMapID:Ljava/lang/String;

    .line 299
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorTempLevel:Ljava/lang/String;

    .line 309
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->fpsLevel:Ljava/lang/String;

    .line 319
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dynamicSetting:Ljava/lang/String;

    .line 329
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->apmKey:Ljava/lang/String;

    .line 357
    sput-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->channelID:Ljava/lang/String;

    .line 363
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSimulator:Z

    .line 375
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerIsOk:Z

    .line 385
    const-string v0, "0|0|0|0|0|0|0|0"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupportStr:Ljava/lang/String;

    .line 404
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport1:I

    .line 405
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport2:I

    .line 406
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport3:I

    .line 407
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport4:I

    .line 408
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport5:I

    .line 409
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport6:I

    .line 410
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport7:I

    .line 411
    sput v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport8:I

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->supportSceneArr:Ljava/util/ArrayList;

    .line 494
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dirtyFpsStatus:Z

    .line 505
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mobileGPUType:Ljava/lang/String;

    .line 515
    sput-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->optimizeConfig:Ljava/lang/String;

    const/4 v0, 0x1

    .line 525
    sput-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportThreadSuppend:Z

    .line 535
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRomVersion:Ljava/lang/String;

    .line 541
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mSwVersion:Ljava/lang/String;

    .line 548
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugMode:Z

    .line 559
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerVersion:Ljava/lang/String;

    .line 562
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->samsungSceneSdkOpen:Z

    .line 565
    sput-boolean v4, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->samsungSharedMemoryOpen:Z

    .line 567
    sput-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->threadMatchRules:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSceneSupport(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->supportSceneArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getApmKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->apmKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getCloudFuncOpenListStr()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    const-string/jumbo v1, "|"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ItegerArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentTransformSceneID()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTransformSceneID:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTransformSceneID:Ljava/lang/String;

    return-object v0
.end method

.method public static getDirtyFpsStatus()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dirtyFpsStatus:Z

    return v0
.end method

.method public static getDynamicSetting()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dynamicSetting:Ljava/lang/String;

    return-object v0
.end method

.method public static getFpsLevel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->fpsLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static getGameChannelID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->channelID:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallSign()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    const-string v1, "install_sign"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x20

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->getRandom(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getMainVersionCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->main_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public static getMapID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    return-object v0
.end method

.method public static getMatchMark()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchMark:I

    return v0
.end method

.method public static getMatchStartTime()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchStartTime:J

    return-wide v0
.end method

.method public static getMatchState()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchState:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobileGPUType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mobileGPUType:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->open_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->open_id:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->open_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getOptimizeConfig()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->optimizeConfig:Ljava/lang/String;

    return-object v0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSceneStartTime()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->sceneStartTime:J

    return-wide v0
.end method

.method public static getSubVersionCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->sub_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public static getSwVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mSwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getThreadMatchRules()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->threadMatchRules:Ljava/lang/String;

    return-object v0
.end method

.method public static getVendorStrategySupport1()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport1:I

    return v0
.end method

.method public static getVendorStrategySupport2()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport2:I

    return v0
.end method

.method public static getVendorStrategySupport3()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport3:I

    return v0
.end method

.method public static getVendorStrategySupport4()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport4:I

    return v0
.end method

.method public static getVendorStrategySupport5()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport5:I

    return v0
.end method

.method public static getVendorStrategySupport6()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport6:I

    return v0
.end method

.method public static getVendorStrategySupport7()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport7:I

    return v0
.end method

.method public static getVendorStrategySupport8()I
    .locals 1

    .line 1
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport8:I

    return v0
.end method

.method public static getVendorStrategySupportStr()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupportStr:Ljava/lang/String;

    return-object v0
.end method

.method public static getVendorTempLevel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorTempLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static isAndroidHapticOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->useNoneRichTap:Z

    return v0
.end method

.method public static isBgPreDownloadFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgPreDownload:Z

    return v0
.end method

.method public static isBgPreDownloadHotfixFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->bgPreDownloadHotfix:Z

    return v0
.end method

.method public static isCallbackFucOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->registerCallback:Z

    return v0
.end method

.method public static isCommonHapticFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->commonHaptic:Z

    return v0
.end method

.method public static isCpuApplyFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->cpuApply:Z

    return v0
.end method

.method public static isDebugIdReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->debugIdReport:Z

    return v0
.end method

.method public static isDebugMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugMode:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDeviceCheckFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->deviceCheck:Z

    return v0
.end method

.method public static isFpsStrategyFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->fpsStrategy:Z

    return v0
.end method

.method public static isGpuApplyFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->gpuApply:Z

    return v0
.end method

.method public static isLightThreadFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->lightThreadBind:Z

    return v0
.end method

.method public static isLiveIdReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->liveIdReport:Z

    return v0
.end method

.method public static isNetLatencyFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->netLatency:Z

    return v0
.end method

.method public static isNotchProbeSupport()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->notchProbe:Z

    return v0
.end method

.method public static isOptPerfFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->optCfg:Z

    return v0
.end method

.method public static isPreDownloadFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->preDownload:Z

    return v0
.end method

.method public static isPredownloadFileCheckOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->predownFileCheck:Z

    return v0
.end method

.method public static isReportFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->reportAll:Z

    return v0
.end method

.method public static isReportThreadSuppend()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportThreadSuppend:Z

    return v0
.end method

.method public static isRichTapFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->richTap:Z

    return v0
.end method

.method public static isSSPFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->spa:Z

    return v0
.end method

.method public static isSSPReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->spaReport:Z

    return v0
.end method

.method public static isSafeUniqueIdReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->safeUniqueIdReport:Z

    return v0
.end method

.method public static isSceneFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneToVendor:Z

    return v0
.end method

.method public static isSceneTransformOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneTransform:Z

    return v0
.end method

.method public static isSceneTypeControlOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->sceneType:Z

    return v0
.end method

.method public static isSdkFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->globalSwitch:Z

    return v0
.end method

.method public static isSimulator()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSimulator:Z

    return v0
.end method

.method public static isThreadAffinityOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->threadAffinitySet:Z

    return v0
.end method

.method public static isThreadFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->heavyThreadBind:Z

    return v0
.end method

.method public static isTransceiverCallbackOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->transceiverSignalpipe:Z

    return v0
.end method

.method public static isTransceiverOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->transceiver:Z

    return v0
.end method

.method public static isTuringShieldFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->turingShield:Z

    return v0
.end method

.method public static isUniqueIdReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->uniqueIdReport:Z

    return v0
.end method

.method public static isUserCountFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->screenUser:Z

    return v0
.end method

.method public static isVendorOAIDReportOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->vendorOAIDReport:Z

    return v0
.end method

.method public static isVendorServerOk()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerIsOk:Z

    return v0
.end method

.method public static isVersionReportSupport()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->romVersionReport:Z

    return v0
.end method

.method public static resetDataInMap(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "temp_level"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "dynamic_setting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "avg_net_latency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "13"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "fps_level"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "avg_frame_miss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    const-string v0, ""

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 18
    :pswitch_0
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setVendorTempLevel(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :pswitch_1
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setDynamicSetting(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRoleStaus:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 28
    :pswitch_3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRecording:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :pswitch_4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :pswitch_5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setFpsLevel(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :pswitch_6
    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x315cabe5 -> :sswitch_9
        -0xe8d8752 -> :sswitch_8
        0x36 -> :sswitch_7
        0x620 -> :sswitch_6
        0x621 -> :sswitch_5
        0x622 -> :sswitch_4
        0x625 -> :sswitch_3
        0xe0bde6f -> :sswitch_2
        0x330b6650 -> :sswitch_1
        0x381f1359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resetInstallSign()V
    .locals 2

    .line 1
    const-string v0, "install_sign"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveDataInMap(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$1;->$SwitchMap$com$ihoc$mgpa$toolkit$constant$KogKey:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setOpenId(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setRecording(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setRoleStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_4
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setUsersCount(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_5
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setNetLatency(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_6
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setRoleOutline(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_7
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setEffectLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_8
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setModelLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_9
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setTargetFPS(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_a
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setFrameMiss(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_b
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setSubVersionCode(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_c
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setMainVersionCode(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static saveDataInMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveGameDataInCacheMap(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveSupportSceneArr(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->supportSceneArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setApmKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->apmKey:Ljava/lang/String;

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->app_id:Ljava/lang/String;

    return-void
.end method

.method public static setCurrentSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    return-void
.end method

.method public static setCurrentTransformSceneID(Ljava/lang/String;)V
    .locals 2

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTransformSceneID:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "trans_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugMode:Z

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->setDebugMode(Z)V

    return-void
.end method

.method public static setDirtyFpsStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dirtyFpsStatus:Z

    return-void
.end method

.method public static setDynamicSetting(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->dynamicSetting:Ljava/lang/String;

    return-void
.end method

.method public static setEffectLevel(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->EFFECT_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentEffectLevel:Ljava/lang/String;

    return-void
.end method

.method public static setFpsLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->fpsLevel:Ljava/lang/String;

    return-void
.end method

.method private static setFrameMiss(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FRAME_MISS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setGameChannelID(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->channelID:Ljava/lang/String;

    return-void
.end method

.method public static setIsSimulator(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSimulator:Z

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->setIsSimulator(Z)V

    return-void
.end method

.method public static setMainVersionCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->main_version_code:Ljava/lang/String;

    .line 2
    const-string v0, "main_version_code"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMapID(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchMark:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchMark:I

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->lastMapID:Ljava/lang/String;

    .line 5
    :cond_0
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentMapID:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->MAP_ID:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMatchStartTime()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchStartTime:J

    return-void
.end method

.method public static setMatchState(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->matchState:Ljava/lang/String;

    return-void
.end method

.method public static setMobileGPUType(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mobileGPUType:Ljava/lang/String;

    return-void
.end method

.method public static setModelLevel(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->MODEL_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentModelLevel:Ljava/lang/String;

    return-void
.end method

.method private static setNetLatency(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->open_id:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->setOpenId(Ljava/lang/String;)V

    return-void
.end method

.method public static setOptimizeConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->optimizeConfig:Ljava/lang/String;

    return-void
.end method

.method private static setRecording(Ljava/lang/String;)V
    .locals 2

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRecording:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->ROLE_STATUS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RECORDING:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setReportThreadSuppend(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportThreadSuppend:Z

    return-void
.end method

.method public static setRoleOutline(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->ROLE_OUTLINE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRoleOutline:Ljava/lang/String;

    return-void
.end method

.method private static setRoleStatus(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentRoleStaus:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->ROLE_STATUS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setRomVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRomVersion:Ljava/lang/String;

    return-void
.end method

.method public static setSceneStartTime(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->sceneStartTime:J

    return-void
.end method

.method public static setSubVersionCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->sub_version_code:Ljava/lang/String;

    .line 2
    const-string/jumbo v0, "sub_version_code"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSwVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mSwVersion:Ljava/lang/String;

    return-void
.end method

.method public static setTargetFPS(Ljava/lang/String;)V
    .locals 2

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentTargetFPS:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS_TARGET:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setThreadMatchRules(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->threadMatchRules:Ljava/lang/String;

    return-void
.end method

.method private static setUsersCount(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentUserCount:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->USERS_COUNT:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setVendorServerIsOk(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerIsOk:Z

    return-void
.end method

.method public static setVendorStrategySupport1(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport1:I

    return-void
.end method

.method public static setVendorStrategySupport2(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport2:I

    return-void
.end method

.method public static setVendorStrategySupport3(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport3:I

    return-void
.end method

.method public static setVendorStrategySupport4(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport4:I

    return-void
.end method

.method public static setVendorStrategySupport5(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport5:I

    return-void
.end method

.method public static setVendorStrategySupport6(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport6:I

    return-void
.end method

.method public static setVendorStrategySupport7(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport7:I

    return-void
.end method

.method public static setVendorStrategySupport8(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupport8:I

    return-void
.end method

.method public static setVendorStrategySupportStr()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport2()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport3()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport4()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport5()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport6()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport7()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport8()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorStrategySupportStr:Ljava/lang/String;

    return-void
.end method

.method public static setVendorTempLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorTempLevel:Ljava/lang/String;

    return-void
.end method

.method public static setcloudFuncOpenList()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSdkFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isThreadFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isLightThreadFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUserCountFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isFpsStrategyFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isOptPerfFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCpuApplyFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isGpuApplyFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTransformOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->cloudFuncOpenList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTypeControlOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
