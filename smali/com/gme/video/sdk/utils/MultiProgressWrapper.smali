.class public Lcom/gme/video/sdk/utils/MultiProgressWrapper;
.super Ljava/lang/Object;
.source "MultiProgressWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;
    }
.end annotation


# instance fields
.field private mBaseProgress:F

.field private mCurrentStepIndex:I

.field private final mProgressListener:Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;

.field private final mStepWeights:[F


# direct methods
.method public constructor <init>([FLcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mStepWeights:[F

    .line 20
    iput-object p2, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mProgressListener:Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mCurrentStepIndex:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mBaseProgress:F

    return-void
.end method


# virtual methods
.method public publishEvent(ILjava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mProgressListener:Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;->onEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public publishProgress(F)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mProgressListener:Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mStepWeights:[F

    iget v2, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mCurrentStepIndex:I

    aget v1, v1, v2

    mul-float p1, p1, v1

    iget v1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mBaseProgress:F

    add-float/2addr p1, v1

    .line 37
    invoke-interface {v0, p1}, Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public setCurrentStepIndex(I)V
    .locals 3

    .line 26
    iput p1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mCurrentStepIndex:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mBaseProgress:F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 30
    iget v1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mBaseProgress:F

    iget-object v2, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mStepWeights:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->mBaseProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
