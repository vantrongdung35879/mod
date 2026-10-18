.class public Lcom/gme/video/sdk/utils/PcmToWavUtil;
.super Ljava/lang/Object;
.source "PcmToWavUtil.java"


# instance fields
.field private final mBufferSize:I

.field private mChannelCount:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mSampleRate:I

    .line 22
    iput p3, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mChannelCount:I

    .line 23
    invoke-static {p1, p2, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mBufferSize:I

    return-void
.end method

.method private writeWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long v2, p4, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    const/16 v3, 0x8

    shr-long v4, p4, v3

    and-long/2addr v4, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    const/16 v5, 0x10

    shr-long v6, p4, v5

    and-long/2addr v6, v0

    long-to-int v7, v6

    int-to-byte v6, v7

    const/16 v7, 0x18

    shr-long v8, p4, v7

    and-long/2addr v8, v0

    long-to-int v9, v8

    int-to-byte v8, v9

    move/from16 v9, p8

    int-to-byte v9, v9

    and-long v10, p6, v0

    long-to-int v11, v10

    int-to-byte v10, v11

    shr-long v11, p6, v3

    and-long/2addr v11, v0

    long-to-int v12, v11

    int-to-byte v11, v12

    shr-long v12, p6, v5

    and-long/2addr v12, v0

    long-to-int v13, v12

    int-to-byte v12, v13

    shr-long v13, p6, v7

    and-long/2addr v13, v0

    long-to-int v14, v13

    int-to-byte v13, v14

    and-long v14, p9, v0

    long-to-int v15, v14

    int-to-byte v14, v15

    shr-long v15, p9, v3

    move/from16 v18, v4

    and-long v3, v15, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    shr-long v15, p9, v5

    move/from16 v19, v6

    and-long v5, v15, v0

    long-to-int v6, v5

    int-to-byte v5, v6

    shr-long v15, p9, v7

    move v6, v5

    and-long v4, v15, v0

    long-to-int v5, v4

    int-to-byte v5, v5

    move/from16 v16, v8

    and-long v7, p2, v0

    long-to-int v4, v7

    int-to-byte v7, v4

    const/16 v4, 0x8

    shr-long v20, p2, v4

    move/from16 p5, v7

    and-long v7, v20, v0

    long-to-int v4, v7

    int-to-byte v7, v4

    const/16 v4, 0x10

    shr-long v20, p2, v4

    move v8, v5

    and-long v4, v20, v0

    long-to-int v5, v4

    int-to-byte v5, v5

    const/16 v4, 0x18

    shr-long v20, p2, v4

    and-long v0, v20, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x2c

    .line 107
    new-array v4, v1, [B

    const/4 v15, 0x0

    const/16 v20, 0x52

    aput-byte v20, v4, v15

    const/16 v20, 0x1

    const/16 v21, 0x49

    aput-byte v21, v4, v20

    const/16 v21, 0x2

    const/16 v22, 0x46

    aput-byte v22, v4, v21

    const/16 v21, 0x3

    aput-byte v22, v4, v21

    const/16 v21, 0x4

    aput-byte v2, v4, v21

    const/4 v2, 0x5

    aput-byte v18, v4, v2

    const/4 v2, 0x6

    aput-byte v19, v4, v2

    const/4 v2, 0x7

    aput-byte v16, v4, v2

    const/16 v2, 0x57

    const/16 v16, 0x8

    aput-byte v2, v4, v16

    const/16 v2, 0x41

    const/16 v16, 0x9

    aput-byte v2, v4, v16

    const/16 v2, 0x56

    const/16 v16, 0xa

    aput-byte v2, v4, v16

    const/16 v2, 0x45

    const/16 v16, 0xb

    aput-byte v2, v4, v16

    const/16 v2, 0x66

    const/16 v16, 0xc

    aput-byte v2, v4, v16

    const/16 v2, 0x6d

    const/16 v16, 0xd

    aput-byte v2, v4, v16

    const/16 v2, 0xe

    const/16 v16, 0x74

    aput-byte v16, v4, v2

    const/16 v2, 0xf

    const/16 v17, 0x20

    aput-byte v17, v4, v2

    const/16 v2, 0x10

    aput-byte v2, v4, v2

    move-object v2, v4

    const/16 v18, 0x11

    aput-byte v15, v2, v18

    const/16 v18, 0x12

    aput-byte v15, v2, v18

    const/16 v18, 0x13

    aput-byte v15, v2, v18

    const/16 v18, 0x14

    aput-byte v20, v2, v18

    const/16 v18, 0x15

    aput-byte v15, v2, v18

    const/16 v18, 0x16

    aput-byte v9, v2, v18

    const/16 v9, 0x17

    aput-byte v15, v2, v9

    const/16 v9, 0x18

    aput-byte v10, v2, v9

    const/16 v9, 0x19

    aput-byte v11, v2, v9

    const/16 v9, 0x1a

    aput-byte v12, v2, v9

    const/16 v9, 0x1b

    aput-byte v13, v2, v9

    const/16 v9, 0x1c

    aput-byte v14, v2, v9

    const/16 v9, 0x1d

    aput-byte v3, v2, v9

    const/16 v3, 0x1e

    aput-byte v6, v2, v3

    const/16 v3, 0x1f

    aput-byte v8, v2, v3

    aput-byte v21, v2, v17

    const/16 v3, 0x21

    aput-byte v15, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x10

    aput-byte v4, v2, v3

    const/16 v3, 0x23

    aput-byte v15, v2, v3

    const/16 v3, 0x64

    const/16 v4, 0x24

    aput-byte v3, v2, v4

    const/16 v3, 0x25

    const/16 v4, 0x61

    aput-byte v4, v2, v3

    const/16 v3, 0x26

    aput-byte v16, v2, v3

    const/16 v3, 0x27

    aput-byte v4, v2, v3

    const/16 v3, 0x28

    aput-byte p5, v2, v3

    const/16 v3, 0x29

    aput-byte v7, v2, v3

    const/16 v3, 0x2a

    aput-byte v5, v2, v3

    const/16 v3, 0x2b

    aput-byte v0, v2, v3

    move-object/from16 v0, p1

    .line 108
    invoke-virtual {v0, v2, v15, v1}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public pcmToWav(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 37
    iget v0, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mSampleRate:I

    int-to-long v7, v0

    .line 38
    iget v9, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mChannelCount:I

    const-wide/16 v1, 0x10

    int-to-long v3, v0

    mul-long v3, v3, v1

    int-to-long v0, v9

    mul-long v3, v3, v0

    const-wide/16 v0, 0x8

    .line 39
    div-long v10, v3, v0

    .line 40
    iget v0, p0, Lcom/gme/video/sdk/utils/PcmToWavUtil;->mBufferSize:I

    new-array v0, v0, [B

    .line 42
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v1, 0x24

    add-long v5, v3, v1

    move-object v1, p0

    move-object v2, p1

    .line 46
    invoke-direct/range {v1 .. v11}, Lcom/gme/video/sdk/utils/PcmToWavUtil;->writeWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V

    .line 47
    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 51
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
