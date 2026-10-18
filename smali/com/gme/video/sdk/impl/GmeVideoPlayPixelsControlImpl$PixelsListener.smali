.class Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PixelsListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayPixelsControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPixelsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PixelsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PixelsListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixels([BIII)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PixelsListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl$PixelsListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;)Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;->onPixels([BIII)V

    :cond_0
    return-void
.end method
