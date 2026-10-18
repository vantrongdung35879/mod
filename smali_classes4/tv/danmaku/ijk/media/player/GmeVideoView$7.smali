.class Ltv/danmaku/ijk/media/player/GmeVideoView$7;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/GmeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V
    .locals 0

    .line 532
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$7;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    .line 534
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$7;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$1902(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I

    return-void
.end method
