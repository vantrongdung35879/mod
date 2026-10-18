.class Lcom/tencent/tme/player/control/IEGGPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intlgame/video/IINTLVideoPlayerLogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/player/control/IEGGPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V
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

    iput-object p1, p0, Lcom/tencent/tme/player/control/IEGGPlayer$2;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$2;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$300(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayLogCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/player/control/IEGGPlayer$2;->this$0:Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-static {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;->access$300(Lcom/tencent/tme/player/control/IEGGPlayer;)Lcom/tencent/tme/player/TMEVideoPlayLogCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/player/TMEVideoPlayLogCallback;->onLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
