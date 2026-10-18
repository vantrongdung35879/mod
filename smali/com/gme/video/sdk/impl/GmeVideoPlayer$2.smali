.class Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$002(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I

    .line 247
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$100(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->setLoop(Z)V

    .line 249
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$200(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->seekTo(I)V

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->start()V

    .line 255
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$300(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$300(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$2;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$400(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_2
    return-void
.end method
