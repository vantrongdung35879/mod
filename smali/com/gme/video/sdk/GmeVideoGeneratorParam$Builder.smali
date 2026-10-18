.class public Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
.super Ljava/lang/Object;
.source "GmeVideoGeneratorParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/GmeVideoGeneratorParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBgmAtVideoMs:J

.field private mBgmEndMs:J

.field private mBgmLoop:Z

.field private mBgmPath:Ljava/lang/String;

.field private mBgmStartMs:J

.field private mBgmVideoVolume:F

.field private mBgmVolume:F

.field private mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field private mEndMs:J

.field private mOutPath:Ljava/lang/String;

.field private mRepeatConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mReverse:Z

.field private mSourcePath:Ljava/lang/String;

.field private mSpeedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mStartMs:J

.field private mTimeConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 245
    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mStartMs:J

    .line 246
    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mEndMs:J

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSourcePath:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mOutPath:Ljava/lang/String;

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSpeedConfigs:Ljava/util/List;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mRepeatConfigs:Ljava/util/List;

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mTimeConfigs:Ljava/util/List;

    .line 252
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_ORIGINAL:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mReverse:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    iput v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVideoVolume:F

    .line 255
    iput v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVolume:F

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;-><init>()V

    .line 266
    iput-wide p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mStartMs:J

    .line 267
    iput-wide p3, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mEndMs:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mTimeConfigs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mStartMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mEndMs:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmStartMs:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmEndMs:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmAtVideoMs:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmLoop:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)F
    .locals 0

    .line 221
    iget p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVideoVolume:F

    return p0
.end method

.method static synthetic access$1500(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)F
    .locals 0

    .line 221
    iget p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVolume:F

    return p0
.end method

.method static synthetic access$200(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSourcePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mOutPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSpeedConfigs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mRepeatConfigs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/util/List;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mTimeConfigs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mReverse:Z

    return p0
.end method

.method static synthetic access$900(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bgmPath(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmPath:Ljava/lang/String;

    return-object p0
.end method

.method public bgmTime(JJJZ)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 290
    iput-wide p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmStartMs:J

    .line 291
    iput-wide p3, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmEndMs:J

    .line 292
    iput-wide p5, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmAtVideoMs:J

    .line 293
    iput-boolean p7, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmLoop:Z

    return-object p0
.end method

.method public bgmVolume(FF)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 366
    iput p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVideoVolume:F

    .line 367
    iput p2, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mBgmVolume:F

    return-object p0
.end method

.method public build()Lcom/gme/video/sdk/GmeVideoGeneratorParam;
    .locals 2

    .line 375
    new-instance v0, Lcom/gme/video/sdk/GmeVideoGeneratorParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;-><init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;Lcom/gme/video/sdk/GmeVideoGeneratorParam$1;)V

    return-object v0
.end method

.method public compress(Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mCompressLevel:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-object p0
.end method

.method public repeat(Ljava/util/List;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)",
            "Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mRepeatConfigs:Ljava/util/List;

    return-object p0
.end method

.method public reverse(Z)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mReverse:Z

    return-object p0
.end method

.method public speed(Ljava/util/List;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)",
            "Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSpeedConfigs:Ljava/util/List;

    return-object p0
.end method

.method public videoPath(Ljava/lang/String;Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mSourcePath:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->mOutPath:Ljava/lang/String;

    return-object p0
.end method
