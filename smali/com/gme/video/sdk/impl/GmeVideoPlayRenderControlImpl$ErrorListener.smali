.class Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayRenderControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->StopUpdatePlayProgress()V

    .line 101
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onError(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
