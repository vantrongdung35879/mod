.class public final synthetic Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;


# instance fields
.field public final synthetic f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;


# direct methods
.method public synthetic constructor <init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda3;->f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    return-void
.end method


# virtual methods
.method public final onRecordComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda3;->f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->lambda$startGenerateFreeRecord$3$com-gme-video-sdk-capture-ScreenRecordService(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
