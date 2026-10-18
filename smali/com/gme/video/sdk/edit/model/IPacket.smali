.class public Lcom/gme/video/sdk/edit/model/IPacket;
.super Ljava/lang/Object;
.source "IPacket.java"


# instance fields
.field private mIndex:I

.field private mSampleTimeUs:J

.field private mSize:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mIndex:I

    .line 14
    iput p2, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSize:I

    .line 15
    iput-wide p3, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSampleTimeUs:J

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mIndex:I

    return v0
.end method

.method public getSampleTimeUs()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSampleTimeUs:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPacket{mIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSampleTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/edit/model/IPacket;->mSampleTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
