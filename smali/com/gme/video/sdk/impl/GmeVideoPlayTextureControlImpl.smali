.class public Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;
.super Lcom/gme/video/sdk/IGmeVideoPlayControl;
.source "GmeVideoPlayTextureControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PixelsListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$InfoListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GmeVideoPlayTextureControlImpl"


# instance fields
.field isPlaying:Z

.field private mIsLoop:Z

.field private mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

.field private mPlayPixelsCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

.field private mPlayURL:Ljava/lang/String;

.field private mShouldAutoPlay:Z

.field private final mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

.field updateDuration:I

.field private final updateHandler:Landroid/os/Handler;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    .line 23
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayPixelsCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateHandler:Landroid/os/Handler;

    .line 25
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x64

    .line 26
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateDuration:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    .line 28
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mIsLoop:Z

    .line 29
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mShouldAutoPlay:Z

    .line 32
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    .line 33
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;

    invoke-direct {p1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 34
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;

    invoke-direct {p1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 35
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$InfoListener;

    invoke-direct {p1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$InfoListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 36
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;

    invoke-direct {p1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 37
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PixelsListener;

    invoke-direct {p1, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PixelsListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setOnPixelsListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayPixelsCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/impl/GmeVideoPlayer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method StartUpdatePlayProgress()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateRunnable:Ljava/lang/Runnable;

    .line 142
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method StopUpdatePlayProgress()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFileDuration()J
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->getLeftVolume()F

    move-result v0

    return v0

    .line 267
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mVideoPlayer is null, so getVolume ret = 1.0f"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isLoop()Z
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->isLoop()Z

    move-result v0

    return v0

    .line 294
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mIsLoop:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "isLoop: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mIsLoop:Z

    return v0
.end method

.method public pause()I
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->pause()V

    .line 231
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StopUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public play()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    .line 219
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StartUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->start()V

    .line 241
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StartUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public seek(I)I
    .locals 5

    int-to-long v0, p1

    .line 204
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v2}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->seekTo(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public setAutoPlay(Z)V
    .locals 4

    .line 300
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "setAutoPlay: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mShouldAutoPlay:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 4

    .line 279
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "setLoop: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setLoop(Z)V

    .line 282
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mIsLoop:Z

    goto :goto_0

    .line 284
    :cond_0
    const-string/jumbo p1, "setLoop mVideoView is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_0
    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setUpdatePlayingProgressFrequency(I)I
    .locals 0

    .line 273
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateDuration:I

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoControlCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;)I
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoPlayControlVideoProcessCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;)I
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayPixelsCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoURL(Ljava/lang/String;)I
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mPlayURL:Ljava/lang/String;

    .line 184
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mShouldAutoPlay:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    .line 187
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StartUpdatePlayProgress()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(F)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setVolume(FF)V

    goto :goto_0

    .line 258
    :cond_0
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mVideoPlayer is null"

    invoke-static {p1, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stop()I
    .locals 2

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    .line 248
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StopUpdatePlayProgress()V

    .line 249
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->mVideoPlayer:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->stopPlayback()V

    return v0
.end method

.method public unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
