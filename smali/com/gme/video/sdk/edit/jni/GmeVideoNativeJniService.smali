.class public Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;
.super Ljava/lang/Object;
.source "GmeVideoNativeJniService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$SingletonHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GmeVideoNativeJniService"


# instance fields
.field private final mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-direct {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    .line 27
    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->initCallback()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;
    .locals 1

    .line 31
    invoke-static {}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$SingletonHolder;->access$100()Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearPreviewConfig()V
    .locals 3

    .line 57
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clearPreviewConfig"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBGMDuration(Ljava/lang/String;)J
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->getBGMDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
    .locals 5

    .line 50
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMediaInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v1, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object v1

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " info = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public pauseGenerate()V
    .locals 3

    .line 130
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pauseGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->pauseGenerate()V

    return-void
.end method

.method public pausePreview()V
    .locals 3

    .line 66
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pausePreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->pausePreview()V

    return-void
.end method

.method public resumeGenerate()V
    .locals 3

    .line 135
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resumeGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->resumeGenerate()V

    return-void
.end method

.method public resumePreview()V
    .locals 3

    .line 71
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resumePreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->resumePreview()V

    return-void
.end method

.method public setBGM(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGM(Ljava/lang/String;)V

    return-void
.end method

.method public setBGMAtVideoTime(J)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGMAtVideoTime(J)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGMLoop(Z)V

    return-void
.end method

.method public setBGMTime(JJ)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGMTime(JJ)V

    return-void
.end method

.method public setBGMVideoVolume(F)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGMVideoVolume(F)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setBGMVolume(F)V

    return-void
.end method

.method public setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V

    return-void
.end method

.method public setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V

    return-void
.end method

.method public setRepeatConfig(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setRepeatConfig"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setRepeatConfig(Ljava/util/List;)V

    return-void
.end method

.method public setReverse(Z)V
    .locals 3

    .line 91
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setReverse reverse = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setReverse(Z)V

    return-void
.end method

.method public setSpeedConfig(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setSpeedConfig"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setSpeedConfig(Ljava/util/List;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)I
    .locals 5

    .line 43
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoPath "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v1, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setVideoPath(Ljava/lang/String;)I

    move-result v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 4

    .line 124
    invoke-static {p1}, Lcom/gme/video/sdk/edit/jni/ParamTools;->toJson(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startGenerate json = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->isFastGen()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->startGenerate(Ljava/lang/String;Z)V

    return-void
.end method

.method public startPreview(JJ)V
    .locals 3

    .line 61
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPreview startTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/jni/BaseNativeJni;->startPreview(JJ)V

    return-void
.end method

.method public stopGenerate()V
    .locals 3

    .line 140
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->stopGenerate()V

    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 76
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopPreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->stopPreview()V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 145
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unInit"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;->mBaseNativeJni:Lcom/gme/video/sdk/jni/BaseNativeJni;

    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->unInit()V

    return-void
.end method
