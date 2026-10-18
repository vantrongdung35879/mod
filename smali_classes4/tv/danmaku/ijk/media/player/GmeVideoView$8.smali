.class Ltv/danmaku/ijk/media/player/GmeVideoView$8;
.super Ljava/lang/Object;
.source "GmeVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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

    .line 538
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$8;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 542
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView$8;->this$0:Ltv/danmaku/ijk/media/player/GmeVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->access$2002(Ltv/danmaku/ijk/media/player/GmeVideoView;J)J

    return-void
.end method
