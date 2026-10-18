.class Ltv/danmaku/ijk/media/player/GmeVideoView$2;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 370
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 372
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$002(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 373
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p2, p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$102(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 374
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result p3

    invoke-static {p2, p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$202(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 375
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result p1

    invoke-static {p2, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$302(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 376
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p2

    iget-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSize(II)V

    .line 379
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;

    move-result-object p1

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$200(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p2

    iget-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p3}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 382
    :cond_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->requestLayout()V

    :cond_1
    return-void
.end method
