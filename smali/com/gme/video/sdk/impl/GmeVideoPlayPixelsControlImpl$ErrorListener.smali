.class Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$ErrorListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayPixelsControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->StopUpdatePlayProgress()V

    .line 106
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$ErrorListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onError(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
