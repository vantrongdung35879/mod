.class public Lcom/uqm/crashsight/core/crash/CrashSight;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/core/crash/CrashInterface;


# static fields
.field private static final CS_REPORT_DELAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = "[CrashSightPlugin]"

.field private static final LogLevelDebug:I = 0x4

.field private static final LogLevelError:I = 0x1

.field private static final LogLevelInfo:I = 0x3

.field private static final LogLevelSilent:I = 0x0

.field private static final LogLevelVerbose:I = 0x5

.field private static final LogLevelWarn:I = 0x2

.field private static mAppChannel:Ljava/lang/String; = null

.field private static mAppDeviceId:Ljava/lang/String; = null

.field private static mAppMatchId:Ljava/lang/String; = null

.field private static mAppVersion:Ljava/lang/String; = null

.field private static mCallbackType:I = 0x3f

.field private static mCrashHandleTimeout:I = 0x3c

.field private static mCrashUploadServerUrl:Ljava/lang/String; = null

.field private static mDebugMode:Z = false

.field private static mDelay:J = 0x0L

.field private static mDeviceId:Ljava/lang/String; = null

.field private static mDeviceModel:Ljava/lang/String; = null

.field private static mGameType:I = 0x0

.field private static mInitialized:Z = false

.field private static mLogLevel:I = 0x3

.field private static mLogPath:Ljava/lang/String; = null

.field private static mUploadThreadNum:I = 0x3

.field private static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOpenId()Ljava/lang/String;
    .locals 1

    .line 256
    const-string v0, ""

    return-object v0
.end method

.method private setUserValueForSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "setUserValueForSearch %s:%s"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/core/crash/CrashSight;->setUserValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFdCount(IIZ)Z
    .locals 0

    .line 728
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/crashreport/CrashReport;->checkFdCount(IIZ)Z

    move-result p1

    return p1
.end method

.method public closeCrashReport()V
    .locals 0

    .line 595
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->closeCrashReport()V

    return-void
.end method

.method public configCallbackTypeBeforeInit(I)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configDefaultBeforeInit invoked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    return-void
.end method

.method public configCrashHandleTimeout(I)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configCrashHandleTimeout invoked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashHandleTimeout:I

    return-void
.end method

.method public configCrashReporterLogLevelBeforeInit(I)V
    .locals 0

    .line 552
    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogLevel:I

    return-void
.end method

.method public configCrashServerUrlBeforeInit(Ljava/lang/String;)V
    .locals 0

    .line 545
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 546
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public configDebugModeBeforeInit(Z)V
    .locals 0

    .line 557
    sput-boolean p1, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    .line 558
    sput-boolean p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    return-void
.end method

.method public configDefaultBeforeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const/4 v0, 0x0

    .line 530
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "configDefaultBeforeInit invoked"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    .line 532
    sput-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    .line 533
    sput-object p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    .line 534
    sput-wide p4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    const/4 p2, 0x1

    .line 536
    new-array p3, p2, [Ljava/lang/Object;

    aput-object p1, p3, v0

    const-string p1, "mAppChannel: %s"

    invoke-static {p1, p3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    new-array p1, p2, [Ljava/lang/Object;

    sget-object p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    aput-object p3, p1, v0

    const-string p3, "mAppVersion: %s"

    invoke-static {p3, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    new-array p1, p2, [Ljava/lang/Object;

    sget-object p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    aput-object p3, p1, v0

    const-string p3, "mUserId: %s"

    invoke-static {p3, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    sget-wide p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "mDelay: %d"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableAsyncReportException()I
    .locals 1

    .line 302
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->enableAsyncReportException()I

    move-result v0

    return v0
.end method

.method public getBackendDeviceId()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getBackendDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashThreadId()J
    .locals 2

    .line 615
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getCrashThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCrashUUID()Ljava/lang/String;
    .locals 1

    .line 620
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getCrashUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionType(Ljava/lang/String;)I
    .locals 0

    .line 682
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->getExceptionType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLastSessionUserId()Ljava/lang/String;
    .locals 1

    .line 630
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getLastSessionUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKSessionID()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 157
    sput-boolean p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    .line 158
    sput-object p4, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    const/4 p2, 0x1

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/core/crash/CrashSight;->initWithAppId(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 160
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "init invoked"

    invoke-static {p2, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initWithAppId(Ljava/lang/String;Z)V
    .locals 6

    .line 308
    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    sput-boolean v0, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    const/4 v0, 0x1

    .line 309
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "initWithAppId invoked, appId: %s"

    invoke-static {v3, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    sget-object v1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setServerUrl(Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->getActivity()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 315
    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadSO()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    const-string v3, "CrashSight.so is loaded successfully"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    new-instance v3, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;

    invoke-direct {v3, v1}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 328
    sget-wide v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/uqm/crashsight/CrashSightStrategy;

    .line 331
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCallBackType(I)V

    .line 332
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "strategy.setCallBackType: %d"

    invoke-static {v4, v5}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sget-object v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 335
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    .line 336
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "strategy.setAppChannel: %s"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_1
    sget-object v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    .line 341
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "strategy.setAppVersion: %s"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_2
    sget-object v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 345
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setDeviceID(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    .line 346
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "strategy.setDeviceID: %s"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_3
    sget-object v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 350
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setDeviceModel(Ljava/lang/String;)V

    .line 351
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "strategy.setDeviceModel: %s"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_4
    sget-object v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 355
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setLogPath(Ljava/lang/String;)V

    .line 356
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "strategy.setLogPath: %s"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_5
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mUploadThreadNum:I

    if-lez v4, :cond_6

    .line 360
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setUploadThreadNum(I)V

    .line 361
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mUploadThreadNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "strategy.setUploadThreadNum: %d"

    invoke-static {v4, v5}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_6
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashHandleTimeout:I

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCrashHandleTimeout(I)V

    .line 367
    new-instance v4, Lcom/uqm/crashsight/core/crash/CrashSight$2;

    invoke-direct {v4, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$2;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;)V

    .line 499
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mGameType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "mGameType: %d"

    invoke-static {v4, v5}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    sget v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mGameType:I

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/ag;->a(I)V

    .line 502
    sget-boolean v4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    invoke-static {p1, v4, v3, p2}, Lcom/uqm/crashsight/crashreport/CrashReport;->initCrashReportWithAutoContext(Ljava/lang/String;ZLjava/lang/Object;Z)Z

    move-result p2

    if-nez p2, :cond_7

    .line 503
    sget-boolean p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    invoke-static {v1, p1, p2, v3}, Lcom/uqm/crashsight/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;)V

    .line 506
    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    sget-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "mUserId: %s"

    invoke-static {p2, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    sget-wide p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "mDelay: %s"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    sget-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 509
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 512
    :cond_8
    sput-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    return-void

    .line 318
    :cond_9
    const-string p1, "CrashSight.so is loaded failed"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 322
    :cond_a
    const-string p1, "crashsight platform get activity failed."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isLastSessionCrash()Z
    .locals 1

    .line 625
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->isLastSessionCrash()Z

    move-result v0

    return v0
.end method

.method public logInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const-string v4, "logInfo invoked, level : %d, tag : %s, log : %s"

    invoke-static {v4, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_2
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_3
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_4
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 4

    .line 568
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const-string v3, "printLog level: %d msg: %s"

    invoke-static {v3, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    sget v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogLevel:I

    if-le p1, v2, :cond_0

    return-void

    .line 572
    :cond_0
    const-string v2, "[CrashSightPlugin]"

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 576
    :cond_1
    invoke-static {v2, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 579
    :cond_2
    invoke-static {v2, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 582
    :cond_3
    invoke-static {v2, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 585
    :cond_4
    invoke-static {v2, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 588
    :cond_5
    invoke-static {v2, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public processEngineAnr(I)V
    .locals 0

    .line 754
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->processEngineAnr(I)V

    return-void
.end method

.method public reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 7

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 v0, 0x4

    aput-object p5, v3, v0

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v0, 0x6

    aput-object v2, v3, v0

    .line 274
    const-string v0, "CS Crash reportException type : %d, exceptionName : %s, exceptionMsg : %s, exceptionStack : %s, extInfo : %s, quit : %s, dumpNativeType : %d"

    invoke-static {v0, v3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    move-object v6, p8

    .line 276
    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p6, :cond_0

    .line 278
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/uqm/crashsight/core/crash/CrashSight$1;

    invoke-direct {p2, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$1;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public reportJank(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 748
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const/4 v0, 0x4

    aput-object p5, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object p7, v2, v0

    .line 747
    const-string v0, "CS Crash reportException type : %d, exceptionName : %s, exceptionMsg : %s, exceptionStack : %s, extInfo : %s, reportInfoOption : %d, jankAttachmentPath : %s"

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-static/range {p1 .. p7}, Lcom/uqm/crashsight/crashreport/CrashReport;->postJank(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public reportStuck(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    move v0, p3

    int-to-long v2, v0

    move v0, p1

    move v1, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 778
    invoke-static/range {v0 .. v8}, Lcom/uqm/crashsight/crashreport/CrashReport;->postStuck(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setAppDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 115
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppDeviceId:Ljava/lang/String;

    .line 116
    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "K#AppDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/core/crash/CrashSight;->setUserValueForSearch(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 231
    const-string p1, ""

    .line 233
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setAppID(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 234
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "set app id as %s"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 91
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setCatchMultiSignal(Z)V
    .locals 0

    .line 605
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setCatchMultiSignal(Z)V

    return-void
.end method

.method public setCustomizedMatchID(Ljava/lang/String;)V
    .locals 1

    .line 128
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppMatchId:Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "K#AppMatchId"

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/core/crash/CrashSight;->setUserValueForSearch(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 100
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 136
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    return-void
.end method

.method public setEnableFragmentCallbacks(Z)V
    .locals 0

    .line 718
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setEnableFragmentCallbacks(Z)V

    return-void
.end method

.method public setEnableGetPackageInfo(Z)V
    .locals 0

    .line 640
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setEnableGetPackageInfo(Z)V

    return-void
.end method

.method public setEngineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 703
    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/crashreport/CrashReport;->setEngineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEngineMainThread(ILjava/lang/String;)V
    .locals 0

    .line 759
    invoke-static {p1, p2}, Lcom/uqm/crashsight/crashreport/CrashReport;->setEngineMainThread(ILjava/lang/String;)V

    return-void
.end method

.method public setGameType(I)V
    .locals 3

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "setGameType invoked, gameType: %d"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mGameType:I

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/ag;->a(I)V

    return-void
.end method

.method public setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 708
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/crashreport/CrashReport;->setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsAppForeground(Z)V
    .locals 2

    .line 297
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setIsAppForeground(Z)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set is app foreground as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setIsOpengles(Z)V
    .locals 0

    .line 713
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setIsOpengles(Z)V

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 1

    .line 145
    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    .line 146
    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setLogPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLogcatBufferSize(I)V
    .locals 0

    .line 635
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setLogcatBufferSize(I)V

    return-void
.end method

.method public setOomLogPath(Ljava/lang/String;)V
    .locals 0

    .line 733
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setOomLogPath(Ljava/lang/String;)V

    return-void
.end method

.method public setServerEnv(Ljava/lang/String;)V
    .locals 0

    .line 698
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setServerEnv(Ljava/lang/String;)V

    return-void
.end method

.method public setUnwindExtraStack(Z)V
    .locals 0

    .line 610
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUnwindExtraStack(Z)V

    return-void
.end method

.method public setUploadThreadNum(I)V
    .locals 3

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "setUploadThreadNum invoked, num: %d"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mUploadThreadNum:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 218
    const-string p1, ""

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 221
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "set user id as %s"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUserSceneTag(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 244
    const-string p1, ""

    .line 246
    :cond_0
    invoke-static {p1, p2}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserSceneTagStr(Ljava/lang/String;Z)V

    const/4 p2, 0x1

    .line 247
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "set user scene tag as %s"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUserValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 207
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "setUserValue invoked, key : %s, value : %s"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->getActivity()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCrashReport()V
    .locals 0

    .line 600
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->startCrashReport()V

    return-void
.end method

.method public startDumpRoutine(IIJJIZLjava/lang/String;)V
    .locals 10

    .line 668
    invoke-static {}, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->getActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 670
    invoke-static/range {v0 .. v9}, Lcom/uqm/crashsight/crashreport/CrashReport;->startDumpRoutine(Landroid/content/Context;IIJJIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startMonitorFdCount(III)V
    .locals 0

    .line 677
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/crashreport/CrashReport;->startMonitorFdCount(III)V

    return-void
.end method

.method public testANR()V
    .locals 0

    .line 662
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->testANRCrash()V

    return-void
.end method

.method public testJavaCrash()V
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uqm/crashsight/core/crash/CrashSight$3;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$3;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 652
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public testOomCrash()V
    .locals 0

    .line 657
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->testOomCrash()V

    return-void
.end method

.method public testUseAfterFree()V
    .locals 2

    .line 687
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 688
    new-instance v1, Lcom/uqm/crashsight/core/crash/CrashSight$4;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$4;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public useSavedUserId(Z)V
    .locals 0

    .line 723
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->useSavedUserId(Z)V

    return-void
.end method
