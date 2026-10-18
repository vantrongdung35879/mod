.class public final Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;
.super Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$b;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public overScrollBy(IIIIIIIIZ)Z
    .locals 1

    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p5

    iget-object p6, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView$c;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    .line 1
    invoke-virtual {p6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p7

    const/4 p8, 0x1

    if-eq p7, p8, :cond_0

    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    move p3, p4

    move v0, p2

    move p2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p2

    :goto_0
    invoke-virtual {p6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {p6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object p7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 p8, 0x0

    if-eq p4, p7, :cond_5

    sget-object p7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq p4, p7, :cond_5

    if-nez p9, :cond_5

    if-eqz p1, :cond_5

    add-int/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    if-gez p1, :cond_2

    .line 3
    invoke-virtual {p4}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p2, :cond_1

    sget-object p4, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array p7, p8, [Z

    invoke-virtual {p6, p4, p7}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    :cond_1
    :goto_1
    add-int/2addr p2, p1

    int-to-float p1, p2

    mul-float p3, p3, p1

    float-to-int p1, p3

    invoke-virtual {p6, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_2

    :cond_2
    if-lez p1, :cond_3

    invoke-virtual {p4}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p2, :cond_1

    sget-object p4, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array p7, p8, [Z

    invoke-virtual {p6, p4, p7}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gtz p1, :cond_6

    :cond_4
    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array p2, p8, [Z

    invoke-virtual {p6, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    goto :goto_2

    :cond_5
    if-eqz p9, :cond_6

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    invoke-virtual {p6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    move-result-object p2

    if-ne p1, p2, :cond_6

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array p2, p8, [Z

    invoke-virtual {p6, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    :cond_6
    :goto_2
    return p5
.end method
