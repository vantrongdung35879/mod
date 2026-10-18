.class Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;
.super Ljava/lang/Object;
.source "GmeVideoEditControlNativeImpl.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->initPreviewer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoderEvent(ILjava/lang/String;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDecoderEvent id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object p2, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {p2}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 88
    iget-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {p1}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewFinished()V

    goto :goto_0

    .line 91
    :cond_0
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ControlCallback is null,ignore event,id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFrameCallback(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getVideoData()[B

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getHeight()I

    move-result v3

    .line 74
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getFormat()I

    move-result v4

    .line 71
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewBuffer([BIII)V

    .line 77
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v1

    .line 77
    invoke-interface {v0, v1, v2}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewProgress(J)V

    :cond_0
    return-void
.end method
