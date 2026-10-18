.class Lcom/intlgame/video/INTLVideoPlayerEventHandler;
.super Ljava/lang/Object;
.source "INTLVideoPlayerEventHandler.java"

# interfaces
.implements Lcom/intlgame/video/IINTLVideoPlayerEventCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

.field private playerId:I


# direct methods
.method public constructor <init>(ILcom/intlgame/video/INTLVideoPlayer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "INTLVideoPlayerEventHandler"

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->playerId:I

    .line 21
    iput-object p2, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I
    .locals 4

    .line 31
    const-string/jumbo v0, "{}"

    if-eqz p2, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p2}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 35
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onEvent json msg prase failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/intlgame/video/utils/Logger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    sget-object p2, Lcom/intlgame/video/INTLVideoPlayerEventHandler$1;->$SwitchMap$com$intlgame$video$SPMediaPlayerEvent:[I

    invoke-virtual {p1}, Lcom/intlgame/video/SPMediaPlayerEvent;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 82
    :pswitch_0
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventDownloadError"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventDownloadProgressUpdate"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventRefreshPlayerEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 73
    :pswitch_3
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventRefreshPlayerStart"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :pswitch_4
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventOneLoopComplete"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    :pswitch_5
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventReachHLSAdTag"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :pswitch_6
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventSwitchDefinitionEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    :pswitch_7
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventSwitchDefinitionStart"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    :pswitch_8
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventSeekingEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    :pswitch_9
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventSeekingStart"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    :pswitch_a
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventBufferingEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0xb

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_1

    .line 45
    :pswitch_b
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventBufferingStart"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0xa

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_1

    .line 42
    :pswitch_c
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventFirstFrameRendered"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 39
    :pswitch_d
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerEventUnkown"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayingProgress(JI)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayingProgress progressPlaying = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " progressBuffering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playerID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->playerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->playerId:I

    int-to-long v1, p3

    iget-object p3, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->mPlayer:Lcom/intlgame/video/INTLVideoPlayer;

    .line 144
    invoke-virtual {p3}, Lcom/intlgame/video/INTLVideoPlayer;->getFileDuration()J

    move-result-wide v3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    .line 142
    invoke-static {v0, p1, p2, v1, v2}, Lcom/intlgame/video/INTLVideoManager;->nativeSetVideoProgress(IJJ)V

    return-void
.end method

.method public onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I
    .locals 4

    .line 94
    const-string/jumbo v0, "{}"

    if-eqz p2, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p2}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 98
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json msg prase failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/intlgame/video/utils/Logger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    sget-object p2, Lcom/intlgame/video/INTLVideoPlayerEventHandler$1;->$SwitchMap$com$intlgame$video$SPMediaPlayerState:[I

    invoke-virtual {p1}, Lcom/intlgame/video/SPMediaPlayerState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerStateError"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0xe

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerStateComplete"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0xd

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerStateUserPaused"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerStatePlaying"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_5
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0xc

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayerEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "SPMediaPlayerStatePreparing"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
