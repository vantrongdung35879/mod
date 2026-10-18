.class public Lcom/tencent/tme/live/aov/ui/ScheduleView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/p0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/ui/ScheduleView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/p0/b$b<",
        "Ljava/util/List<",
        "Lcom/tencent/tme/live/w0/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/aov/ui/ScheduleView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object p2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 2
    iget-object p2, p2, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    .line 3
    new-instance v0, Lcom/tencent/tme/live/aov/ui/a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tme/live/aov/ui/a;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView$c;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
