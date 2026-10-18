.class public Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;
.super Ljava/lang/Object;
.source "GmeVideoBGMConfig.java"


# instance fields
.field private mAtVideoTimeUs:J

.field private mBGMVolume:F

.field private mLoop:Z

.field private mPath:Ljava/lang/String;

.field private final mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

.field private mVideoVolume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 18
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mPath:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mAtVideoTimeUs:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    iput v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mVideoVolume:F

    .line 82
    iput v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mBGMVolume:F

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mLoop:Z

    .line 84
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->clear()V

    :cond_0
    return-void
.end method

.method public getAtVideoTimeUs()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mAtVideoTimeUs:J

    return-wide v0
.end method

.method public getBGMVolume()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mBGMVolume:F

    return v0
.end method

.method public getEndTimeUs()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v0, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    return-wide v0
.end method

.method public getVideoVolume()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mVideoVolume:F

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mLoop:Z

    return v0
.end method

.method public setAtVideoTimeMs(J)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mAtVideoTimeUs:J

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mBGMVolume:F

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mLoop:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mPath:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->clear()V

    return-void
.end method

.method public setTime(JJ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 64
    iget-object p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mTime:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    invoke-static {p3, p4}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->fixMs2Us(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-void
.end method

.method public setVideoVolume(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBGMConfig;->mVideoVolume:F

    return-void
.end method
