.class public Lcom/tencent/tme/live/q1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/reward/RewardEnterView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/RewardEnterView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/q1/a;->a:Lcom/tencent/tme/live/reward/RewardEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "BoxEntryClick"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/q1/a;->a:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/tme/live/reward/b;

    iget-object v2, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    invoke-direct {v1, p1, v2}, Lcom/tencent/tme/live/reward/b;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;Lcom/tencent/tme/live/w0/l;)V

    iput-object v1, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    :cond_2
    iget-object v1, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    iget-object v2, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    iget v3, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/w0/l;->b(I)F

    move-result v2

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/reward/b;->d:Lcom/tencent/tme/live/reward/RewardProgress;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/reward/RewardProgress;->setProgress(F)V

    .line 3
    :cond_3
    iget-object p1, p1, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/d1/a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string v1, "RewardEnterView"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BoxDisplay"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method
