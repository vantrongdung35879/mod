.class public final synthetic Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;


# direct methods
.method public synthetic constructor <init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda1;->f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda1;->f$0:Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->lambda$startStreamRecordInternal$0$com-gme-video-sdk-capture-ScreenRecordService()V

    return-void
.end method
