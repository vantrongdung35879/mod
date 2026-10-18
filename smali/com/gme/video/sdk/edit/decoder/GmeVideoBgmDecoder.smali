.class public Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;
.super Ljava/lang/Thread;
.source "GmeVideoBgmDecoder.java"


# static fields
.field public static final CAPACITY:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "GmeVideoBgmDecoder"


# instance fields
.field private mAtVideoTimeUs:J

.field private mBgmEnd:Z

.field private final mBgmVolume:F

.field private final mBlockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelCount:I

.field private mDecoder:Landroid/media/MediaCodec;

.field private mEndUs:J

.field private mExtractor:Landroid/media/MediaExtractor;

.field private final mLoop:Z

.field private mMaxBufferSize:I

.field private mOriginalChannelCount:I

.field private mOriginalSampleRate:I

.field private final mPath:Ljava/lang/String;

.field private mSampleRate:I

.field private mSkpSilkJni:Lcom/gme/video/sdk/jni/SkpSilkJni;

.field private mStartUs:J

.field private mStopRequest:Z

.field private final mVideoVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x7530

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBlockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStopRequest:Z

    .line 61
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBgmEnd:Z

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmPath()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mPath:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmVolume()F

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBgmVolume:F

    .line 77
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmVideoVolume()F

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mVideoVolume:F

    .line 79
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmStartUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStartUs:J

    .line 80
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmEndUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mEndUs:J

    .line 81
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getBgmAtVideoUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mAtVideoTimeUs:J

    .line 83
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isBgmLoop()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mLoop:Z

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bgm Path is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private covertWithDecode()I
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBgmEnd:Z

    .line 103
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 104
    iget v3, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mMaxBufferSize:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 107
    :cond_0
    iget-wide v4, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStartUs:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 108
    iget-object v8, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v4, v5, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v4, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 112
    :goto_0
    iget-object v4, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x1

    if-nez v4, :cond_d

    .line 118
    iget-boolean v9, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStopRequest:Z

    if-eqz v9, :cond_2

    goto/16 :goto_6

    :cond_2
    const-wide/16 v9, 0x2710

    if-nez v5, :cond_6

    .line 124
    iget-object v11, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v11, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-ltz v13, :cond_6

    .line 126
    iget-object v11, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    cmp-long v14, v11, v6

    if-nez v14, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    iget-wide v14, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStartUs:J

    cmp-long v16, v11, v14

    if-gez v16, :cond_4

    .line 130
    iget-object v8, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 132
    :cond_4
    iget-wide v14, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mEndUs:J

    cmp-long v16, v11, v14

    if-lez v16, :cond_5

    .line 137
    :goto_2
    iget-object v12, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v5, 0x1

    goto :goto_3

    .line 139
    :cond_5
    iget-object v14, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v3, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 140
    iput-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 142
    iget-object v11, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    iput v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 143
    iget-object v11, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v11, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 144
    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 145
    iget-object v12, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v14, 0x0

    move-wide/from16 v16, v6

    move/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 146
    iget-object v6, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    :cond_6
    :goto_3
    if-nez v4, :cond_c

    .line 152
    iget-object v6, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v2, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, -0x2

    if-ne v6, v7, :cond_8

    .line 156
    iget-object v6, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 157
    sget-object v7, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "audio decode newFormat = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-gez v6, :cond_9

    .line 160
    sget-object v7, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unexpected result from audio decoder.dequeueOutputBuffer: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v7, v6, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 163
    :cond_9
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v11, 0x4

    if-ne v7, v11, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    .line 166
    :cond_a
    iget-object v7, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 168
    :try_start_0
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_b

    .line 169
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {v0, v7, v11}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->feedDataToList(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    :cond_b
    :goto_4
    iget-object v7, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    :cond_c
    :goto_5
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 179
    :cond_d
    :goto_6
    iget-boolean v4, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStopRequest:Z

    if-nez v4, :cond_e

    iget-boolean v4, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mLoop:Z

    if-nez v4, :cond_0

    .line 180
    :cond_e
    iput-boolean v8, v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBgmEnd:Z

    return v1
.end method

.method private feedDataToList(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 189
    :try_start_0
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [S

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 194
    iget p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mChannelCount:I

    iget v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mOriginalChannelCount:I

    const/4 v2, 0x0

    if-le p1, v1, :cond_1

    .line 195
    div-int/lit8 p1, p2, 0x2

    new-array p1, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 197
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    aget-short v4, v0, v4

    aput-short v4, p1, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_2

    :cond_1
    if-ge p1, v1, :cond_2

    mul-int/lit8 p1, p2, 0x2

    .line 200
    new-array p1, p1, [S

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    .line 202
    aget-short v4, v0, v1

    aput-short v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 203
    aget-short v4, v0, v1

    aput-short v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSkpSilkJni:Lcom/gme/video/sdk/jni/SkpSilkJni;

    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/jni/SkpSilkJni;->resampleBuffer([S)[S

    move-result-object v0

    .line 214
    :cond_3
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-short p2, v0, v2

    .line 215
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBlockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    return-void
.end method


# virtual methods
.method public mixBgm([SJ)V
    .locals 3

    .line 301
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mAtVideoTimeUs:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    return-void

    .line 305
    :cond_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->readData(I)[S

    move-result-object p2

    if-eqz p2, :cond_1

    .line 307
    iget p3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mVideoVolume:F

    iget v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBgmVolume:F

    invoke-static {p1, p3, p2, v0}, Lcom/gme/video/sdk/utils/MediaUtil;->mixPCM([SF[SF)V

    :cond_1
    return-void
.end method

.method public readData(I)[S
    .locals 3

    .line 275
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBlockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mBlockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 283
    aput-short v2, v0, v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 287
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStopRequest:Z

    return-void
.end method

.method public run()V
    .locals 12

    .line 225
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    sget-object v2, Lcom/gme/video/sdk/edit/model/TrackType;->AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v0, v2}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 234
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 235
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 236
    const-string v3, "sample-rate"

    invoke-static {v0, v3, v2}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSampleRate:I

    .line 237
    const-string v2, "channel-count"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mChannelCount:I

    .line 238
    const-string v2, "max-input-size"

    const v3, 0x186a0

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mMaxBufferSize:I

    .line 239
    const-string v2, "mime"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    const-string v3, "durationUs"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Lcom/gme/video/sdk/utils/MediaUtil;->getLong(Landroid/media/MediaFormat;Ljava/lang/String;J)J

    move-result-wide v6

    .line 242
    iget-wide v8, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStartUs:J

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mStartUs:J

    .line 243
    iget-wide v8, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mEndUs:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_0
    iput-wide v6, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mEndUs:J

    .line 245
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 247
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 249
    iget v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mOriginalSampleRate:I

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSampleRate:I

    if-eq v2, v0, :cond_1

    .line 250
    new-instance v4, Lcom/gme/video/sdk/jni/SkpSilkJni;

    invoke-direct {v4, v2, v0}, Lcom/gme/video/sdk/jni/SkpSilkJni;-><init>(II)V

    iput-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSkpSilkJni:Lcom/gme/video/sdk/jni/SkpSilkJni;

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->covertWithDecode()I

    move-result v0

    .line 254
    sget-object v2, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->TAG:Ljava/lang/String;

    const-string v4, "covertWithDecode ret = %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v2, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSkpSilkJni:Lcom/gme/video/sdk/jni/SkpSilkJni;

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/SkpSilkJni;->unInit()V

    .line 262
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mSkpSilkJni:Lcom/gme/video/sdk/jni/SkpSilkJni;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 266
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    return-void
.end method

.method public setSrcChannelCount(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mOriginalChannelCount:I

    return-void
.end method

.method public setSrcSampleRate(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mOriginalSampleRate:I

    return-void
.end method
