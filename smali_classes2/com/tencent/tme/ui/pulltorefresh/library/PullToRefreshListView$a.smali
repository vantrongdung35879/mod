.class public Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->setItemClickListener(Lcom/tencent/tme/live/t2/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/t2/a$a;

.field public final synthetic b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Lcom/tencent/tme/live/t2/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    iput-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->a:Lcom/tencent/tme/live/t2/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->a:Lcom/tencent/tme/live/t2/a$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    sub-int p2, p3, p2

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-ltz p2, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p4

    if-ge p2, p4, :cond_1

    iget-object p4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->a:Lcom/tencent/tme/live/t2/a$a;

    iget-object p5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$a;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p5, p3, p1}, Lcom/tencent/tme/live/t2/a$a;->a(Lcom/tencent/tme/live/t2/a;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
