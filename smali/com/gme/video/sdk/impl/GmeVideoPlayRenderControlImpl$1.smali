.class Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;
.super Ljava/lang/Object;
.source "GmeVideoPlayRenderControlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StartUpdatePlayProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)Ltv/danmaku/ijk/media/player/GmeVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getCurrentPosition()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-static {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)Ltv/danmaku/ijk/media/player/GmeVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getBufferPercentage()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object v2, v2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object v2, v2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayingProgress(JI)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object v0, v0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget v1, v1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->updateDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
