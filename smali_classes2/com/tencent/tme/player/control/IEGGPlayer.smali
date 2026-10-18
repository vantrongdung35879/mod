.class public Lcom/tencent/tme/player/control/IEGGPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/player/TMEPlayer;


# instance fields
.field private final mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

.field private mQualityLevel:I

.field private mTmeVideoPlayControlCallback:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

.field private mTmeVideoPlayLogCallback:Lcom/tencent/tme/player/TMEVideoPlayLogCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer;

    invoke-direct {v0}, Lcom/intlgame/video/INTLVideoPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mQualityLevel:I

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mTmeVideoPlayControlCallback:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/tme/player/control/IEGGPlayer;Lcom/intlgame/video/SPMediaPlayerEvent;)Lcom/tencent/tme/player/TMEPlayerEvent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/player/control/IEGGPlayer;->getEvent(Lcom/intlgame/video/SPMediaPlayerEvent;)Lcom/tencent/tme/player/TMEPlayerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/tme/player/control/IEGGPlayer;Lcom/intlgame/video/SPMediaPlayerState;)Lcom/tencent/tme/player/TMEPlayerState;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/player/control/IEGGPlayer;->getState(Lcom/intlgame/video/SPMediaPlayerState;)Lcom/tencent/tme/player/TMEPlayerState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayLogCallback;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mTmeVideoPlayLogCallback:Lcom/tencent/tme/player/TMEVideoPlayLogCallback;

    return-object p0
.end method

.method private getEvent(Lcom/intlgame/video/SPMediaPlayerEvent;)Lcom/tencent/tme/player/TMEPlayerEvent;
    .locals 1

    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventUnkown:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->Unkown:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_0
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventFirstFrameRendered:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->FirstFrameRendered:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_1
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_2
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_3
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->SeekingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_4
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->SeekingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_5
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->SwitchDefinitionStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_6
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->SwitchDefinitionEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_7
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventReachHLSAdTag:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->ReachHLSAdTag:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_8
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventOneLoopComplete:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->OneLoopComplete:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_9
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_a

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->RefreshPlayerStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_a
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_b

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->RefreshPlayerEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_b
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadProgressUpdate:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->DownloadProgressUpdate:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_c
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadError:Lcom/intlgame/video/SPMediaPlayerEvent;

    if-ne p1, v0, :cond_d

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->DownloadError:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1

    :cond_d
    sget-object p1, Lcom/tencent/tme/player/TMEPlayerEvent;->Unkown:Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p1
.end method

.method private getState(Lcom/intlgame/video/SPMediaPlayerState;)Lcom/tencent/tme/player/TMEPlayerState;
    .locals 1

    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUnknown:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_0
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePreparing:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_1
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePrepared:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_2
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_3
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUserPaused:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_4
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateInterrupt:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Interrupt:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_5
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateStopped:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_6
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateComplete:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Complete:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_7
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateError:Lcom/intlgame/video/SPMediaPlayerState;

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Error:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1

    :cond_8
    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/intlgame/video/INTLVideoPlayer;->init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getFileDuration()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->getFileDuration()J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->pause()I

    return-void
.end method

.method public play()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->deInit()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->resume()I

    return-void
.end method

.method public seek(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->seek(I)I

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mQualityLevel:I

    return-void
.end method

.method public setSourceType(Lcom/tencent/tme/player/TMEPlayer$SourceType;)V
    .locals 2

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LiveStream:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    sget-object v1, Lcom/tencent/tme/player/TMEPlayer$SourceType;->LiveStream:Lcom/tencent/tme/player/TMEPlayer$SourceType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/tme/player/TMEPlayer$SourceType;->OnlineVideo:Lcom/tencent/tme/player/TMEPlayer$SourceType;

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/tme/player/TMEPlayer$SourceType;->LocalVideo:Lcom/tencent/tme/player/TMEPlayer$SourceType;

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LocalVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    iput-object v0, p1, Lcom/intlgame/video/INTLVideoPlayer;->mSourceType:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    return-void
.end method

.method public setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mTmeVideoPlayControlCallback:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    iget-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    new-instance v0, Lcom/tencent/tme/player/control/IEGGPlayer$1;

    invoke-direct {v0, p0}, Lcom/tencent/tme/player/control/IEGGPlayer$1;-><init>(Lcom/tencent/tme/player/control/IEGGPlayer;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/video/INTLVideoPlayer;->setEventCallback(Lcom/intlgame/video/IINTLVideoPlayerEventCallback;)V

    return-void
.end method

.method public setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mTmeVideoPlayLogCallback:Lcom/tencent/tme/player/TMEVideoPlayLogCallback;

    iget-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    new-instance v0, Lcom/tencent/tme/player/control/IEGGPlayer$2;

    invoke-direct {v0, p0}, Lcom/tencent/tme/player/control/IEGGPlayer$2;-><init>(Lcom/tencent/tme/player/control/IEGGPlayer;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/video/INTLVideoPlayer;->setLogCallback(Lcom/intlgame/video/IINTLVideoPlayerLogCallback;)V

    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    iget v1, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mQualityLevel:I

    invoke-virtual {v0, v1, p1}, Lcom/intlgame/video/INTLVideoPlayer;->setVideoUrl(ILjava/lang/String;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->setPlayVolume(F)I

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->stop()I

    return-void
.end method

.method public unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
