.class public Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;
.super Ljava/lang/Object;
.source "GmeVideoMuxer.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/muxer/IMuxer;


# static fields
.field public static final TAG:Ljava/lang/String; = "GmeVideoMuxer"


# instance fields
.field private mAudioLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

.field private mAudioMuxerIndex:I

.field private mAudioReady:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mSampleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/model/GmeVideoSample;",
            ">;"
        }
    .end annotation
.end field

.field private mStartState:Z

.field private mVideoLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

.field private mVideoMuxerIndex:I

.field private mVideoReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mSampleList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mLock:Ljava/lang/Object;

    .line 27
    const-string v0, "audio-muxer"

    invoke-static {v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->create(Ljava/lang/String;)Lcom/gme/video/sdk/pipeline/EventPipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mAudioLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

    .line 28
    const-string/jumbo v0, "video-muxer"

    invoke-static {v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->create(Ljava/lang/String;)Lcom/gme/video/sdk/pipeline/EventPipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mVideoLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mAudioMuxerIndex:I

    .line 31
    iput v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mVideoMuxerIndex:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mAudioReady:Z

    .line 34
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mVideoReady:Z

    .line 38
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mStartState:Z

    .line 41
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method static synthetic lambda$writeAudioSample$1()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$writeVideoSample$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAudioTrack(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer addTrack"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public addVideoTrack(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public isStart()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mStartState:Z

    return v0
.end method

.method public release()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer release"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    :try_start_0
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mStartState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 69
    iput-object v2, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 70
    sget-object v2, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mMediaMuxer start Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    :try_start_0
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const-string v2, "mMediaMuxer stop"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 82
    iput-boolean v1, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mStartState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v2, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mMediaMuxer stop Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeAudioSample(Lcom/gme/video/sdk/edit/model/GmeVideoSample;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mAudioLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

    new-instance v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mMediaMuxer is null"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public writeVideoSample(Lcom/gme/video/sdk/edit/model/GmeVideoSample;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 121
    :try_start_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object p1, p0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->mVideoLine:Lcom/gme/video/sdk/pipeline/EventPipeline;

    new-instance v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 121
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
