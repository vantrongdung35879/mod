.class Ltv/danmaku/ijk/media/player/GmeVideoView$6;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 499
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 501
    invoke-static {}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$502(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 503
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1302(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    .line 506
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    return v0
.end method
