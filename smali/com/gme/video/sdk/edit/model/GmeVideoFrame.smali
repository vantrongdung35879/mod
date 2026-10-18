.class public Lcom/gme/video/sdk/edit/model/GmeVideoFrame;
.super Ljava/lang/Object;
.source "GmeVideoFrame.java"


# instance fields
.field private final mAudioData:[S

.field private final mFormat:I

.field private final mHeight:I

.field private final mPtsUs:J

.field private final mVideoData:[B

.field private final mWidth:I


# direct methods
.method private constructor <init>(J[BIII[S)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mPtsUs:J

    .line 19
    iput-object p3, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mVideoData:[B

    .line 20
    iput p4, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mWidth:I

    .line 21
    iput p5, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mHeight:I

    .line 22
    iput p6, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mFormat:I

    .line 23
    iput-object p7, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mAudioData:[S

    return-void
.end method

.method public static createAudioFrame(J[S)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;
    .locals 9

    .line 31
    new-instance v8, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, v8

    move-wide v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;-><init>(J[BIII[S)V

    return-object v8
.end method

.method public static createVideoFrame(J[BIII)Lcom/gme/video/sdk/edit/model/GmeVideoFrame;
    .locals 9

    .line 27
    new-instance v8, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;-><init>(J[BIII[S)V

    return-object v8
.end method


# virtual methods
.method public getAudioData()[S
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mAudioData:[S

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mHeight:I

    return v0
.end method

.method public getPtsUs()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mPtsUs:J

    return-wide v0
.end method

.method public getVideoData()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mVideoData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmeVideoFrame{mPtsUs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mPtsUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mColorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
