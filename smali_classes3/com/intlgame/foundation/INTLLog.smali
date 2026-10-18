.class public Lcom/intlgame/foundation/INTLLog;
.super Ljava/lang/Object;
.source "INTLLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/foundation/INTLLog$LogInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "INTL"

.field private static final STACK_TRACE_DEEP:I = 0x5

.field private static final WARN:I = 0x5

.field private static mActivity:Landroid/app/Activity;

.field private static mEnableConsoleOutput:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 140
    invoke-static {p0, v0}, Lcom/intlgame/foundation/INTLLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 152
    invoke-static {p0, v0}, Lcom/intlgame/foundation/INTLLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method private static escapeMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    const-string v0, "%"

    const-string v1, "%%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 144
    invoke-static {p0, v0}, Lcom/intlgame/foundation/INTLLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method private static initStackTraceLogInfo(I)Lcom/intlgame/foundation/INTLLog$LogInfo;
    .locals 4

    .line 68
    new-instance v0, Lcom/intlgame/foundation/INTLLog$LogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/foundation/INTLLog$LogInfo;-><init>(Lcom/intlgame/foundation/INTLLog$1;)V

    .line 71
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-ltz p0, :cond_1

    .line 75
    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 80
    aget-object v3, v1, p0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logMethodName:Ljava/lang/String;

    .line 81
    aget-object p0, v1, p0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    iput p0, v0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logLineNumber:I

    const/16 p0, 0x2e

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 84
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

    iput-object p0, v0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logClassName:Ljava/lang/String;

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isEnable()Z
    .locals 5

    .line 44
    sget-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    sget-object v0, Lcom/intlgame/foundation/INTLLog;->mEnableConsoleOutput:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 49
    :try_start_0
    sget-object v0, Lcom/intlgame/foundation/INTLLog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "INTLConfig.ini"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 52
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 53
    const-string v0, "LOG_CONSOLE_OUTPUT_ENABLE"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/INTLLog;->mEnableConsoleOutput:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "when read config file, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "INTL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2
    :goto_1
    sget-object v0, Lcom/intlgame/foundation/INTLLog;->mEnableConsoleOutput:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static printLog(Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 92
    sget-boolean v2, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eqz v2, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-static {v6}, Lcom/intlgame/foundation/INTLLog;->initStackTraceLogInfo(I)Lcom/intlgame/foundation/INTLLog$LogInfo;

    move-result-object v2

    .line 94
    sget-object v7, Lcom/intlgame/foundation/swig/LogLevel;->kLogLevelError:Lcom/intlgame/foundation/swig/LogLevel;

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v3, :cond_0

    :goto_0
    move-object v9, v7

    goto :goto_1

    .line 106
    :cond_0
    sget-object v7, Lcom/intlgame/foundation/swig/LogLevel;->kLogLevelError:Lcom/intlgame/foundation/swig/LogLevel;

    goto :goto_0

    .line 103
    :cond_1
    sget-object v7, Lcom/intlgame/foundation/swig/LogLevel;->kLogLevelWarn:Lcom/intlgame/foundation/swig/LogLevel;

    goto :goto_0

    .line 100
    :cond_2
    sget-object v7, Lcom/intlgame/foundation/swig/LogLevel;->kLogLevelInfo:Lcom/intlgame/foundation/swig/LogLevel;

    goto :goto_0

    .line 97
    :cond_3
    sget-object v7, Lcom/intlgame/foundation/swig/LogLevel;->kLogLevelDebug:Lcom/intlgame/foundation/swig/LogLevel;

    goto :goto_0

    .line 109
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/intlgame/foundation/INTLLog;->escapeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 110
    invoke-static {}, Lcom/intlgame/foundation/swig/Log;->GetInstance()Lcom/intlgame/foundation/swig/Log;

    move-result-object v8

    iget-object v13, v2, Lcom/intlgame/foundation/INTLLog$LogInfo;->logClassName:Ljava/lang/String;

    iget-object v14, v2, Lcom/intlgame/foundation/INTLLog$LogInfo;->logMethodName:Ljava/lang/String;

    iget v15, v2, Lcom/intlgame/foundation/INTLLog$LogInfo;->logLineNumber:I

    const-string v10, "INTL"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/intlgame/foundation/swig/Log;->OutputLog(Lcom/intlgame/foundation/swig/LogLevel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 113
    :cond_4
    invoke-static {}, Lcom/intlgame/foundation/INTLLog;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 114
    invoke-static {v6}, Lcom/intlgame/foundation/INTLLog;->initStackTraceLogInfo(I)Lcom/intlgame/foundation/INTLLog$LogInfo;

    move-result-object v2

    .line 115
    const-string v7, "INTL"

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v3, :cond_5

    goto :goto_2

    .line 126
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/intlgame/foundation/INTLLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/intlgame/foundation/INTLLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/intlgame/foundation/INTLLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 117
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/intlgame/foundation/INTLLog$LogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/intlgame/foundation/INTLLog;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 148
    invoke-static {p0, v0}, Lcom/intlgame/foundation/INTLLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method
