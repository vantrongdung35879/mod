.class public Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_CPU_INFO_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;


# instance fields
.field private volatile isEnableQIMEIOAID:Z

.field private mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsBeaconInit:Z

.field private mLastGetUserAgentTime:J

.field private mMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQimeiObject:Ljava/lang/Object;

.field private mRetryUserAgentTime:I

.field private mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mContext:Landroid/content/Context;

    .line 813
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$2;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$2;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    .line 49
    iput v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mRetryUserAgentTime:I

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mLastGetUserAgentTime:J

    .line 51
    iput-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->isEnableQIMEIOAID:Z

    .line 53
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 54
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 55
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 56
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 57
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 58
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 59
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 60
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 62
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mDeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 64
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 65
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 66
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 67
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 68
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 69
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 70
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 71
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 72
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 73
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 74
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-void
.end method

.method private static ExtractValue([BI)I
    .locals 4

    .line 866
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

    .line 870
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 873
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 874
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

.method public static GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
    .locals 2

    .line 81
    const-class v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;-><init>()V

    sput-object v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    .line 85
    :cond_0
    sget-object v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private GetMemoryInfo(Landroid/content/Context;)V
    .locals 6

    const-string v0, "GetMemoryInfo failed, "

    .line 193
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 195
    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 198
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 201
    :cond_0
    :try_start_2
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 202
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 205
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v5, 0x14

    shr-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 210
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 212
    :try_start_3
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0x64

    invoke-direct {p1, v0, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 215
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 217
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private GetQIMEIInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 678
    const-string v0, "TDM"

    const-string v1, "Unknown"

    const/16 v2, 0x64

    :try_start_0
    const-string v3, "com.tdatamaster.qimei.TDMQimei"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    if-nez v3, :cond_0

    .line 680
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 683
    :cond_0
    iget-boolean v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_4

    .line 684
    const-string v5, "GetInstance"

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_3

    .line 687
    :try_start_1
    invoke-virtual {v5, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    .line 688
    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 689
    new-instance v5, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v5, v1, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v5

    .line 692
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 693
    const-string v9, "TEST_MODE"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tdatamaster/tdm/system/TDMUtils;->IsTestMode()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v9, "APP_ID"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetBeaconAppId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v9, "APP_VERSION"

    const-string v10, "1.39.011.2385"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v9, "QIMEI_ENABLE"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v9, "QIMEI_OAID_ENABLE"

    iget-boolean v10, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->isEnableQIMEIOAID:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v9, "Init"

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Ljava/util/Map;

    aput-object v11, v10, v6

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-nez v9, :cond_2

    .line 701
    new-instance v5, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v5, v1, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v5

    .line 703
    :cond_2
    iget-object v10, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v5, v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iput-boolean v8, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v5

    .line 709
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 707
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_3
    const-string p1, "can\'t get qimei instance method"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 717
    :cond_4
    :goto_0
    iget-boolean v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 719
    const-string v5, "com.tdatamaster.callback.TDMBridgeCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_5

    .line 721
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 723
    :cond_5
    new-instance v4, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;

    invoke-direct {v4, p0, v7}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V

    .line 724
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v5, v10, v6

    invoke-static {v9, v10, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    const/4 v9, 0x2

    .line 725
    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v6

    aput-object v5, v10, v8

    invoke-virtual {v3, p2, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 726
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v4, v5, v8

    invoke-virtual {p2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    return-object v7

    :catch_2
    move-exception p1

    .line 742
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :catch_3
    move-exception p1

    .line 738
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :catch_4
    move-exception p1

    .line 734
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :catch_5
    move-exception p1

    .line 730
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method private GetScreenSize(Landroid/content/Context;)V
    .locals 6

    const-string v0, "get GetScreenSize failed,"

    .line 457
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 459
    :try_start_0
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 461
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 464
    :cond_0
    :try_start_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 466
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 471
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 472
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    .line 475
    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 476
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    goto :goto_0

    .line 478
    :cond_1
    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 479
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 483
    :try_start_3
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0x64

    invoke-direct {p1, v0, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 485
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 487
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private GetSpaceInfo()V
    .locals 10

    const-string v0, "getStorage failed,"

    .line 234
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 243
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 245
    :cond_0
    :try_start_2
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 248
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    .line 249
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 256
    new-instance v8, Lcom/tdatamaster/tdm/device/DeviceInfo;

    mul-long v6, v6, v4

    const/16 v9, 0x14

    shr-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 257
    new-instance v6, Lcom/tdatamaster/tdm/device/DeviceInfo;

    mul-long v4, v4, v2

    shr-long v2, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 259
    :try_start_3
    const-string v3, "TDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x64

    invoke-direct {v0, v4, v5}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 262
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 264
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 777
    iget v1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 779
    :cond_0
    iget-object p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static ParseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 7

    .line 786
    const-string v0, "TDM"

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 788
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 790
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

    .line 795
    aget-byte v5, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 799
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 800
    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->ExtractValue([BI)I

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

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parseFileForValue NumberFormatException, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parseFileForValue IOException, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method private StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 768
    iget v1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 770
    :cond_0
    iget-object v1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    const-string v1, "Unknown"

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method


# virtual methods
.method public EnableQIMEIOAID(Z)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnableQIMEIOAID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput-boolean p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->isEnableQIMEIOAID:Z

    return-void
.end method

.method public GetAndroidID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetAndroidID Fail, "

    .line 442
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 446
    :cond_0
    :try_start_1
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "android_id"

    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 448
    :try_start_2
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_0
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 451
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public GetAppVersion(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetAppVersion Exception, "

    .line 133
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 140
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 141
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 142
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 149
    :try_start_2
    const-string v2, "Unknown"

    .line 152
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s(%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object p1, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAppVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 154
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception p1

    .line 144
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v0, "Unknown"

    const/16 v2, 0x64

    invoke-direct {p1, v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public GetBrand()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetBrand Exception, "

    .line 176
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 181
    :cond_0
    :try_start_1
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBrand:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v2

    .line 183
    const-string v3, "TDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v2, "Unknown"

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 187
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GetBundleId(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetBundleId failed, "

    .line 116
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 122
    :cond_0
    :try_start_1
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mBundleId:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception p1

    .line 124
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v0, "Unknown"

    const/16 v2, 0x64

    invoke-direct {p1, v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public GetCPUCores()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "GetCPUCores Fail, "

    const-string v1, "GetCPUCores Fail, "

    .line 587
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v2

    .line 588
    :try_start_0
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v3}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const/16 v3, 0x64

    const-wide/16 v4, -0x1

    .line 600
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v0, v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :try_start_2
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreCount:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 609
    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v1

    .line 605
    const-string v6, "TDM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v2

    return-object v0

    :catch_1
    move-exception v0

    .line 602
    const-string v6, "TDM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 610
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GetCPUMaxFreqKHz()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object v1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetCPUCores()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    const/16 v2, 0x64

    const-wide/16 v3, -0x1

    if-nez v1, :cond_1

    .line 519
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object v1

    :cond_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_0
    int-to-long v9, v7

    .line 525
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_5

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 528
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x80

    .line 530
    new-array v11, v9, [B

    .line 531
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 533
    :try_start_2
    invoke-virtual {v12, v11}, Ljava/io/FileInputStream;->read([B)I

    const/4 v10, 0x0

    .line 536
    :goto_1
    aget-byte v13, v11, v10

    const/16 v14, 0x30

    if-lt v13, v14, :cond_2

    const/16 v14, 0x39

    if-gt v13, v14, :cond_2

    if-ge v10, v9, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 539
    :cond_2
    new-instance v9, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v9, v11, v6, v10, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 540
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 541
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v9, v8, :cond_3

    .line 542
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v9

    .line 548
    :cond_3
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v9

    .line 550
    :try_start_4
    const-string v10, "TDM"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-static {v10, v9}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v9

    .line 545
    :try_start_5
    const-string v10, "TDM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to get cpuFreq by /sys/devices/,then use /proc/cpuinfo, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 548
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catch_2
    move-exception v9

    .line 550
    :try_start_7
    const-string v10, "TDM"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 548
    :goto_3
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v5

    .line 550
    :try_start_9
    const-string v6, "TDM"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_4
    throw v1

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 555
    :cond_5
    const-string v1, "TDM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetCPUMaxFreqKHz temp maxFreq : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v5, :cond_7

    .line 557
    new-instance v1, Ljava/io/FileInputStream;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 559
    :try_start_a
    const-string v7, "cpu MHz"

    invoke-static {v7, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->ParseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    mul-int/lit16 v7, v7, 0x3e8

    if-le v7, v8, :cond_6

    move v8, v7

    .line 566
    :cond_6
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catch_4
    move-exception v1

    .line 568
    :try_start_c
    const-string v7, "TDM"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    :catchall_1
    move-exception v5

    .line 566
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :catch_5
    move-exception v1

    .line 568
    :try_start_e
    const-string v6, "TDM"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_6
    throw v5

    :cond_7
    :goto_7
    if-ne v8, v5, :cond_8

    .line 574
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    monitor-exit v0

    return-object v1

    .line 581
    :cond_8
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUCoreHZ:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 582
    monitor-exit v0

    return-object v1

    :catch_6
    move-exception v1

    .line 577
    const-string v5, "TDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCPUMaxFreqKHz IOException, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    .line 583
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v1
.end method

.method public GetCPUName()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "get SUPPORTED_ABIS failed, "

    .line 281
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1

    return-object v0

    .line 284
    :cond_0
    const-string v2, "/proc/cpuinfo"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 293
    :try_start_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 295
    :try_start_2
    const-string v5, "TDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 297
    array-length v5, v0

    if-lez v5, :cond_1

    .line 299
    aget-object v0, v0, v4

    const-string/jumbo v4, "x86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-direct {v5, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 318
    const-string v5, "Hardware"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 319
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 320
    array-length v7, v5

    if-le v7, v6, :cond_2

    .line 321
    aget-object v2, v5, v6

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 325
    const-string v5, "model name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 327
    array-length v5, v2

    if-le v5, v6, :cond_3

    .line 328
    aget-object v2, v2, v6

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_2

    .line 332
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_2
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catch_1
    move-exception v2

    .line 335
    :try_start_5
    const-string v5, "TDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCPUName Exception, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 338
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    move-object v3, v2

    .line 349
    :cond_5
    :try_start_6
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mCPUName:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 350
    monitor-exit v1

    return-object v0

    :catch_2
    move-exception v0

    .line 340
    const-string v2, "TDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCPUName Exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v2, "Unknown"

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 351
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public GetDeviceID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v0, "Unknown"

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetMacAddress(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 882
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v0, "TDM_NULL"

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetModel()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetModel Exception, "

    .line 160
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 165
    :cond_0
    :try_start_1
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMode:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v2

    .line 167
    const-string v3, "TDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v2, "Unknown"

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 171
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GetQIMEI(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 753
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const-string v0, "GetQimei"

    invoke-direct {p0, p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetQIMEIInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 753
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public GetQIMEI36(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQIMEI36:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 763
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    const-string v0, "GetQimei36"

    invoke-direct {p0, p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetQIMEIInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 763
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public GetQimeiVersion()Ljava/lang/String;
    .locals 5

    .line 832
    const-string v0, "TDM"

    const-string v1, ""

    :try_start_0
    const-string v2, "com.tdatamaster.qimei.TDMQimei"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 837
    :cond_0
    const-string v3, "GetInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 840
    :try_start_1
    invoke-virtual {v3, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    .line 841
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-nez v3, :cond_1

    return-object v1

    .line 845
    :cond_1
    const-string v3, "GetQimeiVersion"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 849
    :cond_2
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 852
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 855
    :cond_3
    const-string v2, "can\'t get qimei instance method"

    invoke-static {v0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v2

    .line 860
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public GetScreenHeight(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 495
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    .line 498
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :catchall_0
    move-exception p1

    .line 495
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public GetScreenWidth(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 506
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    .line 509
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :catchall_0
    move-exception p1

    .line 506
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public GetSysVersion()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GetSysVersion failed, "

    .line 97
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v1

    return-object v0

    .line 101
    :cond_0
    const-string v2, "Unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSystemVersion:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 110
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v3

    .line 105
    const-string v4, "TDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GetTDataSign(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 403
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 406
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mAndroidID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v1

    .line 407
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetAndroidID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 408
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x64

    if-eqz p1, :cond_4

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 418
    :cond_1
    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_2

    .line 420
    const-string p1, "TDM"

    const-string v1, "digest is null, return default uuid"

    invoke-static {p1, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v1, "Unknown"

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 423
    :cond_2
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 424
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 428
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 429
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_3
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 432
    :try_start_3
    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSign:Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 433
    monitor-exit p1

    return-object v2

    :catchall_0
    move-exception v1

    .line 434
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 436
    const-string v1, "TDM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetUUID Fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v1, "Unknown"

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 412
    :cond_4
    :goto_1
    const-string p1, "TDM"

    const-string/jumbo v1, "uuid is null"

    invoke-static {p1, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v1, "Unknown"

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :catchall_1
    move-exception p1

    .line 408
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 403
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public GetTotalMemory(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 225
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetMemoryInfo(Landroid/content/Context;)V

    .line 227
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public GetTotalSpace()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->LongDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object v1

    .line 272
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetSpaceInfo()V

    .line 274
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object v0

    :catchall_0
    move-exception v1

    .line 272
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public GetUserAgent(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->StringDeviceInfoFinished(Lcom/tdatamaster/tdm/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 360
    :cond_0
    iget v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mRetryUserAgentTime:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 361
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 363
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 364
    iget-wide v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mLastGetUserAgentTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 365
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    monitor-exit v0

    return-object p1

    .line 367
    :cond_2
    iget v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mRetryUserAgentTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mRetryUserAgentTime:I

    .line 368
    iput-wide v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mLastGetUserAgentTime:J

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 373
    sput-object p1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mContext:Landroid/content/Context;

    .line 374
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;

    invoke-direct {v0, p0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mUserAgent:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :catchall_0
    move-exception p1

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
