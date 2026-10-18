.class Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PreparedListenerListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayPixelsControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedListenerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PreparedListenerListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->access$000(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    return-void
.end method
