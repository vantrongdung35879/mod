.class public Lcom/tencent/tme/live/l1/a;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/poptv/ui/ScoreBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/l1/a;->a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/tencent/tme/live/l1/a;->a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->j:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/tencent/tme/live/l1/a;->a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/l1/a;->a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->j:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/tencent/tme/live/l1/a;->a:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
