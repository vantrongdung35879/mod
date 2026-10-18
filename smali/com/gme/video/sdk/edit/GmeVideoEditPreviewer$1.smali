.class Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;
.super Ljava/lang/Object;
.source "GmeVideoEditPreviewer.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->initDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoderEvent(ILjava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;->onDecoderEvent(ILjava/lang/String;)V

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 75
    iget-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->stopPreview()I

    :cond_1
    return-void
.end method

.method public onImageDecoder(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$1;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;)Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;->onFrameCallback(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    :cond_0
    return-void
.end method
