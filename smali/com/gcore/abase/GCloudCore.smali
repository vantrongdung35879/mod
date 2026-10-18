.class public Lcom/gcore/abase/GCloudCore;
.super Ljava/lang/Object;
.source "GCloudCore.java"


# static fields
.field public static Instance:Lcom/gcore/abase/GCloudCore; = null

.field public static final TAG:Ljava/lang/String; = "[GCloudCore]"


# instance fields
.field NetChecker:Lcom/gcore/abase/NetworkStateChecker;

.field private _appVersion:Ljava/lang/String;

.field private mDeviceBrand:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private m_BSSID:Ljava/lang/String;

.field private m_Carrier:I

.field private m_CarrierCode:Ljava/lang/String;

.field private m_CurrentAPN:Ljava/lang/String;

.field private m_DetailNetworkState:I

.field private m_SSID:Ljava/lang/String;

.field private m_cntxt:Landroid/content/Context;

.field m_scReader:Lcom/gcore/abase/SolidConfigReader;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szUdid:Ljava/lang/String;

.field paths:Lcom/gcore/abase/GCloudCorePaths;

.field private savedMainThread:Ljava/lang/Thread;

.field xsystem:Lcom/gcore/abase/GCloudCoreSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    :try_start_0
    const-string v0, "gcloudcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLibrary libgcloudcore.so error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    new-instance v0, Lcom/gcore/abase/GCloudCore;

    invoke-direct {v0}, Lcom/gcore/abase/GCloudCore;-><init>()V

    sput-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    .line 87
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/gcore/abase/GCloudCorePaths;

    invoke-direct {v1}, Lcom/gcore/abase/GCloudCorePaths;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    .line 95
    new-instance v1, Lcom/gcore/abase/GCloudCoreSystem;

    invoke-direct {v1}, Lcom/gcore/abase/GCloudCoreSystem;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    .line 98
    new-instance v1, Lcom/gcore/abase/NetworkStateChecker;

    invoke-direct {v1}, Lcom/gcore/abase/NetworkStateChecker;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    .line 99
    sget-object v1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    .line 100
    sget-object v1, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    invoke-virtual {v1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    .line 101
    const-string v1, ""

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_CurrentAPN:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szUdid:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szBundleId:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szModel:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szSysVersion:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->_appVersion:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->mDeviceBrand:Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/gcore/abase/SolidConfigReader;

    invoke-direct {v0}, Lcom/gcore/abase/SolidConfigReader;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    return-void
.end method

.method private CreateMainHandler()V
    .locals 3

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/gcore/abase/GCloudCore$1;

    invoke-direct {v2, p0}, Lcom/gcore/abase/GCloudCore$1;-><init>(Lcom/gcore/abase/GCloudCore;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreateMainHandler success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private GCloudCorecallJNIperform(J)V
    .locals 1

    .line 309
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "nativePerform call error="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[GCloudCore]"

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/GCloudCore;)Ljava/lang/Thread;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gcore/abase/GCloudCore;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V

    return-void
.end method

.method private cacheSystemInfo(Landroid/content/Context;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szUdid:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szBundleId:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0}, Lcom/gcore/abase/GCloudCoreSystem;->GetModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szModel:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0}, Lcom/gcore/abase/GCloudCoreSystem;->GetSysVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szSysVersion:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/GCloudCore;->_appVersion:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/gcore/abase/GCloudCoreSystem;->getDeviceBrand()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/GCloudCore;->mDeviceBrand:Ljava/lang/String;

    return-void
.end method

.method private callbackFromJNI(J)V
    .locals 6

    const-string v0, "callbackFromJNI nativePerform Main Thread:"

    .line 285
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    const-string v4, "Current Thread:"

    const-string v5, "[GCloudCore]"

    if-ne v2, v3, :cond_0

    .line 293
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v5, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "nativePerform call error="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "callbackFromJNI Main Thread:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {v5, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, p1}, Lcom/gcore/abase/GCloudCore;->sendMsg(Landroid/os/Message;Landroid/os/Handler;)V

    return-void
.end method

.method private checkNetworkState()I
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->CheckNetworkState(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getDetailNetworkInfo()V
    .locals 2

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    .line 261
    sget-object v1, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    invoke-virtual {v1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    .line 262
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CurrentAPN:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetDetailNetworkState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    .line 268
    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetBSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_0
    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

    .line 274
    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

    .line 275
    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

    .line 276
    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

    .line 277
    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-ne v0, v1, :cond_2

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetCurrentCarrierCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    invoke-virtual {v1, v0}, Lcom/gcore/abase/NetworkStateChecker;->GetCurrentCarrier(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    :cond_2
    :goto_0
    return-void
.end method

.method private getMetaString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetMetaString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSolidConfigAllKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/gcore/abase/SolidConfigReader;->GetAllKeys(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private getSolidConfigInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private isSolidConfigContainKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/gcore/abase/SolidConfigReader;->IsContainKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private native nativeCreate(Landroid/app/Activity;Landroid/content/Context;Lcom/gcore/abase/GCloudCorePaths;)V
.end method

.method private native nativeNetworkStateChangeNotify(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePerform(J)V
.end method

.method private native nativeResume()V
.end method

.method private declared-synchronized sendMsg(Landroid/os/Message;Landroid/os/Handler;)V
    .locals 2

    const-string p2, "sendMsg before sendMessage:"

    monitor-enter p0

    .line 354
    :try_start_0
    const-string v0, "[GCloudCore]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public Destroy()V
    .locals 3

    .line 64
    :try_start_0
    sget-object v0, Lcom/gcore/abase/NetworkChangeHelper;->Instance:Lcom/gcore/abase/NetworkChangeHelper;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkChangeHelper;->unregisterNetworkListener(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroy error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Initialize(Landroid/app/Activity;)V
    .locals 4

    .line 199
    const-string v0, "[GCloudCore]"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    .line 201
    invoke-virtual {p0, v1}, Lcom/gcore/abase/GCloudCore;->getPaths(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    .line 205
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->CreateMainHandler()V

    .line 207
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/SolidConfigReader;->Init(Landroid/content/Context;)V

    .line 209
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/gcore/abase/GCloudCore;->cacheSystemInfo(Landroid/content/Context;)V

    .line 211
    invoke-static {}, Lcom/gcore/abase/URLRequest;->init()V

    .line 213
    invoke-static {p1}, Lcom/gcore/abase/utils/DialogUtils;->init(Landroid/app/Activity;)V

    .line 215
    sget-object v1, Lcom/gcore/abase/SecurityStore;->Instance:Lcom/gcore/abase/SecurityStore;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/SecurityStore;->init(Landroid/content/Context;)V

    .line 217
    sget-object v1, Lcom/gcore/gcloud/tasksystem/TaskSystem;->Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/gcloud/tasksystem/TaskSystem;->init(Landroid/content/Context;)V

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    invoke-direct {p0, p1, v1, v2}, Lcom/gcore/abase/GCloudCore;->nativeCreate(Landroid/app/Activity;Landroid/content/Context;Lcom/gcore/abase/GCloudCorePaths;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nativeCreate call error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    :try_start_1
    sget-object v1, Lcom/gcore/abase/NetworkChangeHelper;->Instance:Lcom/gcore/abase/NetworkChangeHelper;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/NetworkChangeHelper;->registerNetworkListener(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initialize registerNetworkListener error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 233
    invoke-static {p1}, Lcom/gcore/abase/utils/DialogUtils;->processIntent(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialize processIntent error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_2
    const-string p1, "GCloudCore Initialize ends"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Initialize2(Landroid/content/Context;)V
    .locals 3

    .line 159
    const-string v0, "[GCloudCore]"

    .line 160
    iput-object p1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    .line 162
    invoke-virtual {p0, p1}, Lcom/gcore/abase/GCloudCore;->getPaths(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    .line 166
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->CreateMainHandler()V

    .line 168
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/SolidConfigReader;->Init(Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/gcore/abase/GCloudCore;->cacheSystemInfo(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/gcore/abase/URLRequest;->init()V

    const/4 v1, 0x0

    .line 174
    invoke-static {v1}, Lcom/gcore/abase/utils/DialogUtils;->init(Landroid/app/Activity;)V

    .line 175
    invoke-static {p1}, Lcom/gcore/abase/utils/DialogUtils;->initContext(Landroid/content/Context;)V

    .line 177
    sget-object p1, Lcom/gcore/abase/SecurityStore;->Instance:Lcom/gcore/abase/SecurityStore;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/gcore/abase/SecurityStore;->init(Landroid/content/Context;)V

    .line 179
    sget-object p1, Lcom/gcore/gcloud/tasksystem/TaskSystem;->Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/gcore/gcloud/tasksystem/TaskSystem;->init(Landroid/content/Context;)V

    .line 182
    :try_start_0
    iget-object p1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    invoke-direct {p0, v1, p1, v2}, Lcom/gcore/abase/GCloudCore;->nativeCreate(Landroid/app/Activity;Landroid/content/Context;Lcom/gcore/abase/GCloudCorePaths;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeCreate call error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    :try_start_1
    sget-object p1, Lcom/gcore/abase/NetworkChangeHelper;->Instance:Lcom/gcore/abase/NetworkChangeHelper;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/gcore/abase/NetworkChangeHelper;->registerNetworkListener(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialize2 registerNetworkListener error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_1
    const-string p1, "GCloudCore Initialize2 ends"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public NetworkStateChangeNotify(I)V
    .locals 2

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gcore/abase/GCloudCore;->nativeNetworkStateChangeNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nativeNetworkStateChangeNotify call error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GCloudCore]"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public NewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/gcore/abase/utils/DialogUtils;->processIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NewIntent error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GCloudCore]"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Pause()V
    .locals 3

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->nativePause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativePause call error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Resume()V
    .locals 3

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->nativeResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeResume call error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getPaths(Landroid/content/Context;)V
    .locals 10

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v6, v6, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->AppPath:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->InnerCachePath:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->InnerFilePath:Ljava/lang/String;

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 130
    const-string v3, "Create cache dir Error"

    const-string v5, "GCloudCore"

    const-string v6, "/Android/data/"

    if-nez v2, :cond_0

    .line 132
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cache"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    goto :goto_0

    .line 135
    :catch_0
    invoke-static {v5, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/files"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 148
    :catch_1
    invoke-static {v5, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, v1

    .line 152
    :goto_2
    iget-object p1, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppPath:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->AppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",CachePath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DataPath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GCloudCore]"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getSolidConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native nativeAction(Ljava/lang/String;)V
.end method

.method public native setSPID(Ljava/lang/String;)V
.end method
