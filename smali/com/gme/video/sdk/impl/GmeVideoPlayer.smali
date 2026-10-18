.class public Lcom/gme/video/sdk/impl/GmeVideoPlayer;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GmeVideoPlayer"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private final mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private final mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mIsLoop:Z

.field private mLeftVolume:F

.field private mManifestString:Ljava/lang/String;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPixelsListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRightVolume:F

.field private final mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field private final mSettings:Ltv/danmaku/ijk/media/player/Settings;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mLeftVolume:F

    .line 30
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mRightVolume:F

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 63
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mIsLoop:Z

    .line 238
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 261
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 271
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$4;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$4;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 319
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 341
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 344
    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$6;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$6;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    .line 67
    new-instance v1, Ltv/danmaku/ijk/media/player/Settings;

    invoke-direct {v1, p1}, Ltv/danmaku/ijk/media/player/Settings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    .line 68
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$002(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mIsLoop:Z

    return p0
.end method

.method static synthetic access$200(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$300(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$902(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentBufferPercentage:I

    return p1
.end method

.method private asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekWhenPrepared:I

    .line 115
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->openVideo()V

    return-void
.end method


# virtual methods
.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    .line 489
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_7

    .line 490
    new-instance p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 491
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 493
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mManifestString:Ljava/lang/String;

    const-wide/16 v2, 0x1

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    .line 494
    const-string v1, "is-manifest"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 495
    const-string v1, "manifest_string"

    iget-object v5, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mManifestString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 498
    const-string v1, "disable_render"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingMediaCodec()Z

    move-result v1

    const-string v5, "mediacodec"

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_4

    .line 501
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 502
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v1

    const-string v5, "mediacodec-auto-rotate"

    if-eqz v1, :cond_2

    .line 503
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v1

    const-string v5, "mediacodec-handle-resolution-change"

    if-eqz v1, :cond_3

    .line 508
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 510
    :cond_3
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 513
    :cond_4
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 516
    :goto_1
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingOpenSLES()Z

    move-result v1

    const-string v5, "opensles"

    if-eqz v1, :cond_5

    .line 517
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 519
    :cond_5
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 522
    :goto_2
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "overlay-format"

    if-eqz v5, :cond_6

    const-wide/32 v9, 0x41424752

    .line 524
    invoke-virtual {p1, v4, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_3

    .line 526
    :cond_6
    invoke-virtual {p1, v4, v8, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_3
    const-string v1, "framedrop"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 529
    const-string/jumbo v1, "start-on-prepared"

    invoke-virtual {p1, v4, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 530
    const-string v1, "enable-accurate-seek"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 532
    const-string v1, "http-detect-range-support"

    invoke-virtual {p1, v0, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 534
    const-string/jumbo v0, "skip_loop_filter"

    const-wide/16 v1, 0x30

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    goto :goto_4

    .line 479
    :cond_8
    new-instance p1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 483
    :cond_9
    new-instance p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 541
    :goto_4
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 542
    new-instance v0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v0, p1}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    move-object p1, v0

    :cond_a
    return-object p1
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 442
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLeftVolume()F
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getLeftVolume()F

    move-result v0

    return v0

    .line 153
    :cond_0
    iget v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mLeftVolume:F

    return v0
.end method

.method public getRightVolume()F
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getRightVolume()F

    move-result v0

    return v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mRightVolume:F

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isLooping()Z

    move-result v0

    return v0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mIsLoop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 465
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openVideo()V
    .locals 9

    const-string v0, "Unable to open content: "

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->release(Z)V

    .line 185
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 186
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 189
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 191
    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 192
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mLeftVolume:F

    iget v7, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mRightVolume:F

    invoke-interface {v2, v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 199
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 200
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 201
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 202
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 203
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 204
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 205
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnPixelsListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPixelsListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;)V

    .line 206
    iput v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentBufferPercentage:I

    .line 207
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 208
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    .line 209
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/Settings;->getUsingMediaDataSource()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    new-instance v2, Ltv/danmaku/ijk/media/player/FileMediaDataSource;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ltv/danmaku/ijk/media/player/FileMediaDataSource;-><init>(Ljava/io/File;)V

    .line 212
    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v6, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 217
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 218
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 224
    iput v5, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 235
    throw v0

    :catch_0
    move-exception v2

    .line 230
    sget-object v4, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iput v3, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    .line 232
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_1

    :catch_1
    move-exception v2

    .line 226
    sget-object v4, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iput v3, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    .line 228
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x4

    .line 420
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    .line 421
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 424
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 401
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz p1, :cond_0

    .line 402
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 403
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    .line 407
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 408
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 456
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekWhenPrepared:I

    goto :goto_0

    .line 460
    :cond_0
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 169
    :cond_0
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mIsLoop:Z

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPixelsListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnPixelsListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    .line 81
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "http"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mManifestString:Ljava/lang/String;

    .line 86
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 141
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mLeftVolume:F

    .line 142
    iput p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mRightVolume:F

    .line 144
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    const/4 v0, 0x3

    .line 415
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 131
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-direct {p0, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 134
    iput v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mCurrentState:I

    .line 135
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 136
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->release(Z)V

    return-void
.end method
