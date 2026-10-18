.class Ltv/danmaku/ijk/media/player/GmeVideoView$1;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/GmeVideoView;->asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

.field final synthetic val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 245
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$1;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$1;->val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 247
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$1;->val$mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    :cond_0
    return-void
.end method
