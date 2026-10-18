.class public final Lcom/tencent/mna/base/utils/d;
.super Ljava/lang/Object;
.source "PerfUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/d;->e(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    return v0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/d;->b(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_2

    return v0

    :cond_2
    const-wide/16 v3, 0x64

    mul-long v5, v5, v3

    .line 29
    div-long/2addr v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v5

    return p0

    :catch_0
    move-exception p0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getProcessMemUsage exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v0
.end method

.method public static a()J
    .locals 4

    .line 33
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static a(JJ)[J
    .locals 11

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [J

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v1

    const/4 v2, 0x2

    aput-wide v4, v0, v2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->g()J

    move-result-wide v6

    .line 4
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->c()J

    move-result-wide v8

    sub-long p0, v6, p0

    sub-long p2, v8, p2

    cmp-long v10, p0, v4

    if-lez v10, :cond_1

    cmp-long v10, p2, v4

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long p2, p2, v4

    .line 12
    div-long/2addr p2, p0

    aput-wide p2, v0, v3

    .line 13
    aput-wide v6, v0, v1

    .line 14
    aput-wide v8, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getProcessCpuUsage exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static b()I
    .locals 10

    const-string v0, "/proc/mali/utilization"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/kgsl/kgsl-3d0"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    const/16 v5, 0x400

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 21
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/kgsl/kgsl-3d0/gpubusy"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 26
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    .line 27
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    cmp-long v4, v5, v8

    if-ltz v4, :cond_0

    long-to-double v4, v5

    long-to-double v2, v2

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v2

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v7, v1

    :cond_0
    move-object v2, v0

    move v1, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_0
    nop

    move-object v2, v0

    goto :goto_3

    .line 36
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "get gpu usage failed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_2

    :catch_1
    nop

    move-object v2, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 55
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 60
    :catch_2
    :cond_4
    throw v1

    :catch_3
    nop

    :goto_3
    if-eqz v2, :cond_5

    .line 55
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_5
    return v1
.end method

.method private static b(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 61
    :cond_0
    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 63
    filled-new-array {v2}, [I

    move-result-object v2

    if-nez p0, :cond_1

    return-wide v0

    .line 67
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 68
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    aget-object p0, p0, v2

    if-nez p0, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x400

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get process Memory error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_1
    return-wide v0
.end method

.method public static b(JJ)[J
    .locals 11

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [J

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v1

    const/4 v2, 0x2

    aput-wide v4, v0, v2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->f()[J

    move-result-object v6

    .line 4
    aget-wide v7, v6, v3

    .line 5
    aget-wide v9, v6, v1

    sub-long p0, v7, p0

    sub-long p2, v9, p2

    cmp-long v6, p0, v4

    if-lez v6, :cond_1

    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long p2, p2, v4

    .line 13
    div-long/2addr p2, p0

    aput-wide p2, v0, v3

    .line 14
    aput-wide v7, v0, v1

    .line 15
    aput-wide v9, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getSystemCpuUsage exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/d;->d(Landroid/content/Context;)[J

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    aget-wide v1, p0, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const/4 v5, 0x1

    aget-wide v5, p0, v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x64

    mul-long v5, v5, v3

    .line 7
    div-long/2addr v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v5

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSystemMemUsage exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v0
.end method

.method private static c()J
    .locals 10

    const-string v0, "/proc/"

    const-string v1, "getProcessCpuTime exception:"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 11
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/stat"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-direct {v7, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x400

    invoke-direct {v6, v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 44
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-wide v2

    :cond_1
    const/16 v4, 0xd

    .line 45
    :try_start_3
    aget-object v4, v0, v4

    const/16 v5, 0xe

    .line 46
    aget-object v5, v0, v5

    const/16 v7, 0xf

    .line 47
    aget-object v7, v0, v7

    const/16 v8, 0x10

    .line 48
    aget-object v0, v0, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "0"

    if-eqz v4, :cond_2

    .line 49
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    :cond_2
    move-object v4, v8

    :cond_3
    if-eqz v5, :cond_4

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    :cond_4
    move-object v5, v8

    :cond_5
    if-eqz v7, :cond_6

    .line 55
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_7

    :cond_6
    move-object v7, v8

    :cond_7
    if-eqz v0, :cond_8

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    :cond_8
    move-object v0, v8

    .line 61
    :cond_9
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v8, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v8, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v8, v0

    .line 67
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-wide v8

    :cond_a
    :goto_0
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-wide v2

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    .line 68
    :goto_1
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_b

    .line 72
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_b
    return-wide v2

    :goto_2
    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 77
    :catch_6
    :cond_c
    throw v0
.end method

.method public static d()[J
    .locals 15

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [J

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v1

    const/4 v2, 0x2

    aput-wide v4, v0, v2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->g()J

    move-result-wide v6

    .line 4
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->c()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v10, 0x168

    .line 6
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->g()J

    move-result-wide v10

    .line 12
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->c()J

    move-result-wide v12

    sub-long v6, v10, v6

    sub-long v8, v12, v8

    cmp-long v14, v6, v4

    if-lez v14, :cond_1

    cmp-long v14, v8, v4

    if-gez v14, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long v8, v8, v4

    .line 20
    div-long/2addr v8, v6

    aput-wide v8, v0, v3

    .line 21
    aput-wide v10, v0, v1

    .line 22
    aput-wide v12, v0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcessCpuUsage() exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;)[J
    .locals 11

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 32
    :try_start_0
    sget v3, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    .line 33
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    return-object v0

    .line 37
    :cond_1
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 38
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 42
    iget-wide v5, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    aput-wide v5, v0, v1

    .line 43
    iget-wide v9, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v9, v7

    sub-long/2addr v5, v9

    aput-wide v5, v0, v4

    goto :goto_3

    .line 45
    :cond_2
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_3

    goto :goto_4

    .line 53
    :cond_3
    const-string v5, "(\\d+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 55
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const-string v5, "0"

    move-object v6, v5

    .line 58
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 59
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object v2, v5

    if-nez v6, :cond_5

    move-object v6, v2

    .line 64
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 65
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v2

    .line 71
    :goto_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 72
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    div-long/2addr v8, v6

    sub-long/2addr v2, v8

    aput-wide v2, v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p0

    :goto_3
    if-eqz v2, :cond_9

    goto :goto_6

    .line 79
    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v2, p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v1, p0

    .line 80
    :goto_5
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTotalAndUsedMemoryInMB exception:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_9

    .line 79
    :goto_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_9
    return-object v0

    :goto_7
    move-object v0, p0

    move-object p0, v2

    :goto_8
    if-eqz p0, :cond_a

    .line 84
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 89
    :catch_4
    :cond_a
    throw v0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 2

    .line 29
    invoke-static {p0}, Lcom/tencent/mna/base/utils/d;->d(Landroid/content/Context;)[J

    move-result-object p0

    if-eqz p0, :cond_0

    .line 30
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 31
    aget-wide v0, p0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static e()[J
    .locals 15

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [J

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v1

    const/4 v2, 0x2

    aput-wide v4, v0, v2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->f()[J

    move-result-object v6

    .line 5
    aget-wide v7, v6, v3

    .line 6
    aget-wide v9, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v11, 0x168

    .line 8
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->f()[J

    move-result-object v6

    .line 14
    aget-wide v11, v6, v3

    .line 15
    aget-wide v13, v6, v1

    sub-long v6, v11, v7

    sub-long v8, v13, v9

    cmp-long v10, v6, v4

    if-lez v10, :cond_1

    cmp-long v10, v8, v4

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long v8, v8, v4

    .line 23
    div-long/2addr v8, v6

    aput-wide v8, v0, v3

    .line 24
    aput-wide v11, v0, v1

    .line 25
    aput-wide v13, v0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSystemCpuUsage() exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private static f()[J
    .locals 15

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    .line 3
    sget v3, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v4, 0x18

    if-le v3, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/stat"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    goto/16 :goto_1

    .line 13
    :cond_1
    const-string v6, "\\s+"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 14
    array-length v6, v3

    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    goto/16 :goto_0

    .line 20
    :cond_2
    aget-object v6, v3, v5

    .line 21
    aget-object v0, v3, v0

    const/4 v7, 0x3

    .line 22
    aget-object v7, v3, v7

    const/4 v8, 0x4

    .line 23
    aget-object v8, v3, v8

    const/4 v9, 0x5

    .line 24
    aget-object v9, v3, v9

    const/4 v10, 0x6

    .line 25
    aget-object v10, v3, v10

    const/4 v11, 0x7

    .line 26
    aget-object v3, v3, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "0"

    if-eqz v6, :cond_3

    .line 27
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_4

    :cond_3
    move-object v6, v11

    :cond_4
    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_6

    :cond_5
    move-object v0, v11

    :cond_6
    if-eqz v7, :cond_7

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_8

    :cond_7
    move-object v7, v11

    :cond_8
    if-eqz v8, :cond_9

    .line 36
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_a

    :cond_9
    move-object v8, v11

    :cond_a
    if-eqz v9, :cond_b

    .line 39
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_c

    :cond_b
    move-object v9, v11

    :cond_c
    if-eqz v10, :cond_d

    .line 42
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_e

    :cond_d
    move-object v10, v11

    :cond_e
    if-eqz v3, :cond_f

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_10

    :cond_f
    move-object v3, v11

    .line 50
    :cond_10
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v11, v6

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v11, v6

    .line 51
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v11, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v11, v6

    aput-wide v11, v1, v5

    .line 53
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v11, v5

    aput-wide v11, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :cond_11
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1

    :cond_12
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-object v1

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_2
    nop

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_13

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :catch_3
    :cond_13
    throw v0

    :catch_4
    nop

    :goto_3
    if-eqz v3, :cond_14

    .line 65
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_14
    :goto_4
    return-object v1
.end method

.method private static g()J
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->f()[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static h()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
