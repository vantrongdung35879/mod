.class public Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;
.super Ljava/lang/Object;
.source "GmeVideoEditConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;,
        Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;,
        Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;,
        Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;
    }
.end annotation


# instance fields
.field private mBgmAtVideoUs:J

.field private mBgmLoop:Z

.field private mBgmPath:Ljava/lang/String;

.field private final mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

.field private mBgmVideoVolume:F

.field private mBgmVolume:F

.field private final mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

.field private final mNoAudio:Z

.field private final mRepeatDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;",
            ">;"
        }
    .end annotation
.end field

.field private final mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSpeedDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

.field private final mTimeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mSpeedDataList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mRepeatDataList:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mNoAudio:Z

    .line 106
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 107
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    iput v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVolume:F

    .line 110
    iput v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVideoVolume:F

    .line 111
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    return-void
.end method

.method public constructor <init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;-><init>()V

    .line 116
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->parserGenParam(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    return-void
.end method

.method private parserGenParam(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->parserGenParam(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    .line 128
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmPath(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmStartMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmEndMs()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmTime(JJ)V

    .line 130
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmVolume(F)V

    .line 131
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmVideoVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmVideoVolume(F)V

    .line 132
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmAtVideoMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmAtVideoTime(J)V

    .line 133
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->isBgmLoop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setBgmLoop(Z)V

    .line 135
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getTimeConfigs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setTimeConfig(Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getStartMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getEndMs()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setTimeConfig(JJ)V

    .line 142
    :goto_0
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getRepeatConfigs()Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getSpeedConfigs()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->isReverse()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setReverseConfig(Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setRepeatConfig(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 149
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->setSpeedConfig(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clearConfig()V
    .locals 2

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->clear()V

    .line 380
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mSpeedDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mRepeatDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 383
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->clear()V

    .line 384
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public fixStartTimeUs(J)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iput-wide p1, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    return-void
.end method

.method public getBgmAtVideoUs()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmAtVideoUs:J

    return-wide v0
.end method

.method public getBgmEndUs()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-wide v0
.end method

.method public getBgmPath()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBgmStartUs()J
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    return-wide v0
.end method

.method public getBgmVideoVolume()F
    .locals 1

    .line 341
    iget v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVideoVolume:F

    return v0
.end method

.method public getBgmVolume()F
    .locals 1

    .line 349
    iget v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVolume:F

    return v0
.end method

.method public getCompressScale()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->getCompressScale()I

    move-result v0

    return v0
.end method

.method public getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mRepeatDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mSpeedDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0

    .line 176
    :cond_3
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->None:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0
.end method

.method public getEndTimeUs()J
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-wide v0
.end method

.method public getOutPath()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->getOutPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mRepeatDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mGeneratorConfig:Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoGeneratorConfig;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mSpeedDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    return-wide v0
.end method

.method public getTimeConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    return-object v0
.end method

.method public getmTimeDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isBgmLoop()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmLoop:Z

    return v0
.end method

.method public isNoAudio()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mNoAudio:Z

    return v0
.end method

.method public isReverse()Z
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBgmAtVideoTime(J)V
    .locals 0

    .line 353
    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmAtVideoUs:J

    return-void
.end method

.method public setBgmLoop(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmLoop:Z

    return-void
.end method

.method public setBgmPath(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmPath:Ljava/lang/String;

    return-void
.end method

.method public setBgmTime(JJ)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 317
    iget-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-void
.end method

.method public setBgmVideoVolume(F)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVideoVolume:F

    return-void
.end method

.method public setBgmVolume(F)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mBgmVolume:F

    return-void
.end method

.method public declared-synchronized setRepeatConfig(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    if-eqz p1, :cond_2

    .line 267
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;

    .line 272
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    invoke-direct {v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;-><init>()V

    .line 273
    iget v2, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->repeatTimes:I

    iput v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->times:I

    .line 275
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->startTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 276
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->endTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 277
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mRepeatDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    :cond_1
    monitor-exit p0

    return-void

    .line 268
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setReverseConfig(Z)V
    .locals 1

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    .line 297
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSpeedConfig(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    if-eqz p1, :cond_2

    .line 238
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;

    .line 243
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;

    invoke-direct {v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;-><init>()V

    .line 244
    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->getSpeed()F

    move-result v2

    iput v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->speed:F

    .line 246
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->startTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 247
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$SpeedConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->endTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 248
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mSpeedDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    :cond_1
    monitor-exit p0

    return-void

    .line 239
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTimeConfig(JJ)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 188
    iget-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeConfig:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-void
.end method

.method public setTimeConfig(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->clearConfig()V

    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;

    .line 201
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    invoke-direct {v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;-><init>()V

    .line 202
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->startTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 203
    iget-object v2, v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->endTimeMs:J

    invoke-static {v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    .line 204
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->mTimeDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
