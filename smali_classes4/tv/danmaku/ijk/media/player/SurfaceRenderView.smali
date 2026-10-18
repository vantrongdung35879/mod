.class public Ltv/danmaku/ijk/media/player/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;,
        Ltv/danmaku/ijk/media/player/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

.field private mSurfaceCallback:Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 62
    new-instance p1, Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-direct {p1, p0}, Ltv/danmaku/ijk/media/player/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    .line 63
    new-instance p1, Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;

    invoke-direct {p1, p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;-><init>(Ltv/danmaku/ijk/media/player/SurfaceRenderView;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;

    .line 64
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 66
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V
    .locals 1

    .line 175
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 275
    const-class v0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 283
    const-class v0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 112
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/MeasureHelper;->doMeasure(II)V

    .line 113
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V
    .locals 1

    .line 180
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/MeasureHelper;->setAspectRatio(I)V

    .line 107
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceView doesn\'t support rotation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 94
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 95
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 85
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/player/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/MeasureHelper;->setVideoSize(II)V

    .line 86
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 87
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
