.class public Lcom/tencent/tme/live/reward/RewardEnterView$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/reward/RewardEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/tencent/tme/live/reward/RewardEnterView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/RewardEnterView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->a:Z

    const-string v1, "RewardEnterView"

    if-eqz v0, :cond_0

    const-string v0, "count is pause!!!"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 1
    iget v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    .line 2
    rem-int/lit8 v0, v2, 0x3

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/tencent/tme/live/v0/l;->d(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 3
    iget-object v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    .line 4
    iget v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    .line 5
    invoke-virtual {v2, v0}, Lcom/tencent/tme/live/w0/l;->c(I)Z

    move-result v0

    iget-object v2, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v3, Lcom/tencent/tme/live/q1/b;

    invoke-direct {v3, v2, v0}, Lcom/tencent/tme/live/q1/b;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 9
    iget v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    .line 10
    iget v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->f:I

    if-lt v2, v0, :cond_2

    .line 11
    const-string v0, "count is stop!!!"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 12
    iget v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    .line 13
    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->d(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 14
    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/RewardEnterView;->d()V

    :cond_2
    return-void
.end method
