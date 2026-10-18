.class Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;
.super Ljava/lang/Object;
.source "INTLVideoRecorder.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GmeVideoScreenRecordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoRecorder;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoRecorder;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "IGmeVideoScreenRecordControlCallback onComplete jsonString="

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IGmeVideoScreenRecordControlCallback onComplete errCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recordPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTLVideoMomentRecord"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    .line 452
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    iput-boolean v3, v1, Lcom/intlgame/video/INTLVideoRecorder;->mIsWaitingRecordCallback:Z

    .line 453
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoRecorder;->access$000(Lcom/intlgame/video/INTLVideoRecorder;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    iget-boolean v5, v5, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/intlgame/video/INTLVideoRecorder;->switchPlugIn(JZ)V

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    iget-boolean v1, v1, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 459
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {p3}, Lcom/intlgame/video/INTLVideoRecorder;->access$400(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/intlgame/video/INTLVideoFileStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/intlgame/video/INTLVideoFileStorage;->validateWritePermission()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 462
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {p3}, Lcom/intlgame/video/INTLVideoRecorder;->access$400(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/intlgame/video/INTLVideoFileStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoRecorder;->access$500(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoFileStorage;->moveVideoToStoredFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/intlgame/video/INTLVideoRecorder;->access$502(Lcom/intlgame/video/INTLVideoRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    :cond_0
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/intlgame/video/INTLVideoRecorder;->access$600(Lcom/intlgame/video/INTLVideoRecorder;Z)V

    .line 467
    :cond_1
    new-instance p3, Lcom/intlgame/video/model/INTLVideoRecordCompleteMessage;

    invoke-direct {p3}, Lcom/intlgame/video/model/INTLVideoRecordCompleteMessage;-><init>()V

    .line 468
    iput p1, p3, Lcom/intlgame/video/model/INTLVideoRecordCompleteMessage;->errorCode:I

    .line 469
    iput-object p2, p3, Lcom/intlgame/video/model/INTLVideoRecordCompleteMessage;->errorInfo:Ljava/lang/String;

    .line 470
    invoke-virtual {p3}, Lcom/intlgame/video/model/INTLVideoRecordCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 471
    sget-object p2, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_NORMAL_RECORD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p2}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p2

    const/16 p3, 0x21

    invoke-static {p2, p3, p1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    new-instance v1, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;

    invoke-direct {v1}, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;-><init>()V

    .line 475
    iput p1, v1, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;->errorCode:I

    .line 476
    iput-object p2, v1, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;->errorInfo:Ljava/lang/String;

    .line 477
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {p1}, Lcom/intlgame/video/INTLVideoRecorder;->access$700(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/gme/video/sdk/IGmeVideoEditControl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/gme/video/sdk/IGmeVideoEditControl;->getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;

    move-result-object p1

    .line 478
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoInfo;->getDurationMs()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;->duration:J

    .line 479
    invoke-virtual {v1}, Lcom/intlgame/video/model/INTLVideoMomentRecordCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object p2, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_RECORD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p2}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p2

    const/16 p3, 0x23

    invoke-static {p2, p3, p1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "IGmeVideoScreenRecordControlCallback nativePostEvent exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 486
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 434
    const-string v0, "INTLVideoMomentRecord"

    const-string v1, "IGmeVideoScreenRecordControlCallback onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/intlgame/video/INTLVideoRecorder;->mIsWaitingRecordCallback:Z

    .line 436
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    iget-boolean v0, v0, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_NORMAL_RECORD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v0

    const/16 v2, 0x20

    invoke-static {v0, v2, v1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_0
    sget-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_RECORD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v0

    const/16 v2, 0x22

    invoke-static {v0, v2, v1}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    :goto_0
    return-void
.end method
