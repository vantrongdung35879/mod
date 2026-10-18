.class Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayTextureControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedListenerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    return-void
.end method
