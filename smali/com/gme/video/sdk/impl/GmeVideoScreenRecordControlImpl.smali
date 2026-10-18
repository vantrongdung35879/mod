.class public Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;
.super Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;
.source "GmeVideoScreenRecordControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->mCallBack:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    return-object p0
.end method


# virtual methods
.method public enableFeedVideo(ZI)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/capture/ScreenRecorder;->enableFeedVideo(ZI)V

    return-void
.end method

.method public enableFreeStreamRecord(ZLjava/lang/String;J)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/capture/ScreenRecorder;->enableFreeStreamRecord(ZLjava/lang/String;J)V

    return-void
.end method

.method public enableOpengl(Z)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->enableOpengl(Z)V

    return-void
.end method

.method public feedAudioByteData([BJ)I
    .locals 1

    .line 55
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecorder;->feedAudioByteData([BJ)I

    move-result p1

    return p1
.end method

.method public feedAudioData([SJ)I
    .locals 1

    .line 50
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecorder;->feedAudioData([SJ)I

    move-result p1

    return p1
.end method

.method public feedVideoData([BJ)I
    .locals 1

    .line 60
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecorder;->feedVideoByteData([BJ)I

    move-result p1

    return p1
.end method

.method public generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I
    .locals 1

    .line 68
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/capture/ScreenRecorder;->generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I

    move-result p1

    return p1
.end method

.method public getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;
    .locals 1

    .line 80
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;

    move-result-object v0

    return-object v0
.end method

.method public setScreenRecordCallBack(Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->mCallBack:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    return-void
.end method

.method public startRecord(Ljava/lang/String;Landroid/app/Activity;IIIIII)I
    .locals 11

    .line 26
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    new-instance v9, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;

    const/4 v1, 0x0

    move-object v10, p0

    invoke-direct {v9, p0, v1}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$1;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p8

    move/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/gme/video/sdk/capture/ScreenRecorder;->startRecord(Landroid/app/Activity;IIIIIILjava/lang/String;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I

    move-result v0

    return v0
.end method

.method public startStreamRecord(Ljava/lang/String;Landroid/app/Activity;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;)I
    .locals 6

    .line 39
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    new-instance v5, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$1;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gme/video/sdk/capture/ScreenRecorder;->startStreamRecord(Ljava/lang/String;Landroid/app/Activity;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I

    move-result p1

    return p1
.end method

.method public stopRecord(Landroid/content/Context;)I
    .locals 1

    .line 32
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->stopRecord(Landroid/content/Context;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public stopStreamRecord(Landroid/content/Context;)I
    .locals 1

    .line 45
    invoke-static {}, Lcom/gme/video/sdk/capture/ScreenRecorder;->getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->stopStreamRecord(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
