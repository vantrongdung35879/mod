.class Lcom/intlgame/video/INTLVideoManager$1;
.super Ljava/lang/Object;
.source "INTLVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/video/INTLVideoManager;->updateTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoManager;

.field final synthetic val$player:Lcom/intlgame/video/INTLVideoPlayer;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoManager;Lcom/intlgame/video/INTLVideoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoManager$1;->this$0:Lcom/intlgame/video/INTLVideoManager;

    iput-object p2, p0, Lcom/intlgame/video/INTLVideoManager$1;->val$player:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager$1;->val$player:Lcom/intlgame/video/INTLVideoPlayer;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager$1;->this$0:Lcom/intlgame/video/INTLVideoManager;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoManager;->access$000(Lcom/intlgame/video/INTLVideoManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer;->init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 387
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager$1;->val$player:Lcom/intlgame/video/INTLVideoPlayer;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->play()I

    return-void
.end method
