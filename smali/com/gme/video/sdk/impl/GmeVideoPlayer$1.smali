.class Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayer;->asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

.field final synthetic val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    iput-object p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;->val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$1;->val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    :cond_0
    return-void
.end method
