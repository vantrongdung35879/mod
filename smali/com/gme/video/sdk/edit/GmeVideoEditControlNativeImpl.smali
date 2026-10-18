.class public Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;
.super Lcom/gme/video/sdk/IGmeVideoEditControl;
.source "GmeVideoEditControlNativeImpl.java"


# static fields
.field public static final SUPPORT_TYPE_AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_TYPE_VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

.field private mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

.field private mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

.field private mGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$1;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$1;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->SUPPORT_TYPE_AUDIO:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$2;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$2;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->SUPPORT_TYPE_VIDEO:Ljava/util/HashSet;

    .line 43
    const-string v0, "GmeVideoEditControlNativeImpl"

    sput-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoEditControl;-><init>()V

    .line 61
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->initPreviewer()V

    .line 62
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->initGenerator()V

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    return-object p0
.end method

.method private checkMediaValidity(Ljava/lang/String;Z)I
    .locals 12

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "setVideoPath = %s ret = %d"

    const/4 v3, 0x2

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v0, :cond_5

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/gme/video/sdk/utils/FileUtil;->getExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 171
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->SUPPORT_TYPE_VIDEO:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    .line 173
    :cond_1
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->SUPPORT_TYPE_AUDIO:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_2

    .line 177
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v4, v3, v1

    invoke-static {p2, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 182
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Lcom/gme/video/sdk/GmeVideoInfo;->getAudioChannelCount()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 186
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object v4, v0, v1

    invoke-static {p2, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 191
    :cond_3
    invoke-virtual {p2}, Lcom/gme/video/sdk/GmeVideoInfo;->getAudioDuration()J

    move-result-wide v6

    .line 192
    invoke-virtual {p2}, Lcom/gme/video/sdk/GmeVideoInfo;->getVideoDuration()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long p2, v6, v10

    if-nez p2, :cond_4

    cmp-long p2, v8, v10

    if-nez p2, :cond_4

    .line 195
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object v4, v0, v1

    invoke-static {p2, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_4
    return v5

    .line 164
    :cond_5
    :goto_1
    sget-object p2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object v4, v0, v1

    invoke-static {p2, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private initGenerator()V
    .locals 2

    .line 98
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    .line 99
    new-instance v1, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->setProgressCallback(Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;)V

    return-void
.end method

.method private initPreviewer()V
    .locals 2

    .line 66
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    .line 67
    new-instance v1, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$3;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setFrameCallback(Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public clearPreviewConfig()V
    .locals 3

    .line 220
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clearPreviewConfig"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->clearConfig()V

    return-void
.end method

.method public getBGMDuration(Ljava/lang/String;)J
    .locals 2

    .line 339
    invoke-static {p1}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getAudioDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;
    .locals 1

    .line 214
    invoke-static {p1}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object p1

    .line 215
    new-instance v0, Lcom/gme/video/sdk/GmeVideoInfo;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/GmeVideoInfo;-><init>(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    return-object v0
.end method

.method public initJniCallback()V
    .locals 1

    .line 272
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$5;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$5;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V

    .line 290
    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$6;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$6;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V

    return-void
.end method

.method public pauseGenerate()V
    .locals 3

    .line 360
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pauseGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->pauseGenerate()V

    return-void
.end method

.method public pausePreview()V
    .locals 3

    .line 233
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pausePreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->pausePreview()I

    return-void
.end method

.method public resumeGenerate()V
    .locals 3

    .line 366
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resumeGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->resumeGenerate()V

    return-void
.end method

.method public resumePreview()V
    .locals 3

    .line 239
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resumePreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->resumePreview()I

    return-void
.end method

.method public setBGM(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->checkMediaValidity(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v1, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMPath(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public setBGMAtVideoTime(J)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMAtVideoTime(J)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMLoop(Z)V

    return-void
.end method

.method public setBGMTime(JJ)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMTime(JJ)V

    return-void
.end method

.method public setBGMVideoVolume(F)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMVideoVolume(F)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setBGMVolume(F)V

    return-void
.end method

.method public setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V
    .locals 3

    .line 122
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEditControlCallback = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    return-void
.end method

.method public setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEditControlGenerateCallback = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

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

    .line 257
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRepeatConfig cfg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setRepeatConfig(Ljava/util/List;)V

    return-void
.end method

.method public setReverse(Z)V
    .locals 3

    .line 263
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setReverse cfg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setReverseConfig(Z)V

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

    .line 251
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSpeedConfig cfg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setSpeedConfig(Ljava/util/List;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->checkMediaValidity(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v2, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setVideoPath(Ljava/lang/String;)I

    .line 146
    sget-object v2, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v3, v4, v0

    const-string/jumbo p1, "setVideoPath = %s ret =  %d"

    invoke-static {v2, p1, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 3

    .line 354
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startGenerate p = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    return-void
.end method

.method public startGenerateJni(Ljava/lang/String;)V
    .locals 0

    .line 349
    invoke-static {p1}, Lcom/gme/video/sdk/edit/jni/ParamTools;->fromJson(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    return-void
.end method

.method public startPreview(JJ)V
    .locals 3

    .line 226
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPreview s = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->setTimeConfig(JJ)V

    .line 228
    iget-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->startPreview()I

    return-void
.end method

.method public stopGenerate()V
    .locals 3

    .line 372
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopGenerate"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditGenerator:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->stopGenerate()V

    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 245
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopPreview"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->stopPreview()I

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 204
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unInit "

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V

    .line 206
    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;->stopPreview()I

    .line 208
    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->mEditPreviewer:Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;

    :cond_0
    return-void
.end method
