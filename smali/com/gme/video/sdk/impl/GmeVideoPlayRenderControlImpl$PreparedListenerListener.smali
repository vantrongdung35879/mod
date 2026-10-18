.class Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayRenderControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedListenerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    return-void
.end method
