.class public Lcom/ihoc/mgpa/toolkit/util/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ToolKit"

.field private static dispatcher:Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher; = null

.field private static enable:Z = false

.field private static localEnable:Z = false

.field private static logOutputStream:Ljava/io/FileOutputStream; = null

.field private static writeToFile:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 8
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    .line 9
    const-string p0, "%s [DEBUG] %s: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->executeWriteLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 10
    sget-boolean p2, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    if-eqz p2, :cond_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-boolean p2, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    if-eqz p2, :cond_2

    .line 16
    sget-object p2, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 17
    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    .line 18
    const-string p0, "%s [DEBUG] %s: %s\n"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->executeWriteLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    .line 5
    const-string p0, "%s [ERROR] %s: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->executeWriteLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    return-void
.end method

.method public static enableLogBySelf(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static executeWriteLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->dispatcher:Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;->dispatch(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    .line 5
    const-string p0, "%s [INFO] %s: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->executeWriteLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isDebugLogOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

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

.method public static varargs print(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printMapData(Ljava/lang/String;Ljava/util/HashMap;)V
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

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->localEnable:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s: %s"

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setPrintFilePath(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;

    .line 2
    sput-boolean v1, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    return-void
.end method

.method public static setSDKTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static setWriteLogTaskDispatcher(Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->dispatcher:Lcom/ihoc/mgpa/toolkit/util/LogUtil$WriteLogTaskDispatcher;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    .line 5
    const-string p0, "%s [WARN] %s: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->executeWriteLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeLogToFile(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
