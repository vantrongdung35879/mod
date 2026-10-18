.class public Lcom/tencent/tme/live/v2/b;
.super Lcom/tencent/tme/live/v2/d;


# instance fields
.field public final m:Landroid/view/animation/Animation;

.field public final n:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/v2/d;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne p2, p1, :cond_0

    const/16 p1, -0xb4

    goto :goto_0

    :cond_0
    const/16 p1, 0xb4

    :goto_0
    new-instance p2, Landroid/view/animation/RotateAnimation;

    int-to-float p1, p1

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/tencent/tme/live/v2/b;->m:Landroid/view/animation/Animation;

    sget-object p3, Lcom/tencent/tme/live/v2/d;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v7, 0x96

    invoke-virtual {p2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/tencent/tme/live/v2/b;->n:Landroid/view/animation/Animation;

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method private getDrawableRotationAngle()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/b;->m:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/tme/live/v2/b;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v1, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v2, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/tencent/tme/live/v2/b;->getDrawableRotationAngle()F

    move-result p1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v2, p1, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/tme/live/v2/b;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getDefaultDrawableResId()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$drawable;->tme_default_ptr_flip:I

    return v0
.end method
