.class Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayTextureControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StopUpdatePlayProgress()V

    .line 44
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->isPlaying:Z

    .line 45
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayStop()V

    :cond_0
    return-void
.end method
