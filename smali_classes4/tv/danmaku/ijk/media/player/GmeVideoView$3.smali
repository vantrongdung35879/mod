.class Ltv/danmaku/ijk/media/player/GmeVideoView$3;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 387
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .line 389
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$500(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$602(Ltv/danmaku/ijk/media/player/GmeVideoView;J)J

    .line 393
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$502(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 398
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$700(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$700(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 401
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$002(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 402
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$102(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 404
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$900(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 406
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->seekTo(I)V

    .line 409
    :cond_2
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1000(Ltv/danmaku/ijk/media/player/GmeVideoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setLoop(Z)V

    .line 411
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 414
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 415
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSize(II)V

    .line 416
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$200(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 417
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IRenderView;->shouldWaitForResize()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1200(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 421
    :cond_3
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 422
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->start()V

    goto :goto_0

    .line 429
    :cond_4
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 430
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->start()V

    :cond_5
    :goto_0
    return-void
.end method
