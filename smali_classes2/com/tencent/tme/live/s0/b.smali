.class public Lcom/tencent/tme/live/s0/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/aov/ui/ScheduleView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s0/b;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/s0/b;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tme/live/aov/ui/ScheduleView;->i:Lcom/tencent/tme/live/d1/d;

    .line 2
    invoke-static {p1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Lcom/tencent/tme/live/aov/ui/ScheduleView;)Lcom/tencent/tme/live/r0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/tencent/tme/live/w2/b;->c:Z

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/r0/c;->g()V

    :cond_0
    return-void
.end method
