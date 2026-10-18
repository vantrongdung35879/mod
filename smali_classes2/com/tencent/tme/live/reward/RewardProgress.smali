.class public Lcom/tencent/tme/live/reward/RewardProgress;
.super Landroid/view/View;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xeb

    iput v0, p0, Lcom/tencent/tme/live/reward/RewardProgress;->c:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/tme/live/reward/RewardProgress;->d:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/RewardProgress;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xeb

    iput p2, p0, Lcom/tencent/tme/live/reward/RewardProgress;->c:I

    const/4 p2, 0x6

    iput p2, p0, Lcom/tencent/tme/live/reward/RewardProgress;->d:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/RewardProgress;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->b:Landroid/content/Context;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->reward_fg_reward_progress:I

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardProgress;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->b:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/tme/live/reward/RewardProgress;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tme/live/reward/RewardProgress;->b:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/tme/live/reward/RewardProgress;->d:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardProgress;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->b:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/tme/live/reward/RewardProgress;->c:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->b:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/tme/live/reward/RewardProgress;->d:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
