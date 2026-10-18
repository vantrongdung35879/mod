.class Ltv/danmaku/ijk/media/player/GmeVideoView$9;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/GmeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V
    .locals 0

    .line 601
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;III)V
    .locals 2

    .line 604
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 605
    invoke-static {}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 609
    :cond_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1, p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1102(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 610
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1, p4}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1202(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 611
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 612
    :goto_0
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p2

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/IRenderView;->shouldWaitForResize()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 613
    :cond_3
    :goto_1
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 614
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$900(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 615
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$900(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->seekTo(I)V

    .line 618
    :cond_4
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1000(Ltv/danmaku/ijk/media/player/GmeVideoView;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setLoop(Z)V

    .line 620
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->start()V

    :cond_5
    return-void
.end method

.method public onSurfaceCreated(Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;II)V
    .locals 0

    .line 626
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p2

    iget-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p3

    if-eq p2, p3, :cond_0

    .line 627
    invoke-static {}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 631
    :cond_0
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$2102(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 632
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 633
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p3

    invoke-static {p2, p3, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$2200(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 635
    :cond_1
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$2300(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V
    .locals 1

    .line 640
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 641
    invoke-static {}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 646
    :cond_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$2102(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 649
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->releaseWithoutStop()V

    return-void
.end method
