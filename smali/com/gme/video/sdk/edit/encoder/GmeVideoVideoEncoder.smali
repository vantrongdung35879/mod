.class public Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;
.super Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;
.source "GmeVideoVideoEncoder.java"


# instance fields
.field public mClipVideoTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileTmp:Ljava/lang/String;

.field private final mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mLastVideoDecode:Ljava/lang/String;

.field private mPtsEndTime:J

.field private mPtsSetp:J

.field private mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

.field private mResultVideoFormat:Landroid/media/MediaFormat;

.field private mStartEncodeTime:J

.field private mVideoMuxerIndex:I


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;-><init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    .line 36
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    const-wide/16 p1, 0x0

    .line 40
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsSetp:J

    .line 41
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    .line 48
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mStartEncodeTime:J

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getOutPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mFileTmp:Ljava/lang/String;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mClipVideoTimeList:Ljava/util/List;

    return-void
.end method

.method private contain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 151
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private covertOriginal(JJI)I
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 638
    iget-object v3, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const-string/jumbo v5, "video covertOriginalonceStartUs: %d, onceEndUs: %d"

    invoke-static {v3, v5, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v3, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v2, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 642
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 644
    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 648
    new-instance v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v7}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    const-wide/16 v9, -0x1

    const/4 v13, 0x0

    move-wide/from16 v17, v9

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    :goto_0
    if-nez v14, :cond_b

    .line 653
    iget-object v11, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_0

    const-wide/16 v11, 0xc8

    .line 655
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 661
    :cond_0
    iget-object v11, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_7

    .line 667
    :cond_1
    iget-object v11, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v11

    .line 668
    iget v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mTrackId:I

    if-ne v11, v12, :cond_8

    .line 669
    iget-object v11, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v5, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iput v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 670
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v11, :cond_2

    .line 671
    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 p5, v14

    goto/16 :goto_4

    .line 674
    :cond_2
    iget-object v11, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    .line 675
    iget-object v15, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v15

    cmp-long v16, v17, v9

    if-nez v16, :cond_3

    .line 677
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p5, v14

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v10, v14, v8

    aput-object v16, v14, v4

    const-string/jumbo v10, "video covertOriginal firstPts flag: %d, pts: %d"

    invoke-static {v9, v10, v14}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    iput-wide v11, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 680
    iget-wide v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    add-long/2addr v9, v1

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    move-wide/from16 v17, v11

    goto :goto_1

    :cond_3
    move/from16 p5, v14

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v14, p3, v9

    if-ltz v14, :cond_5

    cmp-long v9, v11, p3

    if-gez v9, :cond_4

    goto :goto_2

    :cond_4
    sub-long v9, v11, v17

    .line 699
    iget-wide v14, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    add-long/2addr v9, v14

    iput-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x1

    goto :goto_3

    .line 684
    :cond_5
    :goto_2
    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 685
    iput v15, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    sub-long v9, v11, v17

    .line 686
    iget-wide v14, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    add-long/2addr v9, v14

    iput-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 688
    iget-wide v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-lez v16, :cond_7

    .line 689
    iget-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v9, v9

    iget-wide v14, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    long-to-float v10, v14

    div-float/2addr v9, v10

    cmpl-float v10, v9, v13

    if-lez v10, :cond_6

    .line 691
    invoke-virtual {v0, v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->publishProgress(F)V

    :cond_6
    move v13, v9

    .line 696
    :cond_7
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget v10, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    invoke-virtual {v9, v10, v5, v3}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 697
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v9, 0x0

    :goto_3
    move-wide v15, v11

    goto :goto_5

    :cond_8
    move/from16 p5, v14

    const/4 v9, -0x1

    if-ne v11, v9, :cond_9

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_a

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    move/from16 v14, p5

    :goto_6
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    .line 711
    :goto_7
    iget-wide v2, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    move-wide v11, v15

    .line 712
    iput-wide v11, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 713
    iget-object v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mClipVideoTimeList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    iget-wide v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    sub-long v2, v2, p3

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-lez v5, :cond_c

    .line 716
    iget-wide v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    iget-wide v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    sub-long v9, v9, p3

    add-long/2addr v2, v9

    iput-wide v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    .line 718
    :cond_c
    iget-object v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    iget-wide v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mPtsEndTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v9, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v9, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v8

    aput-object v5, v9, v4

    aput-object v7, v9, v6

    const-string/jumbo v3, "video mPtsEndTime: %d, clipStartTime: %d, clipEendTime: %d"

    invoke-static {v2, v3, v9}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private getSoftWareDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 127
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 128
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 129
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 130
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->contain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "decode info.getName()\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "test"

    invoke-static {v1, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initResultVideoFormat(I)Landroid/media/MediaFormat;
    .locals 6

    const/16 v0, 0x1e

    .line 457
    const-string v1, "frame-rate"

    invoke-virtual {p0, v1, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v0

    .line 458
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->getHeight()I

    move-result v3

    const-string/jumbo v4, "video/avc"

    invoke-static {v4, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 459
    const-string v3, "color-format"

    const v5, 0x7f000789

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 460
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->getBitrate()I

    move-result v3

    const-string v5, "bitrate"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 462
    const-string v0, "i-frame-interval"

    invoke-virtual {v2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x8

    const/16 v0, 0x200

    .line 464
    invoke-static {v4, v2, p1, v0}, Lcom/gme/video/sdk/utils/MediaUtil;->setProfile(Ljava/lang/String;Landroid/media/MediaFormat;II)Z

    move-result p1

    .line 466
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initResultVideoFormat supportProfileHigh = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 164
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 165
    invoke-static {p1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mLastVideoDecode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private prepareDecoder(Lcom/gme/video/sdk/edit/surface/OutputSurface;)Landroid/media/MediaCodec;
    .locals 13

    .line 176
    const-string v0, " start mediaCodec = "

    const-string v1, " mediaCodec = null; "

    const-string v2, "c2.android.avc.decoder"

    const-string v3, "mime"

    invoke-virtual {p0, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getStringFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    new-instance v4, Landroid/media/MediaCodecList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 179
    invoke-virtual {v4}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 180
    iget-object v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v7, " start prepareDecoder"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 182
    :try_start_0
    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v4, v8

    .line 183
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->contain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 184
    iget-object v7, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :try_start_1
    iget-object v8, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v7, v6

    .line 191
    :goto_1
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-static {v7}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    :cond_1
    move-object v7, v6

    .line 197
    :goto_2
    const-string v8, ""

    if-nez v7, :cond_2

    .line 199
    :try_start_2
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v8

    .line 201
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v6, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mediaCodec = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    .line 204
    iget-object v10, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " createDecoderByType error; "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v10, v9, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {v7}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    move-object v7, v6

    :cond_2
    :goto_3
    if-nez v7, :cond_4

    .line 212
    :try_start_3
    array-length v9, v4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_4

    aget-object v11, v4, v10

    .line 213
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->contain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct {p0, v11}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 214
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 215
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    .line 217
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v7, v0, p1, v6, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 223
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-static {v7}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    goto :goto_6

    :cond_4
    :goto_5
    move-object v6, v7

    :goto_6
    return-object v6
.end method

.method private processOnce(JJLcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)I
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p5

    .line 240
    const-string/jumbo v5, "video/avc"

    .line 0
    const-string v6, " processOnce mEncoder name: "

    const-string v7, " processOnce mEncoder c2.android.avc.encoder error "

    const-string v0, " Build.MANUFACTURER:"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 246
    :try_start_0
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 257
    :try_start_1
    const-string v0, "c2.android.avc.encoder"

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 258
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v11, v10, v10, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    :try_start_2
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v11, :cond_0

    .line 261
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->release()V

    .line 262
    iput-object v10, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 264
    :cond_0
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :goto_0
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v7, " processOnce createEncoderByType"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v0, v7, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 269
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v7, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v7, v10, v10, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 271
    :cond_1
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    new-instance v6, Lcom/gme/video/sdk/edit/surface/InputSurface;

    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/gme/video/sdk/edit/surface/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 274
    :try_start_3
    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/surface/InputSurface;->makeCurrent()V

    .line 275
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v7, " processOnce makeCurrent end: "

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v0, v7, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 277
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v7, " processOnce mEncoder.start end: "

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v0, v7, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v7, Lcom/gme/video/sdk/edit/surface/OutputSurface;

    invoke-direct {v7}, Lcom/gme/video/sdk/edit/surface/OutputSurface;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 280
    :try_start_4
    invoke-direct {v1, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->prepareDecoder(Lcom/gme/video/sdk/edit/surface/OutputSurface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    .line 281
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    .line 282
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v11, " processOnce mDecoder is null: "

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_2
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v11, " processOnce mDecoder.start() "

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v10

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v10

    move-object v7, v6

    .line 289
    :goto_1
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v12, " processOnce closeCodec mDecoder "

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {v11}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 291
    iput-object v10, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    .line 292
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v12, " processOnce closeCodec mEncoder "

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {v11}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 294
    iput-object v10, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 295
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "prepareDecoder Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_4

    goto/16 :goto_14

    .line 308
    :cond_4
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 309
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-nez v0, :cond_1f

    .line 314
    iget-object v15, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-eqz v15, :cond_5

    const-wide/16 v15, 0xc8

    .line 316
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    nop

    goto :goto_3

    .line 322
    :cond_5
    iget-object v15, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v13, 0x9

    goto/16 :goto_13

    :cond_6
    if-nez v12, :cond_7

    .line 329
    invoke-virtual/range {p0 .. p4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->feedBufferToDecoder(JJ)Z

    move-result v12

    :cond_7
    xor-int/lit8 v15, v14, 0x1

    const/16 v16, 0x1

    :goto_4
    if-nez v15, :cond_9

    if-eqz v16, :cond_8

    goto :goto_5

    :cond_8
    move v10, v12

    move-object v12, v5

    const/4 v5, 0x0

    goto/16 :goto_12

    .line 341
    :cond_9
    :goto_5
    :try_start_6
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v10, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v11, v10, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    move v9, v12

    const/4 v8, -0x1

    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_a
    const/4 v8, -0x2

    if-ne v10, v8, :cond_c

    .line 352
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 353
    iget v9, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    if-ne v9, v11, :cond_b

    .line 354
    invoke-virtual {v4, v8}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    iput v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    .line 355
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v9, "mMediaMuxer.start()"

    move/from16 v20, v0

    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual/range {p5 .. p5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    goto/16 :goto_8

    :cond_b
    move/from16 v20, v0

    goto/16 :goto_8

    :cond_c
    move/from16 v20, v0

    if-ltz v10, :cond_12

    .line 359
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 365
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v11, 0x1

    if-le v8, v11, :cond_e

    .line 366
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_d

    .line 368
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v8, v8

    move v9, v12

    iget-wide v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mStartEncodeTime:J

    long-to-float v11, v11

    sub-float/2addr v8, v11

    iget-wide v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerationDuration:J

    long-to-float v11, v11

    div-float/2addr v8, v11

    invoke-virtual {v1, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->publishProgress(F)V

    .line 369
    iget v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v8, v0, v11}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_6

    :cond_d
    move v9, v12

    .line 370
    iget v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    const/4 v11, -0x1

    if-ne v8, v11, :cond_f

    .line 372
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v5, v8, v11, v0}, Lcom/gme/video/sdk/utils/MediaUtil;->createVideoCSD(Ljava/lang/String;Lcom/gme/video/sdk/edit/model/GmeVideoSize;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 373
    invoke-virtual {v4, v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    .line 374
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v8, "mMediaMuxer.addTrack(newFormat)"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v0, v8, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-virtual/range {p5 .. p5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    goto :goto_6

    :cond_e
    move v9, v12

    .line 380
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    .line 381
    :goto_7
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    .line 361
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "mEncoder getOutputBuffer RuntimeException"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encoderOutputBuffer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    move v9, v12

    move/from16 v0, v20

    :goto_9
    const/4 v8, -0x1

    :goto_a
    if-eq v10, v8, :cond_13

    move v12, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_b
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_13
    if-nez v14, :cond_1c

    .line 391
    iget-object v10, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    move-object v12, v5

    const-wide/16 v4, 0x7d0

    invoke-virtual {v10, v11, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ne v4, v8, :cond_14

    move v10, v9

    :goto_c
    const/4 v15, 0x0

    goto/16 :goto_11

    :cond_14
    if-ltz v4, :cond_1d

    .line 396
    iget-object v5, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_15

    const/4 v11, 0x1

    goto :goto_d

    :cond_15
    const/4 v11, 0x0

    :goto_d
    if-eqz v11, :cond_16

    const/4 v10, 0x1

    const/4 v14, 0x1

    goto :goto_10

    .line 401
    :cond_16
    iget-object v5, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_e

    :cond_17
    const/4 v5, 0x0

    :goto_e
    const-wide/16 v17, 0x0

    cmp-long v8, p3, v17

    if-lez v8, :cond_18

    .line 402
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    move v10, v9

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v19, v8, p3

    if-ltz v19, :cond_19

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    goto :goto_f

    :cond_18
    move v10, v9

    :cond_19
    :goto_f
    cmp-long v8, v2, v17

    if-lez v8, :cond_1a

    .line 408
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v17, v8, v2

    if-gez v17, :cond_1a

    const/4 v5, 0x0

    .line 412
    :cond_1a
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v5, :cond_1b

    .line 417
    :try_start_7
    invoke-virtual {v7}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->awaitNewImage()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v4, 0x0

    .line 422
    invoke-virtual {v7, v4}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->drawImage(Z)V

    .line 424
    iget-object v4, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v4, v5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getFixPts(J)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    invoke-virtual {v6, v4, v5}, Lcom/gme/video/sdk/edit/surface/InputSurface;->setPresentationTime(J)V

    .line 425
    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/surface/InputSurface;->swapBuffers()V

    goto :goto_10

    :catch_5
    nop

    :cond_1b
    :goto_10
    if-eqz v11, :cond_1e

    .line 431
    iget-object v4, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_c

    :cond_1c
    move-object v12, v5

    :cond_1d
    move v10, v9

    :cond_1e
    :goto_11
    move-object/from16 v4, p5

    move-object v5, v12

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v12, v10

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move v10, v12

    move-object v12, v5

    .line 343
    iget-object v4, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "mEncoder.dequeueOutputBuffer Exception: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/16 v13, 0xca

    :goto_12
    move-object/from16 v4, p5

    move-object v5, v12

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v12, v10

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_1f
    :goto_13
    if-eqz v7, :cond_20

    .line 439
    invoke-virtual {v7}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->release()V

    :cond_20
    if-eqz v6, :cond_21

    .line 442
    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/surface/InputSurface;->release()V

    .line 445
    :cond_21
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    const/4 v2, 0x0

    .line 446
    iput-object v2, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mDecoder:Landroid/media/MediaCodec;

    .line 447
    iget-object v0, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 448
    iput-object v2, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    return v13

    .line 300
    :cond_22
    :goto_14
    const-string v0, "codec init failed"

    const/16 v2, 0xca

    invoke-virtual {v1, v2, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->publishEvent(ILjava/lang/String;)V

    return v2
.end method

.method private processReverse(JJ)I
    .locals 9

    .line 481
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 487
    :goto_0
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xc8

    .line 489
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_2

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    .line 501
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_4

    cmp-long v6, v4, p3

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 510
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 515
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v2, :cond_5

    add-int/2addr v2, v5

    if-ne v4, v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->processToI(JJ)I

    move-result v3

    :cond_7
    if-nez v3, :cond_8

    .line 524
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->reverseNoDecode(Ljava/util/List;Z)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    return v3
.end method

.method private processToI(JJ)I
    .locals 7

    .line 543
    :try_start_0
    new-instance v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mFileTmp:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 545
    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeMuxer(Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)V

    :goto_0
    if-nez v0, :cond_0

    .line 550
    const-string p1, "codec init failed"

    const/16 p2, 0xca

    invoke-virtual {p0, p2, p1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->publishEvent(ILjava/lang/String;)V

    return p2

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v0

    .line 555
    invoke-direct/range {v1 .. v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->processOnce(JJLcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)I

    move-result p1

    .line 556
    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeMuxer(Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)V

    return p1
.end method

.method private reverseNoDecode(Ljava/util/List;Z)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 573
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 574
    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mFileTmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 575
    sget-object v1, Lcom/gme/video/sdk/edit/model/TrackType;->VIDEO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v0, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result v1

    .line 576
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 580
    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v2, v1}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    .line 583
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 585
    const-string v3, "max-input-size"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 586
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v3, 0x0

    .line 590
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v5, -0x1

    move-wide v7, v5

    :goto_1
    if-ltz v4, :cond_5

    .line 592
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_1

    const-wide/16 v9, 0xc8

    .line 594
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 600
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v3, 0x9

    goto :goto_3

    .line 605
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x2

    invoke-virtual {v0, v9, v10, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 606
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    cmp-long v11, v7, v5

    if-nez v11, :cond_3

    move-wide v7, v9

    .line 610
    :cond_3
    iget-object v11, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    sub-long v9, v7, v9

    iput-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 611
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 612
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 613
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v9, :cond_4

    goto :goto_3

    .line 616
    :cond_4
    iget-object v9, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v10, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v9, v2, v1, v10}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :catch_1
    nop

    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 622
    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    :cond_6
    return v3
.end method


# virtual methods
.method public processVideo()I
    .locals 10

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mStartEncodeTime:J

    .line 70
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "processVideo start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mTrackId:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 74
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getIntegerFormat(Ljava/lang/String;)I

    move-result v0

    .line 75
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getIntegerFormat(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getCompressScale()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/utils/MediaUtil;->fixGenResolution(III)Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultSize:Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    .line 86
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoMuxerIndex:I

    .line 88
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "mMediaMuxer.start()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_2

    .line 94
    invoke-direct {p0, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->initResultVideoFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultVideoFormat:Landroid/media/MediaFormat;

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 96
    iget-wide v1, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v3, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->processReverse(JJ)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->initResultVideoFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mResultVideoFormat:Landroid/media/MediaFormat;

    .line 100
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 101
    iget-wide v3, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v5, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->recordOnce(JJ)V

    .line 102
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iput-wide v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mStartEncodeTime:J

    .line 103
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v3

    sget-object v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v3, v4, :cond_4

    .line 104
    const-string v3, "max-input-size"

    invoke-virtual {p0, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->getIntegerFormat(Ljava/lang/String;)I

    move-result v9

    .line 105
    iget-wide v5, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v7, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->covertOriginal(JJI)I

    move-result v1

    goto :goto_0

    .line 107
    :cond_4
    iget-wide v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v8, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->processOnce(JJLcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processVideo processOnce error! code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v0, v1

    .line 118
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mFileTmp:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mTrackId:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return v0

    .line 79
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "video track height or width is 0!"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xcf

    .line 80
    invoke-virtual {p0, v0, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->publishEvent(ILjava/lang/String;)V

    return v0
.end method
