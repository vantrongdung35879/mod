.class public Lcom/gme/video/sdk/edit/model/GmeVideoSize;
.super Ljava/lang/Object;
.source "GmeVideoSize.java"


# instance fields
.field private mBitrate:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mWidth:I

    .line 12
    iput p2, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mHeight:I

    .line 14
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->initBitrate()V

    return-void
.end method

.method private initBitrate()V
    .locals 4

    .line 18
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mWidth:I

    iget v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mHeight:I

    mul-int v0, v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4013333333333333L    # 4.8

    mul-double v0, v0, v2

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 19
    iget v1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mHeight:I

    const/16 v2, 0x21c

    if-ge v1, v2, :cond_0

    .line 20
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mWidth:I

    mul-int v0, v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 22
    :cond_0
    iput v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mBitrate:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mBitrate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->mWidth:I

    return v0
.end method
