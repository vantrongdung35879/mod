.class public Lcom/centauri/oversea/comm/GDPR;
.super Ljava/lang/Object;
.source "GDPR.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GDPR"

.field private static cacheUserIp:Ljava/lang/String; = ""

.field private static cpuInfo:[Ljava/lang/String; = null

.field private static device:Ljava/lang/String; = ""

.field private static deviceGuid:Ljava/lang/String; = ""

.field private static deviceInfo:Ljava/lang/String; = ""

.field private static deviceManufacturer:Ljava/lang/String; = ""

.field private static deviceName:Ljava/lang/String; = ""

.field private static deviceType:Ljava/lang/String; = ""

.field public static ifCollect:Z = true

.field private static sysVersion:Ljava/lang/String; = ""

.field private static uuid:Ljava/lang/String; = null

.field private static wifiSSid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    .line 59
    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->uuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailMemory2(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 242
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 247
    :cond_0
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 249
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 250
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 252
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static getCpuInfo()[Ljava/lang/String;
    .locals 12

    .line 308
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    return-object v0

    .line 312
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 318
    :cond_1
    const-string v0, "/proc/cpuinfo"

    const/4 v3, 0x0

    .line 324
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 325
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x2

    .line 327
    const-string v6, "\\s+"

    const-string v7, ""

    if-eqz v3, :cond_2

    .line 328
    :try_start_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    .line 329
    :goto_0
    array-length v9, v3

    if-ge v8, v9, :cond_3

    .line 330
    sget-object v9, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 334
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    aget-object v9, v8, v1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    .line 337
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 339
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 341
    array-length v3, v1

    const/4 v6, 0x3

    if-lt v3, v6, :cond_4

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    aget-object v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    goto :goto_1

    .line 344
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    aget-object v5, v3, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    goto :goto_1

    .line 347
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    aget-object v5, v3, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 357
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catchall_0
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catch_0
    nop

    move-object v3, v0

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    nop

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v3

    :goto_2
    if-eqz v3, :cond_6

    .line 354
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 357
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 360
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    :cond_7
    :goto_5
    throw v1

    :catch_3
    nop

    move-object v4, v3

    :goto_6
    if-eqz v3, :cond_8

    .line 354
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 357
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 360
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    :cond_9
    :goto_9
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    return-object v0

    .line 315
    :cond_a
    :goto_a
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cpuInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 121
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 122
    const-string v0, ""

    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->device:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->device:Ljava/lang/String;

    return-object v0

    .line 129
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->device:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 411
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    .line 419
    :cond_1
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    sget-object p0, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    return-object p0

    .line 431
    :cond_2
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CentauriOversea"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "GUID"

    if-eqz v0, :cond_4

    .line 432
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 443
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 447
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 448
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v8, v7

    new-array v7, v8, [B

    .line 450
    invoke-virtual {v5, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 451
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 452
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    sput-object v5, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    .line 457
    :cond_6
    sget-object v5, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 459
    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getUUID()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 464
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 467
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_9

    .line 474
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_a

    .line 478
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 482
    :cond_a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 483
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 484
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    :catch_0
    :cond_b
    sget-object p0, Lcom/centauri/oversea/comm/GDPR;->deviceGuid:Ljava/lang/String;

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 135
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 136
    const-string p0, ""

    return-object p0

    .line 139
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    sget-object p0, Lcom/centauri/oversea/comm/GDPR;->deviceInfo:Ljava/lang/String;

    return-object p0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&androidSdkVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDevice()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    const-string v2, "&device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    const-string v1, "&manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getSysVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "&showModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "&phoneIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getLocalIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p0}, Lcom/centauri/oversea/comm/GDPR;->getAvailMemory2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    const-string v2, "&availableMemory="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_3
    invoke-static {p0}, Lcom/centauri/oversea/comm/GDPR;->getTotalMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 167
    const-string v1, "&totalMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getCpuInfo()[Ljava/lang/String;

    move-result-object p0

    .line 172
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 173
    const-string v1, "&cup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "&cupFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/centauri/oversea/comm/GDPR;->deviceInfo:Ljava/lang/String;

    return-object p0
.end method

.method public static getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 107
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 108
    const-string v0, ""

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceManufacturer:Ljava/lang/String;

    return-object v0

    .line 115
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .line 78
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 79
    const-string v0, ""

    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceName:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_1
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .line 63
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 64
    const-string v0, ""

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceType:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalIp()Ljava/lang/String;
    .locals 5

    .line 207
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 211
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cacheUserIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->cacheUserIp:Ljava/lang/String;

    return-object v0

    .line 217
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 223
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 224
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 226
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_3

    .line 227
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->cacheUserIp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public static getSysVersion()Ljava/lang/String;
    .locals 1

    .line 93
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    return-object v0

    .line 96
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->sysVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->sysVersion:Ljava/lang/String;

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 262
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 263
    const-string p0, ""

    return-object p0

    .line 266
    :cond_0
    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 273
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 274
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 279
    const-string v5, "\\s+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 280
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 283
    array-length v1, v5

    const/4 v6, 0x2

    if-lt v1, v6, :cond_2

    const/4 v1, 0x1

    .line 284
    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 292
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 295
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_1
    nop

    move-object v1, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    nop

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v4, v1

    :goto_1
    if-eqz v1, :cond_3

    .line 292
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 295
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 298
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    :cond_4
    :goto_4
    throw p0

    :catch_4
    nop

    move-object v4, v1

    :goto_5
    if-eqz v1, :cond_5

    .line 292
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 302
    :cond_6
    :goto_6
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .line 369
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-nez v0, :cond_0

    .line 370
    const-string v0, ""

    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->uuid:Ljava/lang/String;

    return-object v0

    .line 379
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GDPR;->uuid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :catch_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 183
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    sget-object v0, Lcom/centauri/oversea/comm/GDPR;->wifiSSid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    sget-object p0, Lcom/centauri/oversea/comm/GDPR;->wifiSSid:Ljava/lang/String;

    return-object p0

    .line 192
    :cond_1
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 195
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/centauri/oversea/comm/GDPR;->wifiSSid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method
