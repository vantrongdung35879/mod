.class public Lcom/intlgame/core/device_info/DeviceInfoCollect;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/device_info/DeviceInfoCollect$GetGoogleAdvertisingIdTask;,
        Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;,
        Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;,
        Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;
    }
.end annotation


# static fields
.field private static final ANDROID_CPU_INFO_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final CPU_TEMPERATURE_ABS_DIR:Ljava/lang/String; = "/sys/devices/virtual/thermal/thermal_zone0/temp"

.field private static final DefaultUUID:Ljava/lang/String; = "UUID"

.field private static final GPU_TEMPERATURE_ABS_DIR:Ljava/lang/String; = "/sys/class/thermal/thermal_zone10/temp"

.field private static final MY_STAT_ABS_DIR:Ljava/lang/String; = "/proc/self/stat"

.field private static final STAT_ABS_DIR:Ljava/lang/String; = "/proc/stat"

.field private static final USAGE_RATE_CAL_INTERVAL_MILLS_DEFAULT:J = 0x12cL

.field private static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static instance:Lcom/intlgame/core/device_info/DeviceInfoCollect; = null

.field private static s_gaidTask:Landroid/os/AsyncTask; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tag:Ljava/lang/String; = "DeviceInfoCollect"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mGLRenderer:Ljava/lang/String;

.field private mGLVendor:Ljava/lang/String;

.field private mGLVersion:Ljava/lang/String;

.field private mPid:I

.field private m_szMemoryAvail:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szMemoryTotal:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szSpaceAvail:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szSpaceTotal:Lcom/intlgame/core/device_info/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 633
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$1;

    invoke-direct {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$1;-><init>()V

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    const/4 v0, 0x0

    .line 675
    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->s_gaidTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mPid:I

    return-void
.end method

.method private GetGLInfo()V
    .locals 3

    .line 726
    :try_start_0
    new-instance v0, Lcom/intlgame/core/egl/EGLHelper;

    invoke-direct {v0}, Lcom/intlgame/core/egl/EGLHelper;-><init>()V

    const/16 v1, 0xa

    .line 727
    invoke-virtual {v0, v1, v1}, Lcom/intlgame/core/egl/EGLHelper;->eglInit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f01

    .line 728
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    const/16 v1, 0x1f00

    .line 729
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVendor:Ljava/lang/String;

    const/16 v1, 0x1f02

    .line 730
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVersion:Ljava/lang/String;

    .line 731
    invoke-virtual {v0}, Lcom/intlgame/core/egl/EGLHelper;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetGLInfo error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private GetMemoryInfo(Landroid/content/Context;)V
    .locals 4

    .line 152
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 159
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 162
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 167
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryAvail:Lcom/intlgame/core/device_info/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    const-string v0, "GetMemoryInfo failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 172
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 173
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryAvail:Lcom/intlgame/core/device_info/DeviceInfo;

    :goto_0
    return-void
.end method

.method private GetScreenSize(Landroid/content/Context;)V
    .locals 4

    .line 358
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_0

    return-void

    .line 363
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 365
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 370
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 371
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 374
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    float-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 375
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;

    goto :goto_0

    .line 377
    :cond_1
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    float-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 378
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    float-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    const-string v0, "get GetScreenSize failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 385
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 386
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;

    :goto_0
    return-void
.end method

.method private GetSpaceInfo()V
    .locals 8

    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 201
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 202
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 209
    new-instance v6, Lcom/intlgame/core/device_info/DeviceInfo;

    mul-long v4, v4, v2

    const/16 v7, 0x14

    shr-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 210
    new-instance v4, Lcom/intlgame/core/device_info/DeviceInfo;

    mul-long v2, v2, v0

    shr-long v0, v2, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceAvail:Lcom/intlgame/core/device_info/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    const-string v1, "getStorage failed"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception track: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    .line 216
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceAvail:Lcom/intlgame/core/device_info/DeviceInfo;

    :goto_0
    return-void
.end method

.method private canExecuteCommand(Ljava/lang/String;)Z
    .locals 3

    .line 471
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 472
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 473
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static correctTemperatureFrom0to100(J)J
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

    .line 1268
    :try_start_0
    div-long/2addr v4, v6

    .line 1269
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

    .line 1270
    div-long/2addr p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 1272
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "correctTemperatureFrom0to100 failed, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-wide v2
.end method

.method private static extractValue([BI)I
    .locals 4

    .line 651
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 655
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 659
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getChannelByFrequency(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :sswitch_0
    const/16 p0, 0xa5

    goto :goto_0

    :sswitch_1
    const/16 p0, 0xa1

    goto :goto_0

    :sswitch_2
    const/16 p0, 0x9d

    goto :goto_0

    :sswitch_3
    const/16 p0, 0x99

    goto :goto_0

    :sswitch_4
    const/16 p0, 0x95

    goto :goto_0

    :sswitch_5
    const/16 p0, 0x30

    goto :goto_0

    :sswitch_6
    const/16 p0, 0x2e

    goto :goto_0

    :sswitch_7
    const/16 p0, 0x2c

    goto :goto_0

    :sswitch_8
    const/16 p0, 0x2a

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x28

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x26

    goto :goto_0

    :sswitch_b
    const/16 p0, 0x24

    goto :goto_0

    :sswitch_c
    const/16 p0, 0xe

    goto :goto_0

    :sswitch_d
    const/16 p0, 0xd

    goto :goto_0

    :sswitch_e
    const/16 p0, 0xc

    goto :goto_0

    :sswitch_f
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_10
    const/16 p0, 0xa

    goto :goto_0

    :sswitch_11
    const/16 p0, 0x9

    goto :goto_0

    :sswitch_12
    const/16 p0, 0x8

    goto :goto_0

    :sswitch_13
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_14
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_15
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_16
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_17
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_18
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_19
    const/4 p0, 0x1

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_19
        0x971 -> :sswitch_18
        0x976 -> :sswitch_17
        0x97b -> :sswitch_16
        0x980 -> :sswitch_15
        0x985 -> :sswitch_14
        0x98a -> :sswitch_13
        0x98f -> :sswitch_12
        0x994 -> :sswitch_11
        0x999 -> :sswitch_10
        0x99e -> :sswitch_f
        0x9a3 -> :sswitch_e
        0x9a8 -> :sswitch_d
        0x9b4 -> :sswitch_c
        0x143c -> :sswitch_b
        0x1446 -> :sswitch_a
        0x1450 -> :sswitch_9
        0x145a -> :sswitch_8
        0x1464 -> :sswitch_7
        0x146e -> :sswitch_6
        0x1478 -> :sswitch_5
        0x1671 -> :sswitch_4
        0x1685 -> :sswitch_3
        0x1699 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCpuNameByFile()Ljava/lang/String;
    .locals 7

    .line 246
    const-string v0, "/proc/cpuinfo"

    const/4 v1, 0x0

    .line 251
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 255
    const-string v4, "Hardware"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    const-string v6, ":"

    if-eqz v4, :cond_0

    .line 256
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v5

    goto :goto_1

    .line 259
    :cond_0
    const-string v4, "model name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v5

    .line 262
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->isX86()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 281
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v3

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    .line 273
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCpuNameByFile, readLine Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 277
    :goto_3
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCpuNameByFile Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    .line 281
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 288
    :catch_4
    :cond_4
    :goto_4
    const-string v0, ""

    return-object v0

    :goto_5
    if-eqz v1, :cond_5

    .line 281
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 286
    :catch_5
    :cond_5
    throw v0
.end method

.method private getCpuNameByProp()Ljava/lang/String;
    .locals 6

    .line 324
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 325
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 326
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ro.soc.model"

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.board.platform"

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    .line 332
    const-string v1, "getCpuNameByProp Exception"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception Track: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 334
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;
    .locals 1

    .line 81
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->instance:Lcom/intlgame/core/device_info/DeviceInfoCollect;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;

    invoke-direct {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;-><init>()V

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->instance:Lcom/intlgame/core/device_info/DeviceInfoCollect;

    .line 84
    :cond_0
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->instance:Lcom/intlgame/core/device_info/DeviceInfoCollect;

    return-object v0
.end method

.method public static getMyCpuUsageRate(J)F
    .locals 10

    const-string v0, "getMyCpuUsageRate failed, "

    const/high16 v1, -0x40800000    # -1.0f

    const-wide/16 v2, 0x0

    cmp-long v4, v2, p0

    if-lez v4, :cond_0

    return v1

    .line 979
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->get()Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;

    move-result-object v4

    .line 980
    invoke-virtual {v4}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->getTotal()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return v1

    .line 984
    :cond_1
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->get()Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;

    move-result-object v6

    .line 985
    invoke-virtual {v6}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->getCpuTotal()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v8, v2, v6

    if-lez v8, :cond_2

    return v1

    .line 990
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 992
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 994
    :goto_0
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->get()Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;

    move-result-object p0

    .line 995
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->getTotal()J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-lez v0, :cond_3

    return v1

    .line 999
    :cond_3
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->get()Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->getCpuTotal()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    return v1

    :cond_4
    sub-long/2addr p0, v4

    cmp-long v0, v2, p0

    if-nez v0, :cond_5

    return v1

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

    .line 1012
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getTotalCpuUsageRate failed, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return v1
.end method

.method private static getTemperature(Ljava/lang/String;)J
    .locals 5

    const-string v0, "getTemperature failed, "

    const/4 v1, 0x0

    .line 1236
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "UTF-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1238
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 1239
    invoke-static {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getTemperatureFromRaw(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1241
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 1245
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    const-wide/16 v0, -0x1

    :catch_3
    :goto_1
    return-wide v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1249
    :catch_4
    :cond_1
    throw p0
.end method

.method private static getTemperatureFromRaw(Ljava/lang/String;)J
    .locals 2

    .line 1256
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->correctTemperatureFrom0to100(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTemperatureFromRaw failed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private isX86()Z
    .locals 3

    .line 296
    :try_start_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    const-string v0, "get SUPPORTED_ABIS failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    array-length v2, v0

    if-lez v2, :cond_0

    .line 302
    aget-object v0, v0, v1

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 7

    .line 604
    const-string v0, "Exception Track: "

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 606
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 608
    aget-byte v3, v1, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_4

    :cond_0
    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_4

    sub-int v4, v3, v2

    .line 613
    aget-byte v5, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 617
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 618
    invoke-static {v1, v3}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->extractValue([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 627
    const-string p1, "parseFileForValue NumberFormatException"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 624
    const-string p1, "parseFileForValue IOException"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public GetApkPath(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "start GetApkPath : "

    .line 445
    const-string v1, ""

    .line 447
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 450
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 452
    :goto_0
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public GetAppVersion(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 119
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 120
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "Unknown"

    .line 132
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p1, v3, v1

    const-string p1, "%s(%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 122
    const-string v0, "GetAppVersion Exception"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetAvailableMemory(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 890
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetMemoryInfo(Landroid/content/Context;)V

    .line 891
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryAvail:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object p1
.end method

.method public GetAvailableSpace()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 896
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetSpaceInfo()V

    .line 897
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceAvail:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object v0
.end method

.method public GetBatteryPower()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 767
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {}, Lcom/intlgame/core/battery/BatteryStatusReceiver;->getBatteryListenerLevel()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetBatteryState()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 772
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {}, Lcom/intlgame/core/battery/BatteryStatusReceiver;->getBatteryListenerStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetBatteryTemp(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 778
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 783
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x22

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    .line 784
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p1, v4, v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 787
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 791
    const-string p1, "batteryTemperature register receiver failed."

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 792
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 794
    :cond_2
    const-string/jumbo v1, "temperature"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 796
    div-int/lit8 v0, v0, 0xa
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "batteryTemperature failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 800
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "batteryTemperature is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 801
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public GetBrand()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetBundleId(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetCPUCores()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 580
    const-string v0, "Exception Track: "

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 589
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/intlgame/core/device_info/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v0, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v3

    .line 596
    const-string v4, "GetCPUCores NullPointerException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v2, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :catch_1
    move-exception v3

    .line 591
    const-string v4, "GetCPUCores SecurityException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v2, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetCPUMaxFreqKHz()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 521
    const-string v0, "Exception Track: "

    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUCores()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 523
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v3, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    int-to-long v8, v6

    .line 529
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_4

    .line 530
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 532
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x80

    .line 534
    new-array v10, v8, [B

    .line 535
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    :try_start_1
    invoke-virtual {v11, v10}, Ljava/io/FileInputStream;->read([B)I

    const/4 v9, 0x0

    .line 540
    :goto_1
    aget-byte v12, v10, v9

    const/16 v13, 0x30

    if-lt v12, v13, :cond_1

    const/16 v13, 0x39

    if-gt v12, v13, :cond_1

    if-ge v9, v8, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 542
    :cond_1
    new-instance v8, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v8, v10, v4, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 543
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 544
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v8, v7, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 549
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v8

    .line 546
    :try_start_3
    const-string v9, "fail to get cpuFreq by /sys/devices/,then use /proc/cpuinfo"

    invoke-static {v9}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 549
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 550
    throw v1

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 553
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCPUMaxFreqKHz temp maxFreq : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    if-ne v7, v5, :cond_6

    .line 555
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 557
    :try_start_5
    const-string v4, "cpu MHz"

    invoke-static {v4, v1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    mul-int/lit16 v4, v4, 0x3e8

    if-le v4, v7, :cond_5

    move v7, v4

    .line 563
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catchall_1
    move-exception v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 564
    throw v4

    :cond_6
    :goto_5
    if-ne v7, v5, :cond_7

    .line 568
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v3, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v1

    .line 575
    :cond_7
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    int-to-long v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception v1

    .line 571
    const-string v4, "GetCPUMaxFreqKHz IOException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 573
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v3, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetCPUName()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getCpuNameByFile()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getCpuNameByProp()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetCPUName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetCPUTemp()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 936
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    invoke-static {v1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getTemperature(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetCPUUsage()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x12c

    .line 929
    invoke-static {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getMyCpuUsageRate(J)F

    move-result v0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCPUUsage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 931
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetDeviceCpuArch()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 434
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 435
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .line 436
    aget-object v0, v1, v0

    .line 439
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CPU Architecture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPU_ABI"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetDeviceLanguage()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 410
    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 415
    :goto_0
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetDeviceLanguageInfo()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 422
    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 426
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetDeviceRegion()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 459
    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 463
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetGPUTemp()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, "/sys/class/thermal/thermal_zone10/temp"

    invoke-static {v1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getTemperature(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetGPUUsage()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 941
    sget-object v0, Lcom/intlgame/core/processor/Processor;->MY_PROCESSOR:Lcom/intlgame/core/processor/Processor;

    invoke-virtual {v0}, Lcom/intlgame/core/processor/Processor;->getGpuUsageRate()F

    move-result v0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGPUUsage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 943
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public GetGlRenderer()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGLInfo()V

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGlRenderer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 744
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetGlVendor()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVendor:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGLInfo()V

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGlVendor : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 762
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVendor:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetGlVersion()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGLInfo()V

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGlVersion : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 753
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetGoogleAdvertisingId(Landroid/content/Context;)V
    .locals 2

    .line 678
    const-string v0, "GetGoogleAdvertisingId"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 680
    :try_start_0
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->s_gaidTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 681
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 683
    :cond_0
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$GetGoogleAdvertisingIdTask;

    invoke-direct {v0, p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect$GetGoogleAdvertisingIdTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->s_gaidTask:Landroid/os/AsyncTask;

    const/4 p1, 0x0

    .line 684
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGoogleAdvertisingId Exception e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetGpuName()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGLInfo()V

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGpuName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 672
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mGLRenderer:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetModel()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetPSS(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 903
    :try_start_0
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    .line 904
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mActivityManager:Landroid/app/ActivityManager;

    .line 906
    :cond_0
    iget p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mPid:I

    if-nez p1, :cond_1

    .line 907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mPid:I

    .line 910
    :cond_1
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->mPid:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 914
    :cond_2
    filled-new-array {v2}, [I

    move-result-object v2

    .line 915
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 917
    array-length v2, p1

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 918
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    int-to-long v2, p1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    .line 920
    :goto_0
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/16 v4, 0xa

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 911
    :cond_4
    :goto_1
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPSS error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 923
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public GetRootDevice()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 501
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, "Superuser"

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 510
    :cond_1
    const-string v0, "/system/xbin/which su"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "/system/bin/which su"

    .line 511
    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "which su"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 514
    :cond_2
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 512
    :cond_3
    :goto_0
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, "Supersu"

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetScreenHeight(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenHeight:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object p1
.end method

.method public GetScreenWidth(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szScreenWidth:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object p1
.end method

.method public GetSignalLevel()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 885
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {}, Lcom/intlgame/core/mobile_signal/MobileSignal;->getSignalLevel()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetSysVersion()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 97
    :catch_0
    const-string v0, "get_sys_version failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetTotalMemory(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetMemoryInfo(Landroid/content/Context;)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szMemoryTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object p1
.end method

.method public GetTotalReceivedBytes(I)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 965
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 966
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetTotalReceivedBytes Exception e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 969
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetTotalSentBytes(I)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 954
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 955
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetTotalSentBytes Exception e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 958
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetTotalSpace()Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetSpaceInfo()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect;->m_szSpaceTotal:Lcom/intlgame/core/device_info/DeviceInfo;

    return-object v0
.end method

.method public GetWifiNum(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "wifiManager.getScanResults exception:"

    const-wide/16 v1, -0x1

    .line 807
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/16 v2, 0x64

    .line 812
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/16 v5, 0x1d

    if-lt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_3

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 815
    invoke-static {p1, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 816
    :cond_2
    const-string p1, "location permission is not granted and sdk won\'t apply the permission"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 817
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 820
    :cond_3
    const-string v3, "location permission was previously granted or legacy device"

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 823
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 825
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 828
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 833
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 834
    iget v7, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getChannelByFrequency(I)I

    move-result v7

    if-eqz v3, :cond_4

    .line 835
    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v7

    .line 838
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 839
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 841
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 847
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 848
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 849
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v3, v6

    if-ne v5, v7, :cond_8

    move v0, v6

    goto :goto_1

    :cond_8
    add-int/lit8 v8, v5, -0x2

    if-lt v7, v8, :cond_7

    add-int/lit8 v8, v5, 0x2

    if-gt v7, v8, :cond_7

    add-int/2addr v4, v6

    goto :goto_1

    .line 857
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4fe1\u9053\uff1a"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0c\u4fe1\u9053wifi\u6570\uff1a"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0c\u9644\u8fd1\u7684wifi\u6570:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",\u626b\u63cf\u5230\u7684wifi\u603b\u6570\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 858
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 831
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 861
    :catch_1
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetWifiRssi(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 868
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 872
    :try_start_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 873
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 874
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 875
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWifiRssi error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 880
    :cond_1
    :goto_0
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
