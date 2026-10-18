.class public Lcom/tencent/tme/live/v2/e;
.super Lcom/tencent/tme/live/v2/d;


# instance fields
.field public final m:Landroid/view/animation/Animation;

.field public final n:Landroid/graphics/Matrix;

.field public o:F

.field public p:F

.field public final q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/v2/d;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrRotateDrawableWhilePulling:I

    const/4 p2, 0x1

    invoke-virtual {p4, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/v2/e;->q:Z

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/v2/e;->n:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/tencent/tme/live/v2/e;->m:Landroid/view/animation/Animation;

    sget-object p3, Lcom/tencent/tme/live/v2/d;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x4b0

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tme/live/v2/e;->q:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr p1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/e;->n:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/tencent/tme/live/v2/e;->o:F

    iget v2, p0, Lcom/tencent/tme/live/v2/e;->p:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/tme/live/v2/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/tme/live/v2/e;->o:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tencent/tme/live/v2/e;->p:F

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/tme/live/v2/e;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/v2/e;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/tme/live/v2/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public getDefaultDrawableResId()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$drawable;->tme_default_ptr_rotate:I

    return v0
.end method
