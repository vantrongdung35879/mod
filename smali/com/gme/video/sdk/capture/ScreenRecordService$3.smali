.class Lcom/gme/video/sdk/capture/ScreenRecordService$3;
.super Landroid/media/projection/MediaProjection$Callback;
.source "ScreenRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/capture/ScreenRecordService;->onStartCommand(Landroid/content/Intent;II)I
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

    .line 1043
    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$3;->this$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedContentResize(II)V
    .locals 0

    .line 1051
    invoke-super {p0, p1, p2}, Landroid/media/projection/MediaProjection$Callback;->onCapturedContentResize(II)V

    return-void
.end method

.method public onCapturedContentVisibilityChanged(Z)V
    .locals 0

    .line 1056
    invoke-super {p0, p1}, Landroid/media/projection/MediaProjection$Callback;->onCapturedContentVisibilityChanged(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1046
    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    return-void
.end method
