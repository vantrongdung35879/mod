.class Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;
.super Ljava/lang/Object;
.source "INTLVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "play error, try replay "

    .line 593
    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoPlayer;->access$100(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/INTLVideoPlayer$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 596
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v1, "retry interrupted"

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 599
    :cond_0
    const-class v1, Lcom/gme/video/sdk/IGmeVideoPlayControl;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoPlayer;->access$500(Lcom/intlgame/video/INTLVideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoPlayer;->access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    const-string v2, "INTLVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$300(Lcom/intlgame/video/INTLVideoPlayer;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$308(Lcom/intlgame/video/INTLVideoPlayer;)I

    .line 607
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->stop()I

    .line 608
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoPlayer;->access$800(Lcom/intlgame/video/INTLVideoPlayer;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v3, v3, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoPlayer;->access$700(Lcom/intlgame/video/INTLVideoPlayer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoURL(Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->play()I

    .line 611
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoPlayer;->access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v2, v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoPlayer;->access$900(Lcom/intlgame/video/INTLVideoPlayer;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVolume(F)V

    .line 612
    monitor-exit v1

    return-void

    .line 601
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback$1;->this$1:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    iget-object v0, v0, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoPlayer;

    const-string v2, "player has beed destroy"

    invoke-virtual {v0, v2}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 602
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 612
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
