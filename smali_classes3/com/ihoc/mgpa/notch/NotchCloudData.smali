.class public Lcom/ihoc/mgpa/notch/NotchCloudData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNotchHeight:I

.field private mNotchWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchWidth:I

    .line 3
    iput p2, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchHeight:I

    return-void
.end method


# virtual methods
.method public getNotchHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchHeight:I

    return v0
.end method

.method public getNotchWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotchCloudData{mNotchWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNotchHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ihoc/mgpa/notch/NotchCloudData;->mNotchHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
