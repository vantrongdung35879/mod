.class public final Lcom/tencent/gsdk/z0;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/z0$f;,
        Lcom/tencent/gsdk/z0$e;,
        Lcom/tencent/gsdk/z0$c;,
        Lcom/tencent/gsdk/z0$d;,
        Lcom/tencent/gsdk/z0$g;,
        Lcom/tencent/gsdk/z0$b;
    }
.end annotation


# static fields
.field private static a:I = -0x2

.field private static b:I = -0x2

.field private static c:[I = null

.field private static d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:J = -0x2L

.field private static f:Lcom/tencent/gsdk/z0$f; = null

.field private static g:J = -0x2L

.field private static h:J = -0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget v0, Lcom/tencent/gsdk/z0;->a:I

    const/4 v1, -0x2

    if-ne v1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/z0;->f()I

    move-result v0

    sput v0, Lcom/tencent/gsdk/z0;->a:I

    .line 4
    :cond_0
    sget v0, Lcom/tencent/gsdk/z0;->a:I

    return v0
.end method

.method private static a(J)J
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, p0

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x1

    sub-long v4, p0, v0

    const-wide/16 v6, 0xa

    .line 24
    :try_start_0
    div-long/2addr v4, v6

    .line 25
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 26
    div-long/2addr p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 28
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "correctTemperatureFrom0to100 failed"

    invoke-static {p0, v0, p1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v2
.end method

.method public static a(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 29
    :cond_0
    :try_start_0
    const-string v2, "activity"

    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    return-wide v0

    .line 34
    :cond_1
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 35
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 36
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "availableMemoryInMB failed"

    invoke-static {p0, v3, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "UTF-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->b(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 15
    :goto_0
    :try_start_3
    const-string v1, "getTemperature failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    .line 19
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-wide v2

    :goto_2
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 23
    :catch_3
    :cond_1
    throw p0
.end method

.method public static b(J)F
    .locals 10

    const/high16 v0, -0x40800000    # -1.0f

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p0

    if-lez v3, :cond_0

    return v0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/z0$g;->a()Lcom/tencent/gsdk/z0$g;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/tencent/gsdk/z0$g;->c()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    return v0

    .line 10
    :cond_1
    invoke-static {}, Lcom/tencent/gsdk/z0$d;->a()Lcom/tencent/gsdk/z0$d;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Lcom/tencent/gsdk/z0$d;->b()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    return v0

    .line 16
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    :try_start_2
    const-string p1, "getMyCpuUsageRate failed"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v8}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    invoke-static {}, Lcom/tencent/gsdk/z0$g;->a()Lcom/tencent/gsdk/z0$g;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/tencent/gsdk/z0$g;->c()J

    move-result-wide p0

    cmp-long v8, v1, p0

    if-lez v8, :cond_3

    return v0

    .line 25
    :cond_3
    invoke-static {}, Lcom/tencent/gsdk/z0$d;->a()Lcom/tencent/gsdk/z0$d;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Lcom/tencent/gsdk/z0$d;->b()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v3, v1, v8

    if-lez v3, :cond_4

    return v0

    :cond_4
    sub-long/2addr p0, v4

    cmp-long v3, v1, p0

    if-nez v3, :cond_5

    return v0

    :cond_5
    sub-long/2addr v8, v6

    const-wide/16 v0, 0x64

    mul-long v8, v8, v0

    long-to-float v0, v8

    long-to-float p0, p0

    const/4 p1, 0x0

    add-float/2addr p0, p1

    div-float/2addr v0, p0

    return v0

    :catch_1
    move-exception p0

    .line 38
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "getTotalCpuUsageRate failed"

    invoke-static {p0, v1, p1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 42
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 47
    :cond_1
    const-string/jumbo v1, "temperature"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    div-int/lit8 v0, v0, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "batteryTemperature failed"

    invoke-static {p0, v2, v1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 2

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/gsdk/z0;->a(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getTemperatureFromRaw failed"

    invoke-static {p0, v1, v0}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/gsdk/z0;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/z0;->h()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z0;->d:Ljava/util/Map;

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/gsdk/z0;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static c(J)F
    .locals 12

    const-string v0, "getTotalCpuUsageRate failed"

    const/high16 v1, -0x40800000    # -1.0f

    const-wide/16 v2, 0x0

    cmp-long v4, v2, p0

    if-lez v4, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/z0$g;->a()Lcom/tencent/gsdk/z0$g;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/tencent/gsdk/z0$g;->b()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    return v1

    .line 10
    :cond_1
    invoke-virtual {v5}, Lcom/tencent/gsdk/z0$g;->c()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    return v1

    .line 15
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    :try_start_2
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :goto_0
    invoke-static {}, Lcom/tencent/gsdk/z0$g;->a()Lcom/tencent/gsdk/z0$g;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/tencent/gsdk/z0$g;->b()J

    move-result-wide v10

    cmp-long p1, v2, v10

    if-lez p1, :cond_3

    return v1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/gsdk/z0$g;->c()J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v0, v2, p0

    if-lez v0, :cond_4

    return v1

    :cond_4
    sub-long/2addr p0, v8

    cmp-long v0, v2, p0

    if-nez v0, :cond_5

    return v1

    :cond_5
    sub-long/2addr v10, v6

    const-wide/16 v0, 0x64

    mul-long v10, v10, v0

    long-to-float v0, v10

    long-to-float p0, p0

    const/4 p1, 0x0

    add-float/2addr p0, p1

    div-float/2addr v0, p0

    return v0

    :catch_1
    move-exception p0

    .line 36
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static c()I
    .locals 2

    .line 1
    sget v0, Lcom/tencent/gsdk/z0;->b:I

    const/4 v1, -0x2

    if-ne v1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/z0;->i()I

    move-result v0

    sput v0, Lcom/tencent/gsdk/z0;->b:I

    .line 4
    :cond_0
    sget v0, Lcom/tencent/gsdk/z0;->b:I

    return v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 5

    .line 37
    sget-wide v0, Lcom/tencent/gsdk/z0;->h:J

    const-wide/16 v2, -0x2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 38
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->d(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/gsdk/z0;->h:J

    .line 40
    :cond_0
    sget-wide v0, Lcom/tencent/gsdk/z0;->h:J

    return-wide v0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getFreeExternalStorageInMB failed"

    invoke-static {p0, v3, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method public static d()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/z0;->c:[I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/z0;->j()[I

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z0;->c:[I

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/gsdk/z0;->c:[I

    return-object v0
.end method

.method public static e()J
    .locals 2

    .line 1
    const-string v0, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    invoke-static {v0}, Lcom/tencent/gsdk/z0;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Lcom/tencent/gsdk/z0$f;
    .locals 2

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/gsdk/z0$f;->c:Lcom/tencent/gsdk/z0$f;

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    const-string/jumbo v0, "window"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_1

    .line 8
    sget-object p0, Lcom/tencent/gsdk/z0$f;->c:Lcom/tencent/gsdk/z0$f;

    return-object p0

    .line 10
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 12
    new-instance p0, Lcom/tencent/gsdk/z0$f;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v0}, Lcom/tencent/gsdk/z0$f;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GetScreenResolution failed"

    invoke-static {p0, v1, v0}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    sget-object p0, Lcom/tencent/gsdk/z0$f;->c:Lcom/tencent/gsdk/z0$f;

    return-object p0
.end method

.method private static f()I
    .locals 1

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method private static f(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getTotalExternalStorageInMB failed"

    invoke-static {p0, v3, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private static g()I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/gsdk/z0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/gsdk/z0$b;-><init>(Lcom/tencent/gsdk/z0$a;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getAvailableProcessorsBeforeJBMR1 failed"

    invoke-static {v0, v2, v1}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static g(Landroid/content/Context;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->h(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static h(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, -0x1

    .line 32
    :try_start_0
    const-string v2, "activity"

    .line 33
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_0

    return-wide v0

    .line 37
    :cond_0
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 38
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 39
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v4, 0x100000

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getTotalMemoryInMBJB failed"

    invoke-static {p0, v3, v2}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private static h()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/o;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v5, v4, :cond_0

    .line 10
    aget-object v4, v2, v1

    const/4 v5, 0x1

    .line 11
    aget-object v2, v2, v5

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    .line 23
    :goto_1
    :try_start_2
    const-string v4, "getCpuInfos failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    move-object v3, v2

    .line 22
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    return-object v0

    :goto_2
    if-eqz v2, :cond_3

    .line 27
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 31
    :catch_3
    :cond_3
    throw v0
.end method

.method private static i()I
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->d()[I

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-le v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static i(Landroid/content/Context;)Lcom/tencent/gsdk/z0$f;
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/gsdk/z0;->f:Lcom/tencent/gsdk/z0$f;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->e(Landroid/content/Context;)Lcom/tencent/gsdk/z0$f;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/z0;->f:Lcom/tencent/gsdk/z0$f;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static j(Landroid/content/Context;)J
    .locals 5

    .line 33
    sget-wide v0, Lcom/tencent/gsdk/z0;->g:J

    const-wide/16 v2, -0x2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 34
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->f(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/gsdk/z0;->g:J

    .line 36
    :cond_0
    sget-wide v0, Lcom/tencent/gsdk/z0;->g:J

    return-wide v0
.end method

.method private static j()[I
    .locals 9

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    .line 7
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v7, v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v5, v4

    move-object v4, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    .line 18
    :goto_1
    :try_start_3
    const-string v6, "getCpuMaxFreqs for processor %d failed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v5, v6, v8}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    .line 22
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    const/4 v4, -0x1

    .line 27
    :catch_3
    :goto_2
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    if-eqz v4, :cond_1

    .line 28
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 32
    :catch_4
    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method private static k()J
    .locals 7

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-wide v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 22
    :goto_0
    :try_start_3
    const-string v2, "getTotalMemoryInMBBeforeJB failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 21
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_2

    .line 26
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 30
    :catch_4
    :cond_2
    throw v1
.end method

.method public static k(Landroid/content/Context;)J
    .locals 5

    .line 1
    sget-wide v0, Lcom/tencent/gsdk/z0;->e:J

    const-wide/16 v2, -0x2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/z0;->g(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/gsdk/z0;->e:J

    .line 4
    :cond_0
    sget-wide v0, Lcom/tencent/gsdk/z0;->e:J

    return-wide v0
.end method

.method public static l()J
    .locals 2

    .line 1
    const-string v0, "/sys/class/thermal/thermal_zone10/temp"

    invoke-static {v0}, Lcom/tencent/gsdk/z0;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()F
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/z0$e;->a:Lcom/tencent/gsdk/z0$e;

    invoke-virtual {v0}, Lcom/tencent/gsdk/z0$e;->b()F

    move-result v0

    return v0
.end method

.method public static n()F
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/gsdk/z0;->b(J)F

    move-result v0

    return v0
.end method

.method public static o()J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 2
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    .line 3
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public static p()F
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/gsdk/z0;->c(J)F

    move-result v0

    return v0
.end method
