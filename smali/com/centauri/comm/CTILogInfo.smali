.class public Lcom/centauri/comm/CTILogInfo;
.super Ljava/lang/Object;
.source "CTILogInfo.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "centauriComm<Log>"

.field public static final LOG_VERSION_CODE:I = 0x30da5

.field public static final LOG_VERSION_NAME:Ljava/lang/String; = "2.01.01"


# instance fields
.field private autoFlush:Z

.field private compressLog:Z

.field private context:Landroid/content/Context;

.field private encryptLog:Z

.field private hasWritePermission:Z

.field private logEnable:Z

.field private logPath:Ljava/lang/String;

.field private logTag:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private printLog:Z

.field private processName:Ljava/lang/String;

.field private writeLog:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    .line 30
    const-string v0, "centauri"

    iput-object v0, p0, Lcom/centauri/comm/CTILogInfo;->logTag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->logEnable:Z

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 33
    iput-boolean v2, p0, Lcom/centauri/comm/CTILogInfo;->hasWritePermission:Z

    .line 34
    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->pkgName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->processName:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->writeLog:Z

    .line 37
    iput-boolean v2, p0, Lcom/centauri/comm/CTILogInfo;->printLog:Z

    .line 38
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->compressLog:Z

    .line 39
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->encryptLog:Z

    .line 40
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->autoFlush:Z

    return-void
.end method

.method private initLogPath()V
    .locals 6

    .line 99
    const-string v0, "Log"

    const-string v1, ""

    .line 0
    const-string v2, "centauri"

    .line 99
    :try_start_0
    iget-boolean v3, p0, Lcom/centauri/comm/CTILogInfo;->hasWritePermission:Z

    if-nez v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init log path error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "centauriComm<Log>"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private initPermission()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/centauri/comm/CTILogInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->hasWritePermission:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has WRITE_EXTERNAL_STORAGE? : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/centauri/comm/CTILogInfo;->hasWritePermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "centauriComm<Log>"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPkgName()V
    .locals 4

    .line 55
    const-string v0, "centauriComm<Log>"

    iget-object v1, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 61
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->pkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get pkgName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/centauri/comm/CTILogInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initProcessName()V
    .locals 5

    .line 76
    const-string v0, "centauriComm<Log>"

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_0

    .line 81
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 83
    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/comm/CTILogInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get process name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/centauri/comm/CTILogInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPrintLog(Z)V
    .locals 2

    .line 194
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->printLog:Z

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set print log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWriteLog(Z)V
    .locals 2

    .line 185
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->writeLog:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set write log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    const-string v1, "centauriComm<Log>"

    if-nez v0, :cond_0

    .line 44
    const-string v0, "APLogInfo init failed because of null context"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/centauri/comm/CTILogInfo;->initPkgName()V

    .line 48
    invoke-direct {p0}, Lcom/centauri/comm/CTILogInfo;->initPermission()V

    .line 49
    invoke-direct {p0}, Lcom/centauri/comm/CTILogInfo;->initProcessName()V

    .line 50
    invoke-direct {p0}, Lcom/centauri/comm/CTILogInfo;->initLogPath()V

    .line 51
    const-string v0, "Log lib versionName: 2.01.01 versionCode: 200101"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAutoFlush()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->autoFlush:Z

    return v0
.end method

.method public isCompressLog()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->compressLog:Z

    return v0
.end method

.method public isEncryptLog()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->encryptLog:Z

    return v0
.end method

.method public isHasWritePermission()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->hasWritePermission:Z

    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->logEnable:Z

    return v0
.end method

.method public isPrintLog()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->printLog:Z

    return v0
.end method

.method public isWriteLog()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->writeLog:Z

    return v0
.end method

.method public setAutoFlush(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->autoFlush:Z

    return-void
.end method

.method public setCompressLog(Z)V
    .locals 2

    .line 219
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->compressLog:Z

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set compress log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/comm/CTILogInfo;->context:Landroid/content/Context;

    return-void
.end method

.method public setEncryptKey(Ljava/lang/String;)V
    .locals 0

    .line 237
    invoke-static {p1}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->setEncryptKey(Ljava/lang/String;)V

    return-void
.end method

.method public setEncryptLog(Z)V
    .locals 2

    .line 228
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->encryptLog:Z

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set encrypt log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEncryptProtocolVersion(B)V
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->setProtocolVersion(B)V

    return-void
.end method

.method public setLogEnable(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/centauri/comm/CTILogInfo;->logEnable:Z

    return-void
.end method

.method public setLogFileKeepDays(I)V
    .locals 2

    .line 255
    sput p1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set log file keep days: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLogFileNum(I)V
    .locals 2

    .line 250
    sput p1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set log file num: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLogFileSizeMB(I)V
    .locals 2

    .line 245
    sput p1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set log file size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " MB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLogParamFromServer(Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/centauri/comm/CTILogInfo;->setLogWrite(Ljava/lang/String;)V

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/centauri/comm/CTILogInfo;->logPath:Ljava/lang/String;

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/centauri/comm/CTILogInfo;->logTag:Ljava/lang/String;

    return-void
.end method

.method public setLogWrite(Ljava/lang/String;)V
    .locals 3

    .line 176
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x3

    :goto_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_1
    invoke-direct {p0, v0}, Lcom/centauri/comm/CTILogInfo;->setPrintLog(Z)V

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 181
    :cond_1
    invoke-direct {p0, v1}, Lcom/centauri/comm/CTILogInfo;->setWriteLog(Z)V

    return-void
.end method

.method public shouldPrintLog()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->logEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/centauri/comm/CTILogInfo;->printLog:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/centauri/comm/log/CTILogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->isDebugMode(Ljava/lang/String;)Z

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
