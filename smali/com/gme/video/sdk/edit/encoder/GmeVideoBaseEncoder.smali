.class public Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;
.super Ljava/lang/Object;
.source "GmeVideoBaseEncoder.java"


# static fields
.field public static final CLIP_MAX_TIME:J = 0x7270e00L

.field public static final ENCODER_AUDIO_MIME:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final ENCODER_FRAME_RATE:I = 0x19

.field public static final ENCODER_I_FRAME_INTERVAL:I = 0x1

.field public static final ENCODER_I_FRAME_INTERVAL_REVERSE:I = 0x0

.field public static final ENCODER_VIDEO_MIME:Ljava/lang/String; = "video/avc"

.field public static final WAIT_TIMEOUT:J = 0x7d0L


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mDecoder:Landroid/media/MediaCodec;

.field protected mEncoder:Landroid/media/MediaCodec;

.field private mEndUs:J

.field protected mExtractor:Landroid/media/MediaExtractor;

.field protected final mGenerateNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mGenerationDuration:J

.field private mLastEndUs:J

.field protected mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

.field protected mMultiProgressWrapper:Lcom/gme/video/sdk/utils/MultiProgressWrapper;

.field protected mOriginalMediaFormat:Landroid/media/MediaFormat;

.field private mRepeatPtsOffset:J

.field private mStartUs:J

.field private mTimeConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackId:I

.field protected final mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 77
    iput-object p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 78
    iput p3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mTrackId:I

    .line 79
    iput-object p4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    .line 80
    iput-object p5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerateNodeList:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->initTime()V

    .line 86
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->initGenerateNodeList()V

    return-void
.end method

.method private addGenerateNode(JJ)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerateNodeList:Ljava/util/List;

    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>(JJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static calcConfigTime(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 452
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v8, v4

    const/4 v5, 0x0

    move v4, v1

    const/4 v1, 0x1

    .line 455
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    const-wide/16 v11, -0x1

    if-ge v1, v10, :cond_9

    if-ne v1, v7, :cond_0

    .line 457
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v8, v13

    .line 458
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v10, v8, v13

    if-ltz v10, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_0
    if-eqz v5, :cond_1

    goto/16 :goto_5

    .line 467
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v4, v13, v11

    if-nez v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v4, v13, v11

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ge v4, v1, :cond_8

    .line 473
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v10, v13, v11

    if-nez v10, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v10, v13, v11

    if-nez v10, :cond_3

    goto/16 :goto_3

    .line 476
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v10, v13, v6

    if-gtz v10, :cond_4

    .line 477
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide v11, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v11, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    goto/16 :goto_4

    .line 479
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v10, v6, v13

    if-lez v10, :cond_6

    .line 480
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v10, v6, v13

    if-gtz v10, :cond_6

    .line 481
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    add-long/2addr v6, v8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    sub-long/2addr v6, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-lez v10, :cond_5

    .line 482
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide v11, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v11, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    goto :goto_2

    .line 486
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    sub-long/2addr v6, v13

    add-long/2addr v8, v6

    .line 487
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v6, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide v11, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v11, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    goto :goto_4

    .line 491
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    add-long/2addr v6, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v6, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-lez v10, :cond_7

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide v11, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v11, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    :goto_2
    const/4 v5, 0x1

    goto :goto_4

    .line 496
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v10, v10, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v10, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v6, v13

    add-long/2addr v8, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    add-int/lit8 v4, v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v15, v4

    move v4, v1

    move v1, v15

    goto/16 :goto_0

    :cond_9
    :goto_5
    if-nez v4, :cond_a

    .line 502
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v8, v5

    if-ltz v1, :cond_a

    .line 503
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v2, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct {v1, v6, v7, v4, v5}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;-><init>(JJ)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 505
    :goto_6
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_d

    if-gt v6, v4, :cond_b

    .line 506
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v1, v13, v11

    if-eqz v1, :cond_b

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v1, v13, v11

    if-eqz v1, :cond_b

    .line 507
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v13, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v11, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {v1, v13, v14, v11, v12}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;-><init>(JJ)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-le v6, v4, :cond_c

    .line 509
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v10, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v12, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v10, v12

    add-long/2addr v10, v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-gtz v1, :cond_c

    .line 510
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v11, -0x1

    goto :goto_6

    .line 514
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 515
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 516
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 517
    new-instance v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    .line 518
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    iget-object v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;-><init>(JJ)V

    .line 517
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    return-object v3
.end method

.method private calcNewDuration()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    .line 144
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v2, v3, :cond_1

    .line 146
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getRepeatDataList()Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 148
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 149
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v8, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 150
    iget v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    mul-long v6, v6, v3

    add-long/2addr v0, v6

    goto :goto_0

    .line 152
    :cond_0
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    iget-wide v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    goto/16 :goto_3

    .line 153
    :cond_1
    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v2, v3, :cond_3

    .line 154
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSpeedDataList()Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;

    .line 156
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 157
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v8, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-float v0, v0

    sub-long/2addr v6, v4

    long-to-float v1, v6

    .line 158
    iget v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->speed:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_1

    .line 160
    :cond_2
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    iget-wide v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    goto :goto_3

    .line 161
    :cond_3
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v2, v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mTimeConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    .line 163
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calcNewDuration mGenerationDuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerationDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private clear()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private getSpeedDurationUs(J)J
    .locals 10

    .line 321
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    return-wide v2

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    .line 326
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-eq v0, v1, :cond_1

    return-wide v2

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSpeedDataList()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;

    .line 333
    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v6, p1, v4

    if-lez v6, :cond_2

    long-to-double v2, v2

    .line 334
    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    iget-object v8, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    iget v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->speed:F

    div-float/2addr v6, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-long v1, v2

    move-wide v2, v1

    goto :goto_0

    :cond_3
    return-wide v2
.end method

.method private initGenerateNodeList()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto :goto_1

    .line 123
    :cond_0
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->prepareRepeatGenerateNode()V

    goto :goto_1

    .line 125
    :cond_1
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_2

    .line 126
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto :goto_1

    .line 127
    :cond_2
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_3

    .line 128
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mTimeConfigs:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    .line 130
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v2, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v1, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto :goto_0

    .line 134
    :cond_3
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initTime()V
    .locals 10

    .line 90
    const-string v0, "durationUs"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->getLongFormat(Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initTime originalDuration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v2

    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 93
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getmTimeDataList()Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    .line 95
    iget-object v7, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v9, v7, v0

    if-ltz v9, :cond_1

    .line 96
    iget-object v7, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    const-wide/16 v8, -0x1

    iput-wide v8, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iput-wide v8, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    goto :goto_0

    .line 97
    :cond_1
    iget-object v7, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v7, v4

    if-lez v9, :cond_2

    iget-object v7, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v7, v0

    if-lez v9, :cond_0

    .line 98
    :cond_2
    iget-object v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide v0, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x7270e00

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->calcConfigTime(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mTimeConfigs:Ljava/util/List;

    goto :goto_2

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getStartTimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    .line 104
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getEndTimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    .line 105
    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_5

    goto :goto_1

    :cond_5
    move-wide v6, v4

    :goto_1
    iput-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    move-wide v0, v2

    .line 106
    :cond_6
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    .line 109
    :goto_2
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->calcNewDuration()V

    return-void
.end method

.method static synthetic lambda$prepareRepeatGenerateNode$0(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;)I
    .locals 2

    .line 183
    iget-object p0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object p0, p1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide p0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private prepareRepeatGenerateNode()V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getRepeatDataList()Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 180
    iget-object v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-object v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 181
    iget-object v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-object v2, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    goto :goto_0

    .line 183
    :cond_1
    new-instance v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 184
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 188
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v7, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 189
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    const/4 v5, 0x0

    .line 190
    :goto_2
    iget v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v5, v6, :cond_3

    .line 191
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v8, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 194
    :goto_3
    iget v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v5, v6, :cond_3

    .line 195
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v8, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 198
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_10

    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_10

    .line 199
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto/16 :goto_d

    .line 201
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_d

    add-int/lit8 v4, v2, -0x1

    .line 203
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 204
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_7

    .line 205
    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    .line 206
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_6

    const/4 v4, 0x0

    .line 207
    :goto_4
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_5

    .line 208
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 210
    :cond_5
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto/16 :goto_d

    :cond_6
    const/4 v4, 0x0

    .line 212
    :goto_5
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 213
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 216
    :cond_7
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_a

    .line 217
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    const/4 v4, 0x0

    .line 218
    :goto_6
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_8

    .line 219
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 221
    :cond_8
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto/16 :goto_d

    :cond_9
    const/4 v4, 0x0

    .line 223
    :goto_7
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 224
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 229
    :cond_a
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_c

    const/4 v4, 0x0

    .line 230
    :goto_8
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_b

    .line 231
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 233
    :cond_b
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-wide v5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mEndUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    goto/16 :goto_d

    :cond_c
    const/4 v4, 0x0

    .line 235
    :goto_9
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 236
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v4, v2, -0x1

    .line 242
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 243
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_e

    .line 244
    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    const/4 v4, 0x0

    .line 245
    :goto_a
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 246
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 248
    :cond_e
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_f

    const/4 v4, 0x0

    .line 249
    :goto_b
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 250
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    .line 254
    :goto_c
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 255
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->addGenerateNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method


# virtual methods
.method protected feedBufferToDecoder(JJ)Z
    .locals 11

    .line 373
    iget-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    .line 374
    iget p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mTrackId:I

    const-wide/16 v0, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    .line 375
    iget-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_3

    .line 377
    iget-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 379
    iget-object p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, p1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 380
    iget-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    if-ltz v7, :cond_1

    cmp-long p1, v8, p3

    if-ltz p1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 387
    iget-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 383
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 396
    iget-object p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_4

    .line 398
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    move v2, p1

    :goto_3
    return v2
.end method

.method protected getAudioSpeedLevel(J)F
    .locals 6

    .line 349
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_0

    return v2

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSpeedDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;

    .line 354
    iget-object v3, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    iget-object v3, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    .line 355
    iget v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->speed:F

    :cond_2
    return v2
.end method

.method protected getFixPts(J)J
    .locals 2

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->getSpeedDurationUs(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mStartUs:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mRepeatPtsOffset:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method protected getIntegerFormat(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getIntegerFormat(Ljava/lang/String;I)I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getLongFormat(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 434
    invoke-virtual {p0, p1, v0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->getLongFormat(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLongFormat(Ljava/lang/String;J)J
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-static {v0, p1, p2, p3}, Lcom/gme/video/sdk/utils/MediaUtil;->getLong(Landroid/media/MediaFormat;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getStringFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->getStringFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStringFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/utils/MediaUtil;->getString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 406
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->clear()V

    .line 407
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected publishEvent(ILjava/lang/String;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mMultiProgressWrapper:Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->publishEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "publishEvent code %d, msg %s"

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected publishProgress(F)V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mMultiProgressWrapper:Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "publishProgress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mMultiProgressWrapper:Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->publishProgress(F)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "publishProgress p %f"

    invoke-static {v0, p1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected recordOnce(JJ)V
    .locals 5

    .line 269
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mLastEndUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 270
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mRepeatPtsOffset:J

    sub-long/2addr v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mRepeatPtsOffset:J

    .line 272
    :cond_0
    iput-wide p3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mLastEndUs:J

    return-void
.end method

.method public resume()V
    .locals 2

    .line 411
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->clear()V

    .line 412
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setProgressListener(Lcom/gme/video/sdk/utils/MultiProgressWrapper;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mMultiProgressWrapper:Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 416
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->clear()V

    .line 417
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
