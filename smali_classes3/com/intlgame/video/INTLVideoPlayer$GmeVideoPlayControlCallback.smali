.class Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;
.super Ljava/lang/Object;
.source "INTLVideoPlayer.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GmeVideoPlayControlCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoPlayer;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoPlayer;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$300(Lcom/intlgame/video/INTLVideoPlayer;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 585
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {p1}, Lcom/intlgame/video/INTLVideoPlayer;->access$100(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/INTLVideoPlayer$State;

    move-result-object p1

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-ne p1, v0, :cond_0

    .line 586
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v0, " mplayer cur state is idle, just return"

    invoke-virtual {p1, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

    invoke-static {p1, v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/intlgame/video/INTLVideoPlayer$State;)Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 590
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {p1}, Lcom/intlgame/video/INTLVideoPlayer;->access$300(Lcom/intlgame/video/INTLVideoPlayer;)I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide v2, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 591
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;

    invoke-direct {v2, p0}, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;-><init>(Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;)V

    double-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError error code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->stop()I

    .line 620
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 621
    new-instance v0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoPlayer;->access$1000(Lcom/intlgame/video/INTLVideoPlayer;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;-><init>(I)V

    .line 622
    iput p1, v0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    .line 623
    iput p1, v0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->errorCode:I

    .line 624
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {p1}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object p1

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateError:Lcom/intlgame/video/SPMediaPlayerState;

    invoke-interface {p1, v1, v0}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onFirstFrameDecoded(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFirstFrameDecoded = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->access$1102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v1, "prepared and going to play"

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePrepared:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 529
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 531
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventFirstFrameRendered:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 535
    :cond_0
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoPlayer;->access$100(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/INTLVideoPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 537
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v1, v1, Lcom/intlgame/video/INTLVideoPlayer;->mSourceType:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    if-ne v0, v1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$200(Lcom/intlgame/video/INTLVideoPlayer;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/intlgame/video/INTLVideoPlayer;->seek(I)I

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->access$102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/intlgame/video/INTLVideoPlayer$State;)Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 544
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->access$302(Lcom/intlgame/video/INTLVideoPlayer;I)I

    return-void
.end method

.method public onPlayBufferingEnd()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string/jumbo v1, "stop buffering"

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_0
    return-void
.end method

.method public onPlayBufferingStart()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v1, "start buffering"

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_0
    return-void
.end method

.method public onPlayStop()V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v1, "play finish"

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->access$102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/intlgame/video/INTLVideoPlayer$State;)Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 576
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateComplete:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_0
    return-void
.end method

.method public onPlayingProgress(JI)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0, p1, p2}, Lcom/intlgame/video/INTLVideoPlayer;->access$402(Lcom/intlgame/video/INTLVideoPlayer;J)J

    .line 567
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onPlayingProgress(JI)V

    :cond_0
    return-void
.end method
