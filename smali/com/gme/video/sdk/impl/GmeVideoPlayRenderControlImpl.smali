.class public Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;
.super Lcom/gme/video/sdk/IGmeVideoPlayControl;
.source "GmeVideoPlayRenderControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;,
        Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GmeVideoPlayRenderControlImpl"


# instance fields
.field isPlaying:Z

.field private mIsLoop:Z

.field private mMediaController:Landroid/widget/MediaController;

.field mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

.field mPlayURL:Ljava/lang/String;

.field private mShouldAutoPlay:Z

.field private mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

.field updateDuration:I

.field updateHandler:Landroid/os/Handler;

.field updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mMediaController:Landroid/widget/MediaController;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayURL:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateHandler:Landroid/os/Handler;

    .line 28
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x64

    .line 29
    iput v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateDuration:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    .line 31
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mIsLoop:Z

    .line 32
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mShouldAutoPlay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)Ltv/danmaku/ijk/media/player/GmeVideoView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    return-object p0
.end method

.method private addView(Landroid/app/Activity;Landroid/view/ViewGroup;)Ltv/danmaku/ijk/media/player/GmeVideoView;
    .locals 2

    .line 109
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method StartUpdatePlayProgress()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateRunnable:Ljava/lang/Runnable;

    .line 139
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method StopUpdatePlayProgress()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->addView(Landroid/app/Activity;Landroid/view/ViewGroup;)Ltv/danmaku/ijk/media/player/GmeVideoView;

    move-result-object p2

    iput-object p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    .line 161
    new-instance p2, Landroid/widget/MediaController;

    invoke-direct {p2, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mMediaController:Landroid/widget/MediaController;

    const/16 p1, 0x8

    .line 165
    invoke-virtual {p2, p1}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;

    invoke-direct {p2, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 168
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;

    invoke-direct {p2, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 170
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;

    invoke-direct {p2, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 172
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;

    invoke-direct {p2, p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getFileDuration()J
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getLeftVolume()F

    move-result v0

    return v0

    .line 275
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mVideoView is null,so getVolume ret = 1.0f"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isLoop()Z
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isLoop()Z

    move-result v0

    return v0

    .line 302
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mIsLoop:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "isLoop: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mIsLoop:Z

    return v0
.end method

.method public pause()I
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->pause()V

    .line 239
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StopUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public play()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->start()V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    .line 227
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StartUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->start()V

    .line 249
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StartUpdatePlayProgress()V

    const/4 v0, 0x0

    return v0
.end method

.method public seek(I)I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->seekTo(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public setAutoPlay(Z)V
    .locals 4

    .line 308
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "setAutoPlay: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mShouldAutoPlay:Z

    .line 310
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setAutoPlay(Z)V

    goto :goto_0

    .line 313
    :cond_0
    const-string p1, "setAutoPlay mVideoView is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 4

    .line 287
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "setLoop: %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setLoop(Z)V

    .line 290
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mIsLoop:Z

    goto :goto_0

    .line 292
    :cond_0
    const-string/jumbo p1, "setLoop mVideoView is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setUpdatePlayingProgressFrequency(I)I
    .locals 0

    .line 281
    iput p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateDuration:I

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoControlCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;)I
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoPlayControlVideoProcessCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoURL(Ljava/lang/String;)I
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayURL:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mShouldAutoPlay:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    .line 195
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StartUpdatePlayProgress()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(F)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setVolume(FF)V

    goto :goto_0

    .line 266
    :cond_0
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mVideoView is null"

    invoke-static {p1, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stop()I
    .locals 2

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    .line 256
    invoke-virtual {p0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StopUpdatePlayProgress()V

    .line 257
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->stopPlayback()V

    return v0
.end method

.method public unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mVideoView:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
