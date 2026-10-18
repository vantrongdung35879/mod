.class public Lcom/tencent/gcloud/msdk/tools/MSDKLog;
.super Ljava/lang/Object;
.source "MSDKLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "MSDK"

.field private static final STACK_TRACE_DEEP:I = 0x5

.field private static final WARN:I = 0x5

.field private static isDebug:Ljava/lang/Boolean;

.field private static isDisableLog:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x3

    .line 148
    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method private static native d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logTag",
            "logClsName",
            "logMethodName",
            "logLineNumber",
            "msg"
        }
    .end annotation
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x6

    .line 152
    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method private static native e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logTag",
            "logClsName",
            "logMethodName",
            "logLineNumber",
            "msg"
        }
    .end annotation
.end method

.method private static getIsDisableLog()Z
    .locals 5

    .line 71
    sget-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDisableLog:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 73
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "MSDKConfig.ini"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 75
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 76
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 77
    const-string v0, "MSDK_DISABLE_LOG"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDisableLog:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "when read config file, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDisableLog:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static initStackTraceLogInfo(I)Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;-><init>(Lcom/tencent/gcloud/msdk/tools/MSDKLog$1;)V

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-ltz p0, :cond_1

    .line 98
    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 103
    aget-object v3, v1, p0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logMethodName:Ljava/lang/String;

    .line 104
    aget-object p0, v1, p0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    iput p0, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logLineNumber:I

    const/16 p0, 0x2e

    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".java"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logClassName:Ljava/lang/String;

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isEnable()Z
    .locals 5

    .line 52
    sget-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDebug:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 54
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "MSDKConfig.ini"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 56
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 57
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 58
    const-string v0, "MSDK_DEBUG"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "when read config file, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isDebug:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static printLog(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "type"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->getIsDisableLog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 122
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->initStackTraceLogInfo(I)Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;

    move-result-object v0

    .line 123
    sget-boolean v1, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadedSO:Z

    const/4 v2, 0x6

    const/4 v3, 0x3

    const-string v4, "MSDK"

    if-eqz v1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logClassName:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logMethodName:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logLineNumber:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v4, p1, v1, v0, p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object p1, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logClassName:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logMethodName:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->logLineNumber:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v4, p1, v1, v0, p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_0

    :cond_4
    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method
