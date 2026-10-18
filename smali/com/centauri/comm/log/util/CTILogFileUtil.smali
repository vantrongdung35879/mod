.class public Lcom/centauri/comm/log/util/CTILogFileUtil;
.super Ljava/lang/Object;
.source "CTILogFileUtil.java"


# static fields
.field private static final DEBUG_CONF:Ljava/lang/String; = "centauriLogDebug.ini"

.field private static final DEFAULT_MAX_LOG_FILE_NUM:I = 0x2

.field private static final DEFAULT_MAX_LOG_FILE_SIZE_MB:I = 0x1

.field private static final DEFAULT_MAX_LOG_KEEP_DAYS:I = 0xf

.field public static final SEPARATOR_LINE:Ljava/lang/String; = "\r\n"

.field public static final SEPARATOR_LOG:Ljava/lang/String; = " | "

.field private static maxDirSizeMB:I = 0x0

.field public static maxLogFileNum:I = 0x2

.field public static maxLogFileSizeMB:I = 0x1

.field public static maxLogKeepDays:I = 0xf

.field public static minSDCardSpace:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    mul-int/lit8 v0, v0, 0x2

    .line 34
    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxDirSizeMB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFileUpMaxInDir(Ljava/lang/String;JJI)V
    .locals 9

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 206
    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileOrFilesSize(Ljava/lang/String;)D

    move-result-wide v1

    long-to-double p3, p3

    const/4 p0, 0x0

    cmpl-double v3, v1, p3

    if-ltz v3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 213
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 214
    array-length v0, p4

    if-nez v0, :cond_2

    goto :goto_2

    .line 217
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 219
    array-length v2, p4

    :goto_1
    if-ge p0, v2, :cond_6

    aget-object v3, p4, p0

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "centauriLog.mmap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p3, :cond_3

    sub-long v4, v0, v4

    const v6, 0x5265c00

    mul-int v6, v6, p5

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    invoke-static {v3}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    cmp-long v6, v4, p1

    if-ltz v6, :cond_4

    .line 223
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public static deleteOldFileToday(Ljava/lang/String;)V
    .locals 1

    .line 117
    sget v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    invoke-static {p0, v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->deleteOldFileToday(Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteOldFileToday(Ljava/lang/String;I)V
    .locals 6

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p0, v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    if-lez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "centauriComm<Log>"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v3, v0, p1

    if-ge v1, v3, :cond_0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "delete: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getConfValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 7

    .line 255
    const-string v0, "centauriComm<Log>"

    const/4 v1, 0x0

    .line 256
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 259
    :try_start_0
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Read log conf[%s]: %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    move p2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 265
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p0, v3, v1

    const-string p0, "Read log conf[%s] error: %s"

    invoke-static {v4, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return p2
.end method

.method public static getFileOrFilesSize(Ljava/lang/String;)D
    .locals 4

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-static {v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x400

    .line 57
    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p0

    int-to-long v0, p0

    .line 66
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-wide v0
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 5

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 79
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 80
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 83
    :cond_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getLastLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 153
    new-instance p0, Lcom/centauri/comm/log/util/CTILogFileUtil$1;

    invoke-direct {p0, p1}, Lcom/centauri/comm/log/util/CTILogFileUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 159
    new-instance p1, Lcom/centauri/comm/log/util/CTILogFileUtil$2;

    invoke-direct {p1}, Lcom/centauri/comm/log/util/CTILogFileUtil$2;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 183
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getSDCardSpace()D
    .locals 4

    .line 98
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 103
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    .line 107
    div-long/2addr v0, v2

    div-long/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSDCardSpace: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "centauriComm<Log>"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    long-to-double v0, v0

    return-wide v0
.end method

.method public static getToday()Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 188
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 189
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initLogDir(Ljava/lang/String;)Z
    .locals 8

    .line 234
    const-string v0, "centauriComm<Log>"

    .line 0
    const-string v1, "create log dir result: "

    .line 234
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result p0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 240
    :cond_0
    sget v1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    int-to-long v3, v1

    sget v1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxDirSizeMB:I

    int-to-long v5, v1

    sget v7, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/centauri/comm/log/util/CTILogFileUtil;->deleteFileUpMaxInDir(Ljava/lang/String;JJI)V

    .line 241
    sget v1, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    invoke-static {p0, v1}, Lcom/centauri/comm/log/util/CTILogFileUtil;->deleteOldFileToday(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init log dir error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isDebugMode(Ljava/lang/String;)Z
    .locals 2

    .line 251
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "centauriLogDebug.ini"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static readLogKeepConf(Landroid/content/Context;)V
    .locals 9

    .line 272
    sget v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    .line 273
    sget v2, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    const/4 v3, 0x2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    sput v2, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    .line 274
    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0xf

    :goto_2
    sput v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    mul-int v0, v0, v2

    mul-int v0, v0, v4

    .line 275
    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxDirSizeMB:I

    .line 276
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sget v2, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v4, v7, v1

    aput-object v5, v7, v3

    const-string v2, "current config: max log size: %d MB, max log num: %d, max keep %d DAYS"

    invoke-static {v0, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "centauriComm<Log>"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v0, "Unipay"

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 280
    const-string/jumbo v0, "size"

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    invoke-static {p0, v0, v4}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getConfValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    .line 281
    const-string v0, "num"

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    invoke-static {p0, v0, v4}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getConfValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    .line 282
    const-string v0, "log_keep_time"

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    invoke-static {p0, v0, v4}, Lcom/centauri/comm/log/util/CTILogFileUtil;->getConfValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    .line 283
    sget v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    mul-int v0, v0, v4

    mul-int v0, v0, p0

    sput v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxDirSizeMB:I

    .line 285
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sget v0, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v4, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogKeepDays:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v4, v6, v1

    aput-object v5, v6, v3

    const-string v0, "final config: max log size: %d MB, max log num: %d, max keep %d DAYS"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
