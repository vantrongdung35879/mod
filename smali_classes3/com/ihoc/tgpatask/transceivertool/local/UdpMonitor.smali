.class public Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;
.super Ljava/lang/Object;
.source "UdpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;,
        Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpMonitorInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentBytes:[B

.field private mCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field mCount:I

.field private mFreq:I

.field mHost:Ljava/lang/String;

.field private mInterval:I

.field mLocalIP:Ljava/lang/String;

.field mLocalPort:I

.field mPort:I

.field private mTimeout:I

.field private mUdpMonitorThread:Ljava/lang/Thread;

.field private mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_UdpMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 24
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mPort:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mLocalPort:I

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    const/16 v0, 0x258

    .line 28
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mTimeout:I

    const/16 v0, 0x3e8

    .line 29
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mFreq:I

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mInterval:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    .line 38
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)[B
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->contentBytes:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mTimeout:I

    return p0
.end method

.method static synthetic access$400(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mInterval:I

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)Lcom/ihoc/tgpatask/VmpCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mFreq:I

    return p0
.end method

.method private checkParam(Ljava/util/HashMap;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 52
    const-string v0, "invalid count"

    const-string v1, "invalid port"

    const-string v2, "freq"

    const-string v3, "count"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    .line 53
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string v0, "please init first"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 57
    :cond_0
    const-string v4, "host"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    goto/16 :goto_7

    .line 61
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mHost:Ljava/lang/String;

    .line 64
    :try_start_0
    const-string v4, "port"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xffff

    if-gt v4, v5, :cond_d

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto/16 :goto_6

    .line 69
    :cond_2
    iput v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 75
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    const-string v1, "1"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_c

    if-ge v1, v5, :cond_4

    goto/16 :goto_5

    .line 83
    :cond_4
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 90
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    const-string v0, "1000"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_6

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    .line 95
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mFreq:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string v2, "invalid freq"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :cond_6
    :goto_0
    :try_start_3
    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_7

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    .line 105
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mTimeout:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x5dc

    .line 107
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mTimeout:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :goto_1
    :try_start_4
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_8

    if-le v0, v5, :cond_8

    .line 116
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mInterval:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :cond_8
    :goto_2
    :try_start_5
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xea60

    if-le v0, v1, :cond_9

    goto :goto_3

    .line 128
    :cond_9
    const-string v0, "*#9527#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_a

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->generateBytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->contentBytes:[B

    goto :goto_4

    .line 131
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->contentBytes:[B

    goto :goto_4

    .line 125
    :cond_b
    :goto_3
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string v0, "invalid content"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return p1

    :catch_3
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :goto_4
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 80
    :cond_c
    :goto_5
    :try_start_6
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return p1

    .line 85
    :catch_4
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 66
    :cond_d
    :goto_6
    :try_start_7
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return p1

    .line 71
    :catch_5
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 58
    :cond_e
    :goto_7
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string v0, "invalid host"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;
    .locals 1

    .line 48
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpMonitorInstance;->access$100()Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public start(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 2

    .line 140
    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->checkParam(Ljava/util/HashMap;)I

    move-result v0

    .line 141
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 145
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string p2, "callback is null "

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->NO_CALLBACK:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 148
    :cond_1
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCallback:Lcom/ihoc/tgpatask/VmpCallback;

    .line 149
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p2, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mIsRunning:Z

    .line 152
    :cond_2
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    if-eqz p2, :cond_3

    .line 153
    sget-object p2, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "udp monitor is running, now stop the old thread first!"

    invoke-static {p2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 156
    :cond_3
    new-instance p2, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)V

    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    .line 157
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 159
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method

.method public stop()I
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 335
    iput-boolean v2, v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mIsRunning:Z

    .line 336
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpRttRunable:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 340
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mUdpMonitorThread:Ljava/lang/Thread;

    :cond_1
    return v2
.end method
