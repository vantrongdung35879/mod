.class public Lcom/tdatamaster/tdm/TDataMaster;
.super Ljava/lang/Object;
.source "TDataMaster.java"


# static fields
.field public static TDM_REPORT_COMMON_KV_URL:I = 0x0

.field public static TDM_REPORT_DEVICE_INFO_ALL:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_ANDROIDID:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_IDFA:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_IDFV:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_NONE:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_OAID:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_QIMEI:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_TGTOKEN:J = 0x0L

.field public static TDM_REPORT_DEVICE_INFO_XID:J = 0x0L

.field public static TDM_REPORT_PRIVACY_KV_URL:I = 0x0

.field public static final TDM_REPORT_SIMPLE_MODE:I = 0x1

.field public static final TDM_REPORT_STANDARD_MODE:I

.field private static mApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/tdatamaster/tdm/TDataMaster;

.field private static mIsCppInitialized:Z

.field private static mIsJavaInitialized:Z

.field private static mIsNativeInitialized:Z

.field private static mLifecycle:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mInstance:Lcom/tdatamaster/tdm/TDataMaster;

    const/4 v0, 0x0

    .line 75
    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    .line 76
    sput-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    .line 77
    sput-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    .line 78
    sput-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsJavaInitialized:Z

    .line 83
    sput v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_PRIVACY_KV_URL:I

    const/4 v0, 0x1

    .line 84
    sput v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_COMMON_KV_URL:I

    const-wide/16 v0, 0x0

    .line 86
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_NONE:J

    const-wide/16 v0, -0x1

    .line 87
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_ALL:J

    const-wide/16 v0, 0x1

    .line 88
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_QIMEI:J

    const-wide/16 v0, 0x2

    .line 89
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_IDFA:J

    const-wide/16 v0, 0x4

    .line 90
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_IDFV:J

    const-wide/16 v0, 0x8

    .line 91
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_TGTOKEN:J

    const-wide/16 v0, 0x10

    .line 92
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_ANDROIDID:J

    const-wide/16 v0, 0x20

    .line 93
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_OAID:J

    const-wide/16 v0, 0x40

    .line 94
    sput-wide v0, Lcom/tdatamaster/tdm/TDataMaster;->TDM_REPORT_DEVICE_INFO_XID:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native TDMAgileReport(Z)V
.end method

.method private native TDMEnableDeviceInfo(Z)V
.end method

.method private native TDMEnableDeviceInfoCollect(Ljava/lang/String;Z)I
.end method

.method private native TDMEnableHTTPProxy(Z)V
.end method

.method private native TDMEnableReport(Z)V
.end method

.method private native TDMFlushCacheData()V
.end method

.method private native TDMGetSDKVerision()Ljava/lang/String;
.end method

.method private native TDMGetUID()Ljava/lang/String;
.end method

.method private native TDMInit()V
.end method

.method private native TDMInitialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native TDMIsEventEmpty()Z
.end method

.method private native TDMPause()V
.end method

.method private native TDMRealTimeReportBinary(Ljava/lang/String;[BIIZ)I
.end method

.method private native TDMRealTimeReportEvent(Ljava/lang/String;Ljava/util/Map;IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)I"
        }
    .end annotation
.end method

.method private native TDMReportBinary(Ljava/lang/String;[BII)V
.end method

.method private native TDMReportEvent(Ljava/lang/String;Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method private native TDMReportEventV2(ILjava/lang/String;Ljava/util/Map;IJ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation
.end method

.method private native TDMReportFileContent(ILjava/lang/String;[BILjava/lang/String;Z)V
.end method

.method private native TDMReportLogin(ILjava/lang/String;)V
.end method

.method private native TDMReportLoginV2(ILjava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native TDMResume()V
.end method

.method private native TDMSetLogLevel(I)V
.end method

.method private native TDMSetRouteAddress(ZLjava/lang/String;)Z
.end method

.method private native TDMSetUserAgent(Ljava/lang/String;)I
.end method

.method private native TDMUploadBinaryByCOS(ILjava/lang/String;Ljava/lang/String;[BJ)I
.end method

.method private native TDMUploadFileByCOS(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    .line 114
    const-string v0, "TDM"

    sget-object v1, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 117
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 118
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 121
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    const-string v4, "getApplication"

    .line 124
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 125
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InvocationTargetException, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalAccessException, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoSuchMethodException, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClassNotFoundException, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 143
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/tdatamaster/tdm/TDataMaster;
    .locals 2

    .line 103
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mInstance:Lcom/tdatamaster/tdm/TDataMaster;

    if-nez v0, :cond_1

    .line 104
    const-class v0, Lcom/tdatamaster/tdm/TDataMaster;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/tdatamaster/tdm/TDataMaster;->mInstance:Lcom/tdatamaster/tdm/TDataMaster;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/tdatamaster/tdm/TDataMaster;

    invoke-direct {v1}, Lcom/tdatamaster/tdm/TDataMaster;-><init>()V

    sput-object v1, Lcom/tdatamaster/tdm/TDataMaster;->mInstance:Lcom/tdatamaster/tdm/TDataMaster;

    .line 108
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mInstance:Lcom/tdatamaster/tdm/TDataMaster;

    return-object v0
.end method

.method public static native setAppDir(Ljava/lang/String;)V
.end method


# virtual methods
.method public SetCppInit()V
    .locals 1

    const/4 v0, 0x1

    .line 278
    sput-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    return-void
.end method

.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;)V
    .locals 1

    .line 514
    const-string v0, "All"

    invoke-virtual {p0, p1, v0}, Lcom/tdatamaster/tdm/TDataMaster;->addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V

    return-void
.end method

.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 1

    .line 510
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V

    return-void
.end method

.method public agileReport(Z)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMAgileReport(Z)V

    return-void
.end method

.method public enableDeviceInfo(Z)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableDeviceInfo(Z)V

    return-void
.end method

.method public enableDeviceInfoCollect(Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 568
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableDeviceInfoCollect(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public enableHTTPProxy(Z)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableHTTPProxy(Z)V

    return-void
.end method

.method public enableReport(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 373
    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "enableReport %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableReport(Z)V

    return-void
.end method

.method public flushCacheData()V
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMFlushCacheData()V

    return-void
.end method

.method public getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 522
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTDMSDKVersion()Ljava/lang/String;
    .locals 2

    .line 386
    const-string v0, "TDM"

    const-string v1, "getTDMSDKVersion"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMGetSDKVerision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTDMUID()Ljava/lang/String;
    .locals 2

    .line 367
    const-string v0, "TDM"

    const-string v1, "getTDMUID"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMGetUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tdatamaster/tdm/TDataMaster;->initialize(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 5

    .line 172
    sget-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 177
    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 183
    :goto_0
    const-string v2, "TDM"

    if-nez v0, :cond_4

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fatal error : application context is null : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string p1, "null"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_4
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->SaveConfigInfo(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMLog;->GetLogLevel()I

    move-result p1

    if-gt p1, v1, :cond_5

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "now Android logLevel is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", please use warning or error level in production"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_5
    sget-boolean p1, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    if-nez p1, :cond_7

    .line 199
    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tdatamaster/tdm/system/FileUtils;->Initialize(Landroid/content/Context;)V

    .line 202
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->Initialize(Landroid/content/Context;)V

    .line 205
    sget-boolean p1, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    if-nez p1, :cond_6

    .line 206
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMInit()V

    .line 207
    sput-boolean v1, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    .line 210
    :cond_6
    sput-boolean v1, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    .line 213
    :cond_7
    sget-boolean p1, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    return p1
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 225
    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/TDataMaster;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    .line 230
    sget-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsJavaInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    const-string v0, "Set AppID is empty!"

    const/4 v2, 0x0

    const-string v3, "TDM"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    :cond_2
    const-string v4, "Set AppChannel is empty!"

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_b

    .line 239
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_2

    .line 244
    :cond_4
    sget-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    if-nez v0, :cond_a

    if-nez p4, :cond_5

    .line 248
    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_5
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, p4

    :goto_0
    if-nez v0, :cond_8

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fatal error : application context is null : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "null"

    goto :goto_1

    :cond_7
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v3, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 258
    :cond_8
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->SaveConfigInfo(Landroid/content/Context;)V

    .line 259
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMLog;->GetLogLevel()I

    move-result p4

    if-gt p4, v1, :cond_9

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "now Android logLevel is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", please use warning or error level in production"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_9
    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/tdatamaster/tdm/system/FileUtils;->Initialize(Landroid/content/Context;)V

    .line 265
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->Initialize(Landroid/content/Context;)V

    .line 266
    sput-boolean v1, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    .line 269
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/tdatamaster/tdm/TDataMaster;->TDMInitialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    sput-boolean v1, Lcom/tdatamaster/tdm/TDataMaster;->mIsJavaInitialized:Z

    .line 271
    sput-boolean v1, Lcom/tdatamaster/tdm/TDataMaster;->mIsCppInitialized:Z

    .line 273
    sget-boolean p1, Lcom/tdatamaster/tdm/TDataMaster;->mIsNativeInitialized:Z

    return p1

    .line 240
    :cond_b
    :goto_2
    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 233
    :cond_c
    :goto_3
    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public isEventEmpty()Z
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMIsEventEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 306
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "OnActivityResult requestCode:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDM"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 353
    const-string v0, "TDM"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->UnRegisterReceiver()V

    const/16 v0, 0x20

    .line 355
    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 336
    const-string v0, "TDM"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMPause()V

    .line 342
    :cond_0
    sput-char v1, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 360
    const-string v0, "TDM"

    const-string v1, "OnRestart"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 361
    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 325
    const-string v0, "TDM"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMResume()V

    .line 331
    :cond_0
    sput-char v1, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 319
    const-string v0, "TDM"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 320
    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 347
    const-string v0, "TDM"

    const-string v1, "OnStop"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 348
    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->mLifecycle:C

    return-void
.end method

.method public prepareFileDir(Landroid/content/Context;)V
    .locals 2

    .line 283
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TDM"

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tdatamaster/tdm/TDataMaster;->setAppDir(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    const-string p1, "get public dir error!"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_1
    const-string p1, "getExternalFilesDir is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sdcard is unavailable, state : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public realTimeReportBinary(ILjava/lang/String;[BIZ)I
    .locals 6

    if-nez p3, :cond_0

    .line 435
    const-string p1, "TDM"

    const-string p2, "realTimeReportBinary data is null"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    .line 438
    invoke-direct/range {v0 .. v5}, Lcom/tdatamaster/tdm/TDataMaster;->TDMRealTimeReportBinary(Ljava/lang/String;[BIIZ)I

    move-result p1

    return p1
.end method

.method public realTimeReportEvent(ILjava/lang/String;Ljava/util/Map;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "eventName: %s, srcID: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 415
    const-string p1, "eventInfo is null or empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    .line 418
    :cond_0
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/tdatamaster/tdm/TDataMaster;->TDMRealTimeReportEvent(Ljava/lang/String;Ljava/util/Map;IZ)I

    move-result p1

    return p1
.end method

.method public reportBinary(ILjava/lang/String;[BI)V
    .locals 3

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "eventName: %s, srcID: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 426
    const-string p1, "data is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportBinary(Ljava/lang/String;[BII)V

    return-void
.end method

.method public reportBinary(ILjava/lang/String;[BILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 443
    invoke-virtual/range {v0 .. v6}, Lcom/tdatamaster/tdm/TDataMaster;->reportBinary(ILjava/lang/String;[BILjava/lang/String;Z)V

    return-void
.end method

.method public reportBinary(ILjava/lang/String;[BILjava/lang/String;Z)V
    .locals 3

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p5, v1, v0

    const-string v0, "eventName: %s, srcID: %d, dstFileName: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 452
    const-string p1, "reportBinary data is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportFileContent(ILjava/lang/String;[BILjava/lang/String;Z)V

    return-void
.end method

.method public reportEvent(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/TDataMaster;->reportEvent(ILjava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public reportEvent(ILjava/lang/String;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "eventName: %s, srcID: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 398
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportEvent(Ljava/lang/String;Ljava/util/Map;II)V

    return-void

    .line 400
    :cond_1
    :goto_0
    const-string p1, "eventInfo is null or empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportEventV2(ILjava/lang/String;Ljava/util/Map;IJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 408
    invoke-direct/range {p0 .. p6}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportEventV2(ILjava/lang/String;Ljava/util/Map;IJ)I

    move-result p1

    return p1
.end method

.method public reportLogin(ILjava/lang/String;)V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportLogin, platform:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportLogin(ILjava/lang/String;)V

    return-void
.end method

.method public reportLogin(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportLogin, platform:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportLoginV2(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;J)I
    .locals 1

    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;J)I

    move-result p1

    return p1

    .line 531
    :cond_1
    :goto_0
    const-string p1, "TDM"

    const-string p2, "deviceInfoName is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 540
    :cond_1
    :goto_0
    const-string p1, "TDM"

    const-string p2, "deviceInfoName or deviceInfoValue is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Z)I
    .locals 1

    if-eqz p1, :cond_1

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Z)I

    move-result p1

    return p1

    .line 549
    :cond_1
    :goto_0
    const-string p1, "TDM"

    const-string p2, "deviceInfoName is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setLogLevel(I)V
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetLogLevel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/system/TDMUtils;->SetLogLevel(I)V

    .line 381
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMSetLogLevel(I)V

    return-void
.end method

.method public setRouteAddress(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 153
    const-string v1, "TDM"

    if-nez p1, :cond_0

    .line 154
    const-string p1, "context is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p3, :cond_2

    .line 157
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/tdatamaster/tdm/TDataMaster;->TDMSetRouteAddress(ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 158
    :cond_2
    :goto_0
    const-string p1, "set url is empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setTDMRouteAddress(ZLjava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/TDataMaster;->TDMSetRouteAddress(ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 218
    :cond_1
    :goto_0
    const-string p1, "TDM"

    const-string p2, "set url is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setUserAgent(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMSetUserAgent(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public uploadBinaryByCOS(ILjava/lang/String;Ljava/lang/String;[BJLcom/tdatamaster/tdm/ITDataMasterCallback;)I
    .locals 4

    const/4 v0, -0x1

    if-lez p1, :cond_2

    if-eqz p2, :cond_2

    .line 476
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->getInstance()Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p7}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->Add(ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V

    .line 483
    invoke-direct/range {p0 .. p6}, Lcom/tdatamaster/tdm/TDataMaster;->TDMUploadBinaryByCOS(ILjava/lang/String;Ljava/lang/String;[BJ)I

    move-result p4

    if-eqz p4, :cond_1

    .line 485
    invoke-static {}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->getInstance()Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->NotifyUploadResult(ILjava/lang/String;Ljava/lang/String;I)I

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 478
    :cond_2
    :goto_0
    const-string p1, "TDM"

    const-string p2, "param is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public uploadFileByCOS(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)I
    .locals 2

    const/4 v0, -0x1

    if-lez p1, :cond_2

    if-eqz p2, :cond_2

    .line 460
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    .line 461
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->getInstance()Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->Add(ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V

    .line 467
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tdatamaster/tdm/TDataMaster;->TDMUploadFileByCOS(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_1

    .line 469
    invoke-static {}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->getInstance()Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->NotifyUploadResult(ILjava/lang/String;Ljava/lang/String;I)I

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 462
    :cond_2
    :goto_0
    const-string p1, "TDM"

    const-string p2, "param is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
