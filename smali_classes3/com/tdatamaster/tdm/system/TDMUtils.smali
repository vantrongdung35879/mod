.class public Lcom/tdatamaster/tdm/system/TDMUtils;
.super Ljava/lang/Object;
.source "TDMUtils.java"


# static fields
.field private static final FY_CHANNEL_ID_DEFAULT:Ljava/lang/String; = "00000000"

.field private static final GCloud_GameID:Ljava/lang/String; = "GCloud.GCloud.GameId"

.field private static final TDM_AppAddressFormal:Ljava/lang/String; = "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_FORMAL"

.field private static final TDM_AppAddressTest:Ljava/lang/String; = "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_TEST"

.field private static final TDM_AppBroad:Ljava/lang/String; = "GCloud.TDM.Abroad"

.field private static final TDM_AppChanel:Ljava/lang/String; = "GCloud.TDM.AppChannel"

.field private static final TDM_AppID:Ljava/lang/String; = "GCloud.TDM.AppId"

.field private static final TDM_AppKey:Ljava/lang/String; = "GCloud.TDM.AppKey"

.field private static final TDM_AppLogLevel:Ljava/lang/String; = "GCloud.TDM.LogLevel"

.field private static final TDM_AppTest:Ljava/lang/String; = "GCloud.TDM.Test"

.field private static final TDM_BeaconAppID:Ljava/lang/String; = "GCloud.TDM.BeaconAppId"

.field private static final TDM_DisableDeviceInfo:Ljava/lang/String; = "GCloud.TDM.DisableDeviceInfo"

.field private static final TDM_DiskCheckCritical:Ljava/lang/String; = "GCloud.TDM.DiskCheckCritical"

.field private static final TDM_DiskCheckInterval:Ljava/lang/String; = "GCloud.TDM.DiskCheckInterval"

.field private static final TDM_EncryptDeviceInfo:Ljava/lang/String; = "GCloud.TDM.EncryptDeviceInfo"

.field private static final TDM_Proxy:Ljava/lang/String; = "GCloud.TDM.EnableProxy"

.field private static mInstance:Lcom/tdatamaster/tdm/system/TDMUtils;


# instance fields
.field private mAbroad:Z

.field private mAppChannel:Ljava/lang/String;

.field private mAppID:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mBeaconAppId:Ljava/lang/String;

.field private mCacheFilePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisableDeviceInfo:Ljava/lang/String;

.field private mEncryptDeviceInfo:Ljava/lang/String;

.field private mError:Ljava/lang/String;

.field private mInitialized:Z

.field private mLogLevel:I

.field private mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

.field private mProxyMode:Z

.field private mRouterAddressFormal:Ljava/lang/String;

.field private mRouterAddressTest:Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/tdatamaster/tdm/system/TDMUtils;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/TDMUtils;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInstance:Lcom/tdatamaster/tdm/system/TDMUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    .line 33
    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mTestMode:Z

    .line 34
    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mProxyMode:Z

    .line 35
    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAbroad:Z

    const/4 v1, 0x2

    .line 36
    iput v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mLogLevel:I

    .line 38
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppID:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppKey:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppChannel:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mCacheFilePath:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressFormal:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressTest:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mEncryptDeviceInfo:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mDisableDeviceInfo:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mError:Ljava/lang/String;

    .line 49
    const-string v0, "000001ZG9U3Z6L9O"

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mBeaconAppId:Ljava/lang/String;

    return-void
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;
    .locals 1

    .line 70
    sget-object v0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInstance:Lcom/tdatamaster/tdm/system/TDMUtils;

    return-object v0
.end method

.method private native Init()V
.end method

.method private native OnNetworkChanged(ILjava/lang/String;)V
.end method

.method private SaveNetworkType()V
    .locals 2

    .line 255
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tdatamaster/tdm/system/NetworkType;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/NetworkType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/tdatamaster/tdm/system/TDMUtils;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tdatamaster/tdm/system/TDMUtils;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mError:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public native EncryptField(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public GetAppChannel()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public GetAppID()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public GetAppID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 199
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.GCloud.GameId"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 202
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppId"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetAppKey()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public GetAppVersion()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 273
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetAppVersion(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 278
    :cond_1
    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public GetAvailMemory()J
    .locals 2

    .line 261
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetAvailSpace()J
    .locals 2

    .line 266
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetAvailSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetBeaconAppId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mBeaconAppId:Ljava/lang/String;

    return-object v0
.end method

.method public GetBundleId()Ljava/lang/String;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 285
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetBundleId(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 289
    :cond_1
    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public GetCacheFilePath()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mCacheFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public GetDisableDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mDisableDeviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public GetDiskCheckCritical()I
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.DiskCheckCritical"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetDiskCheckInterval()I
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.DiskCheckInterval"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetEncryptDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mEncryptDeviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public GetFormalRouteAddress()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressFormal:Ljava/lang/String;

    return-object v0
.end method

.method public GetFyChannelId()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, "TDM"

    if-nez v0, :cond_0

    .line 324
    const-string v0, "getFlyChannelId failed\uff0cneed init tdm first"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, ""

    return-object v0

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 335
    const-string v0, "00000000"

    :cond_1
    return-object v0
.end method

.method public GetInternalAvailSpace()J
    .locals 3

    .line 309
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAvailSpace Fail,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public GetLogLevel()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mLogLevel:I

    return v0
.end method

.method public GetProxy()Ljava/lang/String;
    .locals 7

    .line 341
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "TDM"

    if-nez v0, :cond_0

    .line 342
    const-string v0, "getProxy failed\uff0cneed init tdm first"

    invoke-static {v2, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 352
    :try_start_0
    const-string v3, "http.proxyHost"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    :try_start_1
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    .line 364
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetProxy Fail, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    .line 371
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s:%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public GetTestRouteAddress()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressTest:Ljava/lang/String;

    return-object v0
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    .line 78
    const-string p1, "TDM"

    const-string v0, "context is null. initialize failed!"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    if-nez v0, :cond_1

    .line 86
    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/tdatamaster/tdm/system/TDMUtils;->Init()V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public IsAbroad()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAbroad:Z

    return v0
.end method

.method public IsEnableProxy()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mProxyMode:Z

    return v0
.end method

.method public IsTestMode()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mTestMode:Z

    return v0
.end method

.method public OnNetworkChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 137
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object p2

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 138
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(ILjava/lang/String;)V

    return-void
.end method

.method public RegisterReceiver()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    .line 107
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterReceiver Exception, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public SaveConfigInfo(Landroid/content/Context;)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mCacheFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mCacheFilePath:Ljava/lang/String;

    .line 222
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppID:Ljava/lang/String;

    .line 223
    const-string v1, "TDM"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 228
    :cond_2
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.AppKey"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppKey:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.AppChannel"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAppChannel:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.Test"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mTestMode:Z

    .line 231
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.EnableProxy"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mProxyMode:Z

    .line 232
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.Abroad"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mAbroad:Z

    .line 233
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.LogLevel"

    iget v3, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mLogLevel:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mLogLevel:I

    .line 234
    invoke-static {v0}, Lcom/tdatamaster/tdm/system/TDMLog;->SetLogLevel(I)V

    .line 236
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_FORMAL"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressFormal:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_TEST"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressTest:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "routerAddressFormal = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressFormal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "routerAddressTest = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mRouterAddressTest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.BeaconAppId"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 246
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mBeaconAppId:Ljava/lang/String;

    .line 248
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beaconAppId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.DisableDeviceInfo"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mDisableDeviceInfo:Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.EncryptDeviceInfo"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mEncryptDeviceInfo:Ljava/lang/String;

    return-void

    .line 224
    :cond_4
    :goto_0
    const-string p1, "get appid from xml is fail "

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native SetDeviceInfoEncryptKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public SetLogLevel(I)V
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/tdatamaster/tdm/system/TDMLog;->SetLogLevel(I)V

    return-void
.end method

.method public ShowErrorAlertView(Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mError:Ljava/lang/String;

    .line 383
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tdatamaster/tdm/system/TDMUtils$1;

    invoke-direct {v0, p0}, Lcom/tdatamaster/tdm/system/TDMUtils$1;-><init>(Lcom/tdatamaster/tdm/system/TDMUtils;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDM"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public UnRegisterReceiver()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnRegisterReceiver Exception, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
