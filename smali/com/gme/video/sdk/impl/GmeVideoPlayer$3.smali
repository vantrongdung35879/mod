.class Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    .line 262
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$002(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I

    .line 265
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$500(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$500(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$3;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$400(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
