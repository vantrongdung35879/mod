.class public Lcom/tencent/tme/live/s0/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/aov/ui/ScheduleView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s0/c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tme/live/s0/c;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/aov/ui/ScheduleView;->g:Lcom/tencent/tme/live/w0/n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/w0/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    const-string v1, "ScheduleView"

    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
