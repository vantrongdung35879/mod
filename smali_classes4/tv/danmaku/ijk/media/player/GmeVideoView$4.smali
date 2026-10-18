.class Ltv/danmaku/ijk/media/player/GmeVideoView$4;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    .line 437
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 439
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$502(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 440
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1302(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 441
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
