.class Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayRenderControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StopUpdatePlayProgress()V

    .line 38
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->isPlaying:Z

    .line 39
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PlayerOnCompletionListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayStop()V

    :cond_0
    return-void
.end method
