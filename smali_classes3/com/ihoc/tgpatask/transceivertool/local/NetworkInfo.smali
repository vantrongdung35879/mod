.class public Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;,
        Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$ReceivePkg;
    }
.end annotation


# static fields
.field public static icmpAvailable:Z = false

.field public static lossDetectAvailable:Z = false


# instance fields
.field private final DEFAULTRECEIVEBUFFERSIZE:I

.field private final RATEPORT:I

.field private final UDPPORT:I

.field private _bandwidth:J

.field private _clientIp:Ljava/lang/String;

.field private _count:I

.field public _delayDetectMainThreadFlag:Z

.field private _delayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _detectBandwidthThread:Ljava/lang/Thread;

.field private _detectNetThread:Ljava/lang/Thread;

.field private _detectRateThread:Ljava/lang/Thread;

.field private _duration:I

.field private _ip:Ljava/lang/String;

.field private _rate:J

.field private _realIp:Ljava/lang/String;

.field private _size:I

.field private _sotimeout:I

.field public _udpDetectLossThreadRecvFlag:Z

.field public _udpDetectLossThreadSendFlag:Z

.field private bandwidthCanRunable:Z

.field private bandwidthTotalNum:J

.field private bandwidthTotalTime:J

.field private contentBytes:[B

.field private delayCanRunable:Z

.field private detectRecvNum:J

.field private detectSendNum:J

.field private rateCanRunable:Z

.field private rateTotalNum:J

.field private rateTotalTime:J

.field private final receiveWaitTime:I

.field private final sendPkgInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    const/16 v1, 0x20

    .line 21
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_size:I

    const/16 v1, 0x10

    .line 22
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    const/16 v1, 0x1f4

    .line 23
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    const/16 v1, 0xc8

    .line 24
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayDetectMainThreadFlag:Z

    .line 30
    iput-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_udpDetectLossThreadSendFlag:Z

    .line 31
    iput-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_udpDetectLossThreadRecvFlag:Z

    .line 32
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_clientIp:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    .line 36
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    const-wide/16 v2, -0x1

    .line 38
    iput-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_rate:J

    .line 39
    iput-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_bandwidth:J

    .line 41
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalNum:J

    .line 42
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalTime:J

    .line 44
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalNum:J

    .line 45
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalTime:J

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    .line 48
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateCanRunable:Z

    .line 49
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthCanRunable:Z

    const/16 v0, 0x400

    .line 51
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->DEFAULTRECEIVEBUFFERSIZE:I

    const v0, 0xa028

    .line 52
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->RATEPORT:I

    const v0, 0x9c40

    .line 53
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->UDPPORT:I

    const/4 v0, 0x5

    .line 54
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->sendPkgInterval:I

    const/16 v0, 0xbb8

    .line 55
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->receiveWaitTime:I

    const/16 v0, 0x18

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->contentBytes:[B

    .line 64
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_size:I

    .line 66
    iput p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    .line 67
    iput p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    .line 68
    iput p5, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x0t
        0x9t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x50t
        0x10t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x47t
        -0xdt
        0x13t
    .end array-data
.end method

.method static synthetic access$000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    return-wide v0
.end method

.method static synthetic access$1008(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)J
    .locals 4

    .line 19
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalNum:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_rate:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;I)J
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->udpDetectRate(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1502(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalNum:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalTime:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_bandwidth:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;I)J
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->httpDetectRate(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_size:I

    return p0
.end method

.method static synthetic access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;I)J
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->udpDetectDelay(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->contentBytes:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    return p0
.end method

.method static synthetic access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    return p0
.end method

.method static synthetic access$908(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)J
    .locals 4

    .line 19
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    return-wide v0
.end method

.method private httpDetectRate(Ljava/lang/String;I)J
    .locals 17

    move-object/from16 v1, p0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 342
    :try_start_0
    const-string v0, "http://%s:42000/testdownload"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object p1, v10, v9

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 345
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    .line 347
    new-array v0, v0, [B

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 349
    :goto_0
    :try_start_1
    iget-boolean v14, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthCanRunable:Z

    if-eqz v14, :cond_1

    .line 350
    invoke-virtual {v10, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v11, v14

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v4, v2

    .line 352
    iget v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    int-to-long v7, v7

    cmp-long v16, v14, v7

    if-lez v16, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 356
    iput-wide v11, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalNum:J

    .line 357
    iput-wide v14, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalTime:J
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 362
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 360
    :goto_2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_1
    :goto_3
    sub-long/2addr v4, v2

    .line 365
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v9

    aput-object v3, v10, v6

    const/4 v2, 0x2

    aput-object v7, v10, v2

    const/4 v2, 0x3

    aput-object v8, v10, v2

    const-string v2, "[NetworkInfo.httpDetectRate]%s count=%d(\u5faa\u73af\u6b21\u6570),cost=%d(ms), total=%d(byte)"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    const-wide/16 v2, 0x8

    mul-long v11, v11, v2

    const-wide/16 v2, 0x400

    .line 367
    div-long/2addr v11, v2

    const-wide/16 v2, 0x3e8

    mul-long v11, v11, v2

    div-long/2addr v11, v4

    return-wide v11

    :cond_2
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method private static intToBytesBig(S)[B
    .locals 3

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 518
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method private udpDetectDelay(Ljava/lang/String;I)J
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 166
    new-instance v9, Ljava/net/DatagramPacket;

    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->contentBytes:[B

    array-length v2, v0

    invoke-direct {v9, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 167
    new-instance v10, Ljava/net/InetSocketAddress;

    const v0, 0x9c40

    invoke-direct {v10, v8, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x400

    .line 168
    new-array v2, v0, [B

    .line 169
    new-instance v11, Ljava/net/DatagramPacket;

    invoke-direct {v11, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 171
    :goto_0
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    const-wide/16 v2, -0x1

    const-string v14, "."

    const-string v15, "-10"

    const-string v4, "[NetworkInfo.udpDetectDelay]ip=%s delayCanRunable is false"

    const-string v7, "[NetworkInfo.udpDetectDelay]ip=%s %s"

    const-string v5, ";"

    const/4 v6, 0x1

    if-ge v13, v0, :cond_5

    const/16 v16, -0x1

    .line 173
    :try_start_0
    iget-boolean v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v8, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 177
    :cond_0
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->icmpAvailable:Z

    if-eqz v0, :cond_3

    .line 178
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v2

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->contentBytes:[B

    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x1

    const/16 v18, 0x5

    move-object/from16 v3, p1

    move-object v12, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v17, v13

    move-object v13, v7

    move v7, v0

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 184
    :cond_2
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move/from16 v17, v13

    move-object v13, v7

    .line 187
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 188
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 190
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 194
    :cond_4
    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 197
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v17, v13

    move-object v13, v7

    .line 201
    :goto_1
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v7, 0x1

    aput-object v0, v3, v7

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v17, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v12, v5

    move-object v13, v7

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-lez v0, :cond_d

    .line 206
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->lossDetectAvailable:Z

    if-eqz v0, :cond_d

    .line 207
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->icmpAvailable:Z

    if-eqz v0, :cond_9

    .line 208
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v2

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->contentBytes:[B

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    const/4 v6, 0x5

    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I

    move-object/from16 v3, p1

    const/4 v9, 0x1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    if-eqz v0, :cond_7

    .line 210
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    array-length v2, v0

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_d

    aget-object v3, v0, v12

    .line 214
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    .line 215
    iget-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 218
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[NetworkInfo.udpDetectDelay]detect loss by icmp error so return -10"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 221
    :cond_8
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NetworkInfo.udpDetectDelay]detect loss by icmp unknow error, detetc result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    const/4 v9, 0x1

    .line 225
    :try_start_2
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 226
    iget v6, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_sotimeout:I

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 228
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_a

    .line 229
    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 232
    :cond_a
    new-instance v6, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;)V

    .line 233
    invoke-virtual {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->setUdpSocket(Ljava/net/DatagramSocket;)V

    .line 234
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 236
    new-instance v6, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$ReceivePkg;

    invoke-direct {v6, v1, v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$ReceivePkg;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;)V

    .line 237
    invoke-virtual {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$ReceivePkg;->setUdpSocket(Ljava/net/DatagramSocket;)V

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 240
    :goto_4
    iget v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_count:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v0, v7, :cond_d

    .line 241
    iget-boolean v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    if-nez v7, :cond_b

    .line 242
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 246
    :cond_b
    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$ReceivePkg;->getTaskStatus()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 247
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[NetworkInfo.udpDetectDelay]ip=%s receive pkg task has done"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-wide/16 v10, 0x64

    .line 250
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 254
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    aput-object v0, v3, v9

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_5
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private udpDetectRate(Ljava/lang/String;I)J
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 263
    const-string v3, "[NetworkInfo.udpDetectRate]ip=%s %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 271
    :try_start_0
    new-instance v15, Ljava/net/DatagramSocket;

    invoke-direct {v15}, Ljava/net/DatagramSocket;-><init>()V

    .line 274
    iget v12, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    invoke-virtual {v15, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 276
    new-instance v12, Ljava/net/InetSocketAddress;

    const v13, 0xa028

    invoke-direct {v12, v2, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 277
    new-array v13, v0, [B

    const/16 v9, 0x400

    .line 278
    new-array v8, v9, [B

    int-to-short v9, v0

    .line 280
    invoke-static {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->intToBytesBig(S)[B

    move-result-object v9

    .line 281
    aget-byte v17, v9, v14

    aput-byte v17, v13, v14

    .line 282
    aget-byte v9, v9, v11

    aput-byte v9, v13, v11

    .line 284
    iget v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    int-to-short v9, v9

    invoke-static {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->intToBytesBig(S)[B

    move-result-object v9

    .line 285
    aget-byte v17, v9, v14

    aput-byte v17, v13, v10

    .line 286
    aget-byte v9, v9, v11

    const/16 v16, 0x3

    aput-byte v9, v13, v16

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 289
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 290
    array-length v11, v9

    const/4 v10, 0x4

    invoke-static {v9, v14, v13, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v13, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 294
    invoke-virtual {v15}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {v15, v12}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 298
    :cond_0
    invoke-virtual {v15, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v6, v4

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 301
    :goto_0
    :try_start_1
    iget-boolean v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateCanRunable:Z

    if-eqz v0, :cond_2

    .line 302
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v12, 0x400

    invoke-direct {v0, v8, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 303
    invoke-virtual {v15, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 305
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    int-to-long v12, v0

    add-long/2addr v9, v12

    sub-long v12, v6, v4

    .line 306
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_duration:I

    move-object/from16 v19, v15

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 310
    iput-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalNum:J

    .line 311
    iput-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateTotalTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v15, v19

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v19, v15

    .line 316
    :goto_1
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 319
    :try_start_3
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v13, v12

    const/4 v12, 0x1

    aput-object v8, v13, v12

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 323
    :goto_2
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v13, v12

    const/4 v2, 0x1

    aput-object v0, v13, v2

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sub-long/2addr v6, v4

    .line 327
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v8, v11

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const-string v2, "[NetworkInfo.udpDetectRate]%s count=%d cost=%d total=%d"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-lez v0, :cond_3

    const-wide/16 v2, 0x8

    mul-long v9, v9, v2

    const-wide/16 v2, 0x400

    .line 329
    div-long/2addr v9, v2

    const-wide/16 v2, 0x3e8

    mul-long v9, v9, v2

    div-long/2addr v9, v6

    return-wide v9

    :cond_3
    const-wide/16 v2, -0x1

    return-wide v2
.end method


# virtual methods
.method public generateDetail()Ljava/lang/String;
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_clientIp:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "%s %s %s %s;"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateResult()Ljava/lang/String;
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getAvgDelay()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getAvgLoss()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "%s %s %.2f %.4f"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvgBandwidth()F
    .locals 5

    .line 114
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 115
    iget-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalNum:J

    long-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2

    .line 117
    :cond_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalNum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthTotalTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "[NetworkInfo.getAvgBandwidth] bandwidthTotalNum=%d,bandwidthTotalTime=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getAvgDelay()F
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    return v0

    :cond_2
    if-lez v2, :cond_3

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_3
    return v0
.end method

.method public getAvgLoss()F
    .locals 5

    .line 105
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sub-long v2, v0, v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2

    .line 108
    :cond_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectSendNum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->detectRecvNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "[NetworkInfo.getAvgLoss] detectSendNum=%d,detectRecvNum=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getRealIp()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    return-object v0
.end method

.method public isFinishDetect()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayDetectMainThreadFlag:Z

    return v0
.end method

.method public startBandwidthDetect()V
    .locals 3

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthCanRunable:Z

    .line 487
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "transceiverDetectBandwidthThread_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;

    invoke-direct {v2, p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectBandwidthThread:Ljava/lang/Thread;

    .line 504
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startDelayDetect()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "transceiverDetectNetThread_%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iput-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    .line 125
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;

    invoke-direct {v2, p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectNetThread:Ljava/lang/Thread;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startRateDetect()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_ip:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v0, "transceiverDetectRateThread_%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$2;

    invoke-direct {v2, p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$2;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectRateThread:Ljava/lang/Thread;

    .line 474
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopBandwidthDetect()V
    .locals 4

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->bandwidthCanRunable:Z

    .line 509
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectBandwidthThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectBandwidthThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 511
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "[NetworkInfo.stopBandwidthDetect] interrupu[%s] bandwidthSvr thread"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopDelayDetect()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->delayCanRunable:Z

    .line 148
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectNetThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectNetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public stopRateDetect()V
    .locals 4

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->rateCanRunable:Z

    .line 479
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectRateThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_detectRateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 481
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_realIp:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "[NetworkInfo.stopRateDetect] interrupu[%s] rateSvr thread"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
