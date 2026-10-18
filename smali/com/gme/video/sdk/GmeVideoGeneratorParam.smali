.class public Lcom/gme/video/sdk/GmeVideoGeneratorParam;
.super Ljava/lang/Object;
.source "GmeVideoGeneratorParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    }
.end annotation


# instance fields
.field private final mBgmAtVideoMs:J

.field private final mBgmEndMs:J

.field private final mBgmLoop:Z

.field private final mBgmPath:Ljava/lang/String;

.field private final mBgmStartMs:J

.field private final mBgmVideoVolume:F

.field private final mBgmVolume:F

.field private final mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field private final mEndMs:J

.field private final mOutPath:Ljava/lang/String;

.field private final mRepeatConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mReverse:Z

.field private final mSourcePath:Ljava/lang/String;

.field private final mSpeedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartMs:J

.field private final mTimeConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$000(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mStartMs:J

    .line 37
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$100(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mEndMs:J

    .line 39
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$200(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSourcePath:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$300(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mOutPath:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$400(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSpeedConfigs:Ljava/util/List;

    .line 43
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$500(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mRepeatConfigs:Ljava/util/List;

    .line 44
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$600(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    .line 45
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$700(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mTimeConfigs:Ljava/util/List;

    .line 47
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$800(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mReverse:Z

    .line 49
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$900(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmPath:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1000(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmStartMs:J

    .line 52
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1100(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmEndMs:J

    .line 53
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1200(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmAtVideoMs:J

    .line 54
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1300(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmLoop:Z

    .line 56
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1400(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)F

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVideoVolume:F

    .line 57
    invoke-static {p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->access$1500(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)F

    move-result p1

    iput p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVolume:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;Lcom/gme/video/sdk/GmeVideoGeneratorParam$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;-><init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)V

    return-void
.end method


# virtual methods
.method public getBgmAtVideoMs()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmAtVideoMs:J

    return-wide v0
.end method

.method public getBgmEndMs()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmEndMs:J

    return-wide v0
.end method

.method public getBgmPath()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBgmStartMs()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmStartMs:J

    return-wide v0
.end method

.method public getBgmVideoVolume()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVideoVolume:F

    return v0
.end method

.method public getBgmVolume()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVolume:F

    return v0
.end method

.method public getCompressLevel()Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-object v0
.end method

.method public getEndMs()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mEndMs:J

    return-wide v0
.end method

.method public getOutPath()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mOutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mRepeatConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSpeedConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getStartMs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mStartMs:J

    return-wide v0
.end method

.method public getTimeConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mTimeConfigs:Ljava/util/List;

    return-object v0
.end method

.method public isBgmLoop()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmLoop:Z

    return v0
.end method

.method public isFastGen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mReverse:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmeVideoGeneratorParam{mSourcePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mOutPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mStartMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mEndMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeedConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mSpeedConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRepeatConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mRepeatConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mTimeConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCompressLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmStartMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmStartMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmEndMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmEndMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmAtVideoMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmAtVideoMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmVideoVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVideoVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBgmVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->mBgmVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
