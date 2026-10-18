.class public Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;
.super Ljava/lang/Object;
.source "GmeVideoEditPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;
    }
.end annotation


# instance fields
.field private mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

.field private final mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

.field private mFrameCallback:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

.field private final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->pool:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mFrameCallback:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    return-object p0
.end method

.method private initDecoder()V
    .locals 5

    .line 59
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    new-instance v4, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;

    invoke-direct {v4, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;-><init>(Ljava/lang/String;Landroid/view/Surface;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    .line 81
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;-><init>(Ljava/lang/String;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    return-void
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    return-void
.end method

.method public pausePreview()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->pause()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->pause()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public resumePreview()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->resume()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->resume()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setBGMAtVideoTime(J)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmAtVideoTime(J)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmLoop(Z)V

    return-void
.end method

.method public setBGMPath(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmPath(Ljava/lang/String;)V

    return-void
.end method

.method public setBGMTime(JJ)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmTime(JJ)V

    return-void
.end method

.method public setBGMVideoVolume(F)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmVideoVolume(F)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmVolume(F)V

    return-void
.end method

.method public setFrameCallback(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mFrameCallback:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    return-void
.end method

.method public setRepeatConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setRepeatConfig(Ljava/util/List;)V

    return-void
.end method

.method public setReverseConfig(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setReverseConfig(Z)V

    return-void
.end method

.method public setSpeedConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setSpeedConfig(Ljava/util/List;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setTimeConfig(JJ)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mEditConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setTimeConfig(JJ)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)I
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public startPreview()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->stopPreview()I

    .line 134
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->initDecoder()V

    .line 135
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->resumePreview()I

    move-result v0

    return v0
.end method

.method public stopPreview()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->stop()V

    .line 168
    iput-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mVideoDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->stop()V

    .line 172
    iput-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->mAudioDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
