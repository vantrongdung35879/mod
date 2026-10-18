.class public Lcom/centauri/comm/CTILog;
.super Ljava/lang/Object;
.source "CTILog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/comm/CTILog$ILogCallback;
    }
.end annotation


# static fields
.field public static iLogCallback:Lcom/centauri/comm/CTILog$ILogCallback;

.field private static logInfo:Lcom/centauri/comm/CTILogInfo;

.field private static logger:Lcom/centauri/comm/log/internal/CTILogger;

.field private static shouldPrintLog:Z

.field private static shouldWriteLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/centauri/comm/CTILogInfo;

    invoke-direct {v0}, Lcom/centauri/comm/CTILogInfo;-><init>()V

    sput-object v0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .locals 0

    .line 190
    invoke-static {}, Lcom/centauri/comm/CTILog;->flush()V

    return-void
.end method

.method private static composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 75
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 82
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    .line 155
    sget-object p1, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$ILogCallback;

    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1, p0}, Lcom/centauri/comm/CTILog$ILogCallback;->logCallback(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs dc(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 161
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 114
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 121
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static flush()V
    .locals 4

    .line 195
    const-string v0, "centauriComm<Log>"

    :try_start_0
    sget-object v1, Lcom/centauri/comm/CTILog;->logger:Lcom/centauri/comm/log/internal/CTILogger;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/centauri/comm/log/internal/CTILogger;->flush()V

    .line 197
    const-string v1, "Log flushing...!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flush log error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getLogInfo()Lcom/centauri/comm/CTILogInfo;
    .locals 1

    .line 56
    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 62
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/centauri/comm/CTILogInfo;)V
    .locals 3

    .line 28
    const-string v0, "centauriComm<Log>"

    :try_start_0
    const-string v1, "Log init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 30
    const-string p0, "Log init failed: info null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    sput-object p0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    .line 36
    invoke-virtual {p0}, Lcom/centauri/comm/CTILogInfo;->init()V

    .line 38
    invoke-static {}, Lcom/centauri/comm/log/CTILogFileInfo;->create()V

    .line 40
    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p0}, Lcom/centauri/comm/CTILogInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->readLogKeepConf(Landroid/content/Context;)V

    .line 42
    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p0}, Lcom/centauri/comm/CTILogInfo;->shouldPrintLog()Z

    move-result p0

    sput-boolean p0, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    .line 44
    sget-object p0, Lcom/centauri/comm/log/CTILogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {p0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->initLogDir(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 45
    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p0}, Lcom/centauri/comm/CTILogInfo;->isWriteLog()Z

    move-result p0

    sput-boolean p0, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    .line 46
    invoke-static {}, Lcom/centauri/comm/log/internal/CTILogger;->open()Lcom/centauri/comm/log/internal/CTILogger;

    move-result-object p0

    sput-object p0, Lcom/centauri/comm/CTILog;->logger:Lcom/centauri/comm/log/internal/CTILogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log init failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeILogCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    sput-object v0, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$ILogCallback;

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 145
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-boolean p2, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    .line 128
    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p0}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs s(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 134
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/centauri/comm/CTILog;->s(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setILogCallback(Lcom/centauri/comm/CTILog$ILogCallback;)V
    .locals 0

    .line 214
    sput-object p0, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$ILogCallback;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 88
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    .line 101
    sget-object p1, Lcom/centauri/comm/CTILog;->logInfo:Lcom/centauri/comm/CTILogInfo;

    invoke-virtual {p1}, Lcom/centauri/comm/CTILogInfo;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p1, p0}, Lcom/centauri/comm/log/internal/CTILogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 108
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static write(Ljava/lang/String;)V
    .locals 2

    .line 178
    :try_start_0
    sget-object v0, Lcom/centauri/comm/CTILog;->logger:Lcom/centauri/comm/log/internal/CTILogger;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Lcom/centauri/comm/log/internal/CTILogger;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Log write error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static writeLog(Ljava/lang/String;)V
    .locals 1

    .line 167
    sget-boolean v0, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
