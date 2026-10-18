.class public abstract Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase<",
        "TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public B:Z

.field public C:Landroid/widget/AbsListView$OnScrollListener;

.field public D:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;

.field public E:Landroid/view/View;

.field public F:Lcom/tencent/tme/live/v2/c;

.field public G:Lcom/tencent/tme/live/v2/c;

.field public H:Z

.field public I:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->H:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->p()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x2

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public getShowIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->H:Z

    return v0
.end method

.method public h()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h()V

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    goto :goto_0

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/tme/live/v2/c;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j()V

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    goto :goto_0

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/tme/live/v2/c;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public k()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k()V

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->p()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m()V

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->o()V

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/tme/live/v2/c;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-direct {v2, v5, v6}, Lcom/tencent/tme/live/v2/c;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    iput-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tencent/tme/live/biz/R$dimen;->tme_indicator_right_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0x35

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    if-nez v2, :cond_2

    new-instance v0, Lcom/tencent/tme/live/v2/c;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-direct {v0, v2, v3}, Lcom/tencent/tme/live/v2/c;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tme_indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    :cond_3
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    :cond_1
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->D:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;

    if-eqz v0, :cond_1

    if-lez p4, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->B:Z

    :cond_1
    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->p()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->C:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_3
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    iget-object p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->E:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    if-nez p4, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->D:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->B:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->C:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->F:Lcom/tencent/tme/live/v2/c;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    .line 5
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->G:Lcom/tencent/tme/live/v2/c;

    .line 7
    iget-object v1, v0, Lcom/tencent/tme/live/v2/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    :goto_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 2
    invoke-virtual {v0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    instance-of v1, v0, Lcom/tencent/tme/live/v2/a;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/tencent/tme/live/v2/a;

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/v2/a;->setEmptyViewInternal(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    :goto_3
    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->E:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->D:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->C:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->I:Z

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->H:Z

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->o()V

    :goto_0
    return-void
.end method
