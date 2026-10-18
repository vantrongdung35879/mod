.class public abstract Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;
.super Ljava/lang/Object;
.source "IGmeVideoScreenRecordControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;,
        Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;,
        Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;,
        Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecorder;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public abstract enableFeedVideo(ZI)V
.end method

.method public abstract enableFreeStreamRecord(ZLjava/lang/String;J)V
.end method

.method public abstract enableOpengl(Z)V
.end method

.method public abstract feedAudioByteData([BJ)I
.end method

.method public abstract feedAudioData([SJ)I
.end method

.method public abstract feedVideoData([BJ)I
.end method

.method public abstract generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I
.end method

.method public abstract getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;
.end method

.method public abstract setScreenRecordCallBack(Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;)V
.end method

.method public abstract startRecord(Ljava/lang/String;Landroid/app/Activity;IIIIII)I
.end method

.method public abstract startStreamRecord(Ljava/lang/String;Landroid/app/Activity;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;)I
.end method

.method public abstract stopRecord(Landroid/content/Context;)I
.end method

.method public abstract stopStreamRecord(Landroid/content/Context;)I
.end method
