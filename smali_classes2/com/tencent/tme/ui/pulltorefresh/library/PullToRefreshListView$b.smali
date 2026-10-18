.class public Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/tencent/tme/live/v2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->a:Z

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->L:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->a:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
