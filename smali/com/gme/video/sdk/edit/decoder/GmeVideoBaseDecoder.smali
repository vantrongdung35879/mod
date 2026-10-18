.class public abstract Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;
.super Ljava/lang/Object;
.source "GmeVideoBaseDecoder.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/decoder/IDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;
    }
.end annotation


# static fields
.field public static final DECODE_FAILED:I = 0x3

.field public static final PREVIEW_FINISHED_EVENT:I = 0x1

.field public static final PREVIEW_STOP_EVENT:I = 0x2

.field public static final WAIT_TIMEOUT:J = 0x2710L


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodec:Landroid/media/MediaCodec;

.field private mEndUs:J

.field private mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

.field private final mFilePath:Ljava/lang/String;

.field private volatile mIsStopRequested:Z

.field private mLastEndUs:J

.field private mLastVideoDecode:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private final mPlayNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderPts:J

.field private mRepeatPtsOffset:J

.field private mStartTimeUsForSync:J

.field private mStartUs:J

.field private mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field private mStopLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

.field private final reverseCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/model/GmeVideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private reverseTimer:Ljava/util/Timer;

.field private reverseTimerTask:Ljava/util/TimerTask;

.field private final reversedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/model/GmeVideoFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    .line 85
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mFilePath:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    .line 102
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 103
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLock:Ljava/lang/Object;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mPlayNodeList:Ljava/util/List;

    .line 105
    sget-object p1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->clearFlags()V

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->sendVideoReverseBuffer()V

    return-void
.end method

.method private addPlayNode(JJ)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mPlayNodeList:Ljava/util/List;

    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>(JJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized cacheFrameBuffer2Render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 3

    monitor-enter p0

    .line 846
    :try_start_0
    instance-of v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getAudioData()[S

    move-result-object v0

    array-length v0, v0

    .line 849
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v1

    new-array p1, v0, [S

    invoke-static {v1, v2, p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->createAudioFrame(J[S)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    const-wide/16 v1, 0xa

    .line 855
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 857
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 860
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private clearFlags()V
    .locals 2

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    const-wide/16 v0, -0x1

    .line 118
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    .line 119
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    return-void
.end method

.method private contain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 222
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

.method private drainBufferFromDecoder(J)Z
    .locals 6

    .line 797
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 798
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string p2, "drainBufferFromDecoder mCodec is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 801
    :cond_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 803
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string p2, "drainBufferFromDecoder INFO_TRY_AGAIN_LATER"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 805
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 806
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "drainBufferFromDecoder INFO_OUTPUT_FORMAT_CHANGED : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    .line 808
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "drainBufferFromDecoder error : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    .line 810
    :cond_3
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    .line 812
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 814
    invoke-direct {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getVideoFrame(I)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->cacheFrameBuffer2Render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    goto :goto_2

    .line 817
    :cond_5
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_6

    .line 818
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v1

    .line 823
    :cond_6
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object p2, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz p1, :cond_8

    .line 824
    invoke-direct {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getVideoFrame(I)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->syncRender(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    goto :goto_2

    .line 829
    :cond_7
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 830
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->swapReverseFrame()V

    .line 833
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2
.end method

.method private feedBufferToDecoder(J)Z
    .locals 11

    .line 730
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x2710

    .line 734
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    .line 738
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    invoke-interface {v2, v0}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->readBuffer(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 741
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    invoke-interface {v0}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->getSampleTimeUs()J

    move-result-wide v8

    if-ltz v7, :cond_4

    cmp-long v0, v8, p1

    if-lez v0, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_2

    return v1

    .line 751
    :cond_2
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 754
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 745
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method private getSoftWareDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 184
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 186
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 187
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->contain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSpeedDurationUs(J)J
    .locals 10

    .line 597
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    return-wide v2

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    .line 602
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-eq v0, v1, :cond_1

    return-wide v2

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSpeedDataList()Ljava/util/List;

    move-result-object v0

    .line 608
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

    .line 609
    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v6, p1, v4

    if-lez v6, :cond_2

    long-to-double v2, v2

    .line 610
    iget-object v4, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartUs:J

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

.method private getVideoFrame(I)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;
    .locals 7

    .line 762
    instance-of v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object p1

    .line 765
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 766
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x3

    .line 767
    invoke-static {p1, v6}, Lcom/gme/video/sdk/utils/ImageUtil;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object v3

    .line 768
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 769
    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getFixPts(J)J

    move-result-wide v1

    .line 768
    invoke-static/range {v1 .. v6}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->createVideoFrame(J[BIII)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    move-result-object p1

    return-object p1

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    div-int/lit8 v0, v0, 0x2

    .line 777
    new-array v1, v0, [S

    .line 778
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    .line 779
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 782
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3, v1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->createAudioFrame(J[S)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    move-result-object p1

    return-object p1
.end method

.method private init()Z
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->checkParam()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->initExtractor(Ljava/lang/String;)Lcom/gme/video/sdk/edit/extractor/IExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    if-nez v0, :cond_1

    return v1

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->initParams()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->prepareDecoder(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-direct {p0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->prepareDecoder(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Hard & soft decode all failed!!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->initRenderer()Z

    move-result v0

    return v0
.end method

.method private initParams()Z
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getStartTimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartUs:J

    .line 171
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getEndTimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mEndUs:J

    .line 173
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    invoke-interface {v0}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 199
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 200
    invoke-static {p1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastVideoDecode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic lambda$prepareRepeatPlayNode$0(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;)I
    .locals 2

    .line 340
    iget-object p0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object p0, p1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide p0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$prepareReversePlayNode$1(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 446
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private prepareDecoder(Z)Z
    .locals 8

    const-string v0, "Software decoder name = "

    const-string v1, "prepareDecoder return error,"

    const-string v2, "Hardware decoder name = "

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 237
    :try_start_0
    iget-object v5, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    if-nez v5, :cond_0

    return v4

    .line 241
    :cond_0
    invoke-interface {v5}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v5

    if-nez v5, :cond_1

    return v4

    .line 246
    :cond_1
    const-string v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    instance-of v7, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_2

    .line 251
    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 252
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_2
    invoke-direct {p0, v6}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getSoftWareDecoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    .line 259
    :cond_3
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 260
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 267
    :goto_0
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    if-nez p1, :cond_5

    .line 268
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not support"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 273
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->configCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 274
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->waitDecoder()V

    .line 276
    :cond_6
    iput-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastVideoDecode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 278
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_8

    .line 279
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastVideoDecode:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 280
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastVideoDecode:Ljava/lang/String;

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prepareDecoder got exp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 283
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-static {p1}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 284
    iput-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    goto :goto_1

    .line 286
    :cond_8
    iput-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastVideoDecode:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v1, "null prepareDecoder got exp "

    invoke-static {v0, v1, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return v4
.end method

.method private preparePlayNodeList()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mPlayNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartUs:J

    .line 313
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mEndUs:J

    .line 314
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v4

    sget-object v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v4, v5, :cond_0

    .line 315
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->prepareRepeatPlayNode(JJ)V

    goto :goto_1

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v4

    sget-object v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->None:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    .line 317
    invoke-virtual {v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v4

    sget-object v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v4

    sget-object v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->prepareReversePlayNode(JJ)V

    goto :goto_1

    .line 318
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private prepareRepeatPlayNode(JJ)V
    .locals 10

    .line 331
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getRepeatDataList()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 337
    iget-object v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-object v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 338
    iget-object v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-object v2, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 341
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 342
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 345
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v7, v5, p1

    if-lez v7, :cond_2

    .line 346
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    const/4 v5, 0x0

    .line 347
    :goto_2
    iget v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v5, v6, :cond_3

    .line 348
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v8, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 351
    :goto_3
    iget v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v5, v6, :cond_3

    .line 352
    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v8, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v8, v8, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 355
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_10

    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v6, v4, p3

    if-gez v6, :cond_10

    .line 356
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    goto/16 :goto_d

    .line 358
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_d

    add-int/lit8 v4, v2, -0x1

    .line 360
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 361
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_7

    .line 362
    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    .line 363
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v6, v4, p3

    if-gez v6, :cond_6

    const/4 v4, 0x0

    .line 364
    :goto_4
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_5

    .line 365
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 367
    :cond_5
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    goto/16 :goto_d

    :cond_6
    const/4 v4, 0x0

    .line 369
    :goto_5
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 370
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 373
    :cond_7
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_a

    .line 374
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v6, v4, p3

    if-gez v6, :cond_9

    const/4 v4, 0x0

    .line 375
    :goto_6
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_8

    .line 376
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 378
    :cond_8
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    goto/16 :goto_d

    :cond_9
    const/4 v4, 0x0

    .line 380
    :goto_7
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 381
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 386
    :cond_a
    iget-object v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v6, v4, p3

    if-gez v6, :cond_c

    const/4 v4, 0x0

    .line 387
    :goto_8
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_b

    .line 388
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 390
    :cond_b
    iget-object v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    goto/16 :goto_d

    :cond_c
    const/4 v4, 0x0

    .line 392
    :goto_9
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 393
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v4, v2, -0x1

    .line 399
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    .line 400
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_e

    .line 401
    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    const/4 v4, 0x0

    .line 402
    :goto_a
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 403
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 405
    :cond_e
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_f

    const/4 v4, 0x0

    .line 406
    :goto_b
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 407
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    .line 411
    :goto_c
    iget v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    if-ge v4, v5, :cond_10

    .line 412
    iget-object v5, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v7, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v7, v7, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method private prepareReversePlayNode(JJ)V
    .locals 8

    .line 427
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    instance-of v1, v0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;

    if-eqz v1, :cond_6

    .line 428
    check-cast v0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;

    .line 429
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getIPacketList()Ljava/util/List;

    move-result-object v1

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getIPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/model/IPacket;

    .line 435
    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/model/IPacket;->getSampleTimeUs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getDurationUs()J

    move-result-wide v3

    const/4 v1, 0x0

    .line 440
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 441
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getDurationUs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 444
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 446
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    .line 451
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 452
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, p3

    if-gez v1, :cond_3

    cmp-long v1, v5, p1

    if-gtz v1, :cond_2

    goto :goto_2

    .line 460
    :cond_2
    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 462
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    :cond_3
    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    :goto_3
    cmp-long v0, p3, p1

    if-ltz v0, :cond_7

    const-wide/32 v0, 0xf4240

    sub-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    goto :goto_4

    :cond_5
    move-wide v2, v0

    .line 470
    :goto_4
    invoke-direct {p0, p3, p4, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    move-wide p3, v0

    goto :goto_3

    .line 474
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->addPlayNode(JJ)V

    :cond_7
    return-void
.end method

.method private sendVideoReverseBuffer()V
    .locals 5

    .line 922
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    const-string v1, "Stop requested,so break!"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 925
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 926
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->stopReverseTimer()V

    .line 927
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4

    .line 928
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->START:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->SEEKING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v0, v3, :cond_2

    .line 935
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->waitDecoder()V

    const-wide/16 v3, -0x1

    .line 936
    iput-wide v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    .line 937
    iput-wide v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    invoke-direct {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->syncRender(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    goto :goto_0

    .line 943
    :cond_3
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startReverseTimer()V
    .locals 4

    .line 885
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 887
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    .line 890
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$1;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$1;-><init>(Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    .line 896
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 898
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    .line 901
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    .line 902
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopReverseTimer()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 911
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimerTask:Ljava/util/TimerTask;

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 915
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private declared-synchronized swapReverseFrame()V
    .locals 7

    monitor-enter p0

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 868
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    .line 870
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getStartTimeUs()J

    move-result-wide v2

    .line 871
    invoke-virtual {v1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_1

    .line 875
    :cond_0
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reversedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->reverseCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private syncRender(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v0

    .line 626
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 627
    invoke-static {}, Lcom/gme/video/sdk/utils/TimeUtil;->elapsedRealtimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    .line 631
    :cond_1
    iget-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 632
    invoke-direct {p0, v0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getSpeedDurationUs(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    .line 634
    :cond_2
    instance-of v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v2, :cond_5

    .line 636
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSpeedDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;

    .line 637
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v4

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v4

    iget-object v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v6, v6, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    .line 638
    iget v2, v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->speed:F

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 642
    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    .line 643
    invoke-virtual {v3, v2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->setSpeed(F)V

    .line 646
    :cond_5
    invoke-static {}, Lcom/gme/video/sdk/utils/TimeUtil;->elapsedRealtimeUs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    sub-long/2addr v2, v4

    .line 647
    invoke-direct {p0, v0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getSpeedDurationUs(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 651
    :try_start_0
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 657
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    return-void
.end method

.method private waitDecoder()V
    .locals 2

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :try_start_1
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 668
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract checkParam()Z
.end method

.method public abstract configCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
.end method

.method public abstract decodeDone(I)V
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected getFixPts(J)J
    .locals 2

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->getSpeedDurationUs(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartUs:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRepeatPtsOffset:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public abstract initExtractor(Ljava/lang/String;)Lcom/gme/video/sdk/edit/extractor/IExtractor;
.end method

.method public abstract initRenderer()Z
.end method

.method public isDecoding()Z
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeeking()Z
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->SEEKING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStop()Z
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final notifyDecoder()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 677
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 1

    .line 681
    sget-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->PAUSE:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    return-void
.end method

.method protected release()V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->release()V

    .line 710
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v2, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne v0, v2, :cond_1

    .line 715
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 718
    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    .line 720
    :cond_2
    sget-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    return-void
.end method

.method public abstract render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
.end method

.method public resume()V
    .locals 1

    .line 685
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->clearFlags()V

    .line 686
    sget-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 687
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->notifyDecoder()V

    return-void
.end method

.method public run()V
    .locals 13

    .line 481
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-ne v0, v1, :cond_0

    .line 482
    sget-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->START:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->init()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 491
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 499
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->preparePlayNodeList()V

    .line 502
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->startReverseTimer()V

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 508
    :try_start_0
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mPlayNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 509
    iget-boolean v5, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    if-eqz v5, :cond_4

    .line 510
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v4, "mIsStopRequested so break"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 513
    :cond_4
    iget-object v5, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start decode + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->clearFlags()V

    .line 515
    iget-wide v5, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 516
    iget-wide v7, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 518
    iget-wide v9, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastEndUs:J

    cmp-long v4, v9, v5

    if-eqz v4, :cond_5

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-eqz v4, :cond_5

    .line 519
    iget-wide v11, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRepeatPtsOffset:J

    sub-long/2addr v9, v5

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRepeatPtsOffset:J

    .line 521
    :cond_5
    iput-wide v7, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mLastEndUs:J

    .line 523
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mExtractor:Lcom/gme/video/sdk/edit/extractor/IExtractor;

    const-wide/32 v9, 0xc350

    add-long/2addr v9, v5

    invoke-interface {v4, v9, v10}, Lcom/gme/video/sdk/edit/extractor/IExtractor;->seekTo(J)J

    .line 524
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 532
    iget-boolean v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    if-eqz v4, :cond_6

    .line 533
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v5, "Stop requested,so break!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_3

    .line 535
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 541
    :cond_6
    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v11, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->START:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v4, v11, :cond_7

    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v11, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v4, v11, :cond_7

    iget-object v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mState:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    sget-object v11, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->SEEKING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    if-eq v4, v11, :cond_7

    .line 542
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->waitDecoder()V

    const-wide/16 v11, -0x1

    .line 543
    iput-wide v11, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStartTimeUsForSync:J

    .line 544
    iput-wide v11, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mRenderPts:J

    :cond_7
    if-nez v9, :cond_8

    .line 549
    invoke-direct {p0, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->feedBufferToDecoder(J)Z

    move-result v9

    :cond_8
    if-nez v10, :cond_9

    .line 554
    invoke-direct {p0, v5, v6}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->drainBufferFromDecoder(J)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-eqz v9, :cond_b

    if-nez v10, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 565
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v2

    if-nez v2, :cond_e

    .line 566
    iget-boolean v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    if-eqz v2, :cond_d

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_0
    move-exception v2

    .line 563
    :try_start_1
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v4, "decodec error"

    invoke-static {v3, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v2

    if-nez v2, :cond_e

    .line 566
    iget-boolean v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    if-eqz v2, :cond_d

    .line 567
    :goto_4
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    goto :goto_5

    .line 569
    :cond_d
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    .line 572
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->release()V

    return-void

    .line 565
    :goto_6
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isReverse()Z

    move-result v3

    if-nez v3, :cond_10

    .line 566
    iget-boolean v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    if-eqz v3, :cond_f

    .line 567
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    goto :goto_7

    .line 569
    :cond_f
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    .line 572
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->release()V

    .line 573
    throw v2

    .line 493
    :cond_11
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->TAG:Ljava/lang/String;

    const-string v3, "mCodec is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->decodeDone(I)V

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mIsStopRequested:Z

    .line 695
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->notifyDecoder()V

    .line 697
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    .line 699
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
