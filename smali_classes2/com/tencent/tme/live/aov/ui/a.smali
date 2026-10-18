.class public Lcom/tencent/tme/live/aov/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView$c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iput-object p2, p0, Lcom/tencent/tme/live/aov/ui/a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/a;->b:Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    .line 10
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void
.end method
