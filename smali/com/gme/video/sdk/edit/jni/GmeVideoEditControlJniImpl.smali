.class public Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;
.super Lcom/gme/video/sdk/IGmeVideoEditControl;
.source "GmeVideoEditControlJniImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    const-string v0, "GmeVideoEditControlNativeImpl"

    sput-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoEditControl;-><init>()V

    .line 28
    invoke-static {}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->getInstance()Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    return-void
.end method


# virtual methods
.method public clearPreviewConfig()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->clearPreviewConfig()V

    return-void
.end method

.method public getBGMDuration(Ljava/lang/String;)J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->getBGMDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object v0

    .line 54
    iput-object p1, v0, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mFileName:Ljava/lang/String;

    .line 55
    new-instance p1, Lcom/gme/video/sdk/GmeVideoInfo;

    invoke-direct {p1, v0}, Lcom/gme/video/sdk/GmeVideoInfo;-><init>(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    return-object p1
.end method

.method public pauseGenerate()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->pauseGenerate()V

    return-void
.end method

.method public pausePreview()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->pausePreview()V

    return-void
.end method

.method public resumeGenerate()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->resumeGenerate()V

    return-void
.end method

.method public resumePreview()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->resumePreview()V

    return-void
.end method

.method public setBGM(Ljava/lang/String;)I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGM(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setBGMAtVideoTime(J)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGMAtVideoTime(J)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGMLoop(Z)V

    return-void
.end method

.method public setBGMTime(JJ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGMTime(JJ)V

    return-void
.end method

.method public setBGMVideoVolume(F)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGMVideoVolume(F)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setBGMVolume(F)V

    return-void
.end method

.method public setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V

    return-void
.end method

.method public setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V

    return-void
.end method

.method public setRepeatConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setRepeatConfig(Ljava/util/List;)V

    return-void
.end method

.method public setReverse(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setReverse(Z)V

    return-void
.end method

.method public setSpeedConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setSpeedConfig(Ljava/util/List;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->setVideoPath(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    return-void
.end method

.method public startPreview(JJ)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->startPreview(JJ)V

    return-void
.end method

.method public stopGenerate()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->stopGenerate()V

    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->stopPreview()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;->mJniService:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->unInit()V

    return-void
.end method
