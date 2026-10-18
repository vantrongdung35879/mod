.class Lcom/gme/video/sdk/capture/ScreenRecordService$1;
.super Ljava/lang/Object;
.source "ScreenRecordService.java"

# interfaces
.implements Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/capture/ScreenRecordService;->lambda$startStreamRecordInternal$0$com-gme-video-sdk-capture-ScreenRecordService()V
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

    .line 253
    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$1;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$1;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->enableOpenglVideoEncode()V

    return-void
.end method
