.class Lcom/tencent/tme/player/control/IEGGPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intlgame/video/IINTLVideoPlayerEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/player/control/IEGGPlayer;->setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/player/control/IEGGPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/player/control/IEGGPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {p2}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v1, p1}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$100(Lcom/tencent/tme/player/control/IEGGPlayer;Lcom/intlgame/video/SPMediaPlayerEvent;)Lcom/tencent/tme/player/TMEPlayerEvent;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/tencent/tme/player/TMEVideoPlayControlCallback;->onEvent(Lcom/tencent/tme/player/TMEPlayerEvent;Landroid/os/Message;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPlayingProgress(JI)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/player/TMEVideoPlayControlCallback;->onPlayingProgress(JI)V

    :cond_0
    return-void
.end method

.method public onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->code:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {p2}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$000(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/tme/player/control/IEGGPlayer$1;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v1, p1}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$200(Lcom/tencent/tme/player/control/IEGGPlayer;Lcom/intlgame/video/SPMediaPlayerState;)Lcom/tencent/tme/player/TMEPlayerState;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/tencent/tme/player/TMEVideoPlayControlCallback;->onState(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
