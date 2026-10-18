.class Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;
.super Ljava/lang/Thread;
.source "ScreenRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/capture/ScreenRecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoEncode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 703
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 704
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startVideoEncode()V

    return-void
.end method
