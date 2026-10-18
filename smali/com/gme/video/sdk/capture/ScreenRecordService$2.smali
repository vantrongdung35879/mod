.class Lcom/gme/video/sdk/capture/ScreenRecordService$2;
.super Ljava/lang/Object;
.source "ScreenRecordService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/capture/ScreenRecordService;->checkEmptyAudioBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 578
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-static {v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$100(Lcom/gme/video/sdk/capture/ScreenRecordService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 581
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-static {v4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$200(Lcom/gme/video/sdk/capture/ScreenRecordService;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 582
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-static {v4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$300(Lcom/gme/video/sdk/capture/ScreenRecordService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 583
    :try_start_0
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    const-wide/16 v6, 0x0

    invoke-static {v5, v0, v1, v6, v7}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$400(Lcom/gme/video/sdk/capture/ScreenRecordService;JJ)V

    .line 584
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$2;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-static {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->access$500(Lcom/gme/video/sdk/capture/ScreenRecordService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
