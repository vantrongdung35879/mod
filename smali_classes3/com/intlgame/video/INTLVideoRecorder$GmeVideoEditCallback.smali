.class Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;
.super Ljava/lang/Object;
.source "INTLVideoRecorder.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GmeVideoEditCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoRecorder;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoRecorder;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onComplete code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sourcePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "INTLVideoMomentRecord"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x25

    .line 390
    const-string v1, "nativePostEvent exception"

    if-nez p1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoRecorder;->access$400(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/intlgame/video/INTLVideoFileStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intlgame/video/INTLVideoFileStorage;->validateWritePermission()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoRecorder;->access$400(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/intlgame/video/INTLVideoFileStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v4}, Lcom/intlgame/video/INTLVideoRecorder;->access$500(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/intlgame/video/INTLVideoFileStorage;->moveVideoToStoredFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$502(Lcom/intlgame/video/INTLVideoRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v2}, Lcom/intlgame/video/INTLVideoRecorder;->clearMomentVideo()I

    .line 397
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$600(Lcom/intlgame/video/INTLVideoRecorder;Z)V

    .line 399
    :try_start_0
    new-instance v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;

    invoke-direct {v2}, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;-><init>()V

    .line 400
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$500(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->filePath:Ljava/lang/String;

    .line 401
    iput p1, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->errorCode:I

    .line 402
    iput-object p2, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->errorInfo:Ljava/lang/String;

    .line 404
    invoke-virtual {v2}, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 405
    sget-object p2, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p2}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p2

    invoke-static {p2, p3, p1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v2}, Lcom/intlgame/video/INTLVideoRecorder;->clearMomentVideo()I

    .line 414
    :try_start_1
    new-instance v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;

    invoke-direct {v2}, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;-><init>()V

    .line 415
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$500(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->filePath:Ljava/lang/String;

    .line 416
    iput p1, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->errorCode:I

    .line 417
    iput-object p2, v2, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->errorInfo:Ljava/lang/String;

    .line 419
    invoke-virtual {v2}, Lcom/intlgame/video/model/INTLVideoGenerationCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 420
    sget-object p2, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p2}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p2

    invoke-static {p2, p3, p1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "momentGenerate onProgress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    new-instance v0, Lcom/intlgame/video/model/INTLVideoGenerationProgressMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoGenerationProgressMessage;-><init>()V

    .line 376
    iput p1, v0, Lcom/intlgame/video/model/INTLVideoGenerationProgressMessage;->progress:I

    .line 377
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoGenerationProgressMessage;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 378
    sget-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v0

    const/16 v2, 0x24

    invoke-static {v0, v2, p1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nativePostEvent exception"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
