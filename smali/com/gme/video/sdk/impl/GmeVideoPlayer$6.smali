.class Lcom/gme/video/sdk/impl/GmeVideoPlayer$6;
.super Ljava/lang/Object;
.source "GmeVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayer;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$6;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    .line 347
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayer$6;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayer;

    invoke-static {p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoPlayer;->access$902(Lcom/gme/video/sdk/impl/GmeVideoPlayer;I)I

    return-void
.end method
