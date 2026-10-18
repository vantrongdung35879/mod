.class Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayTextureControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->StopUpdatePlayProgress()V

    .line 106
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onError(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
