.class public abstract Lcom/gme/video/sdk/IGmeVideoEditControl;
.super Ljava/lang/Object;
.source "IGmeVideoEditControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;,
        Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;,
        Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;,
        Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;,
        Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearPreviewConfig()V
.end method

.method public abstract getBGMDuration(Ljava/lang/String;)J
.end method

.method public abstract getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;
.end method

.method public abstract pauseGenerate()V
.end method

.method public abstract pausePreview()V
.end method

.method public abstract resumeGenerate()V
.end method

.method public abstract resumePreview()V
.end method

.method public abstract setBGM(Ljava/lang/String;)I
.end method

.method public abstract setBGMAtVideoTime(J)V
.end method

.method public abstract setBGMLoop(Z)V
.end method

.method public abstract setBGMTime(JJ)V
.end method

.method public abstract setBGMVideoVolume(F)V
.end method

.method public abstract setBGMVolume(F)V
.end method

.method public abstract setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V
.end method

.method public abstract setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V
.end method

.method public abstract setRepeatConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setReverse(Z)V
.end method

.method public abstract setSpeedConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVideoPath(Ljava/lang/String;)I
.end method

.method public abstract startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
.end method

.method public abstract startPreview(JJ)V
.end method

.method public abstract stopGenerate()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract unInit()V
.end method
