.class Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 320
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 322
    invoke-static {}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$700()Ljava/lang/String;

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

    .line 323
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$002(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I

    .line 326
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$800(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$800(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$5;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$400(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    return v0
.end method
