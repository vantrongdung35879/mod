.class Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;
.super Ljava/lang/Object;
.source "GmeVideoPlayTextureControlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StartUpdatePlayProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$200(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->getCurrentPosition()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$200(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->getBufferPercentage()I

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {v2}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {v2}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayingProgress(JI)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$300(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    iget v1, v1, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->updateDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
