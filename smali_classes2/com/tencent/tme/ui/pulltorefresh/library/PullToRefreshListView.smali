.class public Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;
.super Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;

# interfaces
.implements Lcom/tencent/tme/live/t2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase<",
        "Landroid/widget/ListView;",
        ">;",
        "Lcom/tencent/tme/live/t2/a;"
    }
.end annotation


# instance fields
.field public J:Lcom/tencent/tme/live/v2/d;

.field public K:Lcom/tencent/tme/live/v2/d;

.field public L:Landroid/widget/FrameLayout;

.field public M:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x102000a

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setId(I)V

    return-object v0
.end method

.method public a(ZZ)Lcom/tencent/tme/live/u2/b;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/tencent/tme/live/u2/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->M:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/u2/b;->a(Lcom/tencent/tme/live/v2/d;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/u2/b;->a(Lcom/tencent/tme/live/v2/d;)V

    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 3
    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->H:Z

    .line 4
    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrListViewExtrasEnabled:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->M:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p0, v3, v4, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Landroid/content/res/TypedArray;)Lcom/tencent/tme/live/v2/d;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->L:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p0, v1, v3, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Landroid/content/res/TypedArray;)Lcom/tencent/tme/live/v2/d;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->L:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->M:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getShowViewWhileRefreshing()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderLayout()Lcom/tencent/tme/live/v2/d;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    iget-object v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterLayout()Lcom/tencent/tme/live/v2/d;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    iget-object v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    iget-object v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v7

    sub-int/2addr v6, v7

    :goto_0
    invoke-virtual {v1}, Lcom/tencent/tme/live/v2/d;->e()V

    .line 5
    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v7, v1, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v1, v1, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    const/16 v1, 0x8

    .line 6
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    if-ne v2, v1, :cond_6

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    if-ne v2, v1, :cond_7

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    if-eqz v1, :cond_7

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    invoke-virtual {v2}, Lcom/tencent/tme/live/v2/d;->b()V

    if-eqz p1, :cond_8

    .line 7
    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 8
    invoke-virtual {p0, v6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(I)V

    :cond_8
    return-void

    :cond_9
    :goto_2
    invoke-super {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->f()Z

    move-result v0

    return v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;
    .locals 1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    return-object v0
.end method

.method public k()V
    .locals 9

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->M:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->k()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderLayout()Lcom/tencent/tme/live/v2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->J:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v2, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterLayout()Lcom/tencent/tme/live/v2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->K:Lcom/tencent/tme/live/v2/d;

    iget-object v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v2, :cond_3

    move v8, v6

    move v6, v5

    move v5, v8

    goto :goto_1

    :cond_3
    move v2, v5

    move v5, v6

    :goto_0
    move v6, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    .line 1
    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v3, v7, :cond_4

    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v7

    if-ne v3, v7, :cond_5

    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v3, v7, :cond_6

    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v7, v0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v3, v7, :cond_7

    iget-object v0, v0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    const/16 v0, 0x8

    .line 2
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v5}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    :cond_8
    invoke-super {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->k()V

    return-void
.end method

.method public setItemClickListener(Lcom/tencent/tme/live/t2/a$a;)V
    .locals 1

    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Lcom/tencent/tme/live/t2/a$a;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
