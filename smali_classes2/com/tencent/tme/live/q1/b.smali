.class public Lcom/tencent/tme/live/q1/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/tencent/tme/live/reward/RewardEnterView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/RewardEnterView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/q1/b;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    iput-boolean p2, p0, Lcom/tencent/tme/live/q1/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tme/live/q1/b;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    .line 2
    iget-boolean v2, v1, Lcom/tencent/tme/live/w0/l;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->e:Landroid/widget/TextView;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_receive:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/tencent/tme/live/biz/R$color;->tme_reward_enter_text_get_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    iget-object v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/tme/live/w0/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/RewardEnterView;->a()V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/tencent/tme/live/biz/R$color;->tme_reward_enter_text_def_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    iget v4, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    .line 4
    invoke-virtual {v2, v4}, Lcom/tencent/tme/live/w0/l;->a(I)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "mm:ss"

    invoke-direct {v2, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_2
    const-string v2, ""

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    iget-object v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/q1/b;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 9
    iget-object v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    iget v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    invoke-virtual {v2, v0}, Lcom/tencent/tme/live/w0/l;->b(I)F

    move-result v0

    .line 10
    iget-object v1, v1, Lcom/tencent/tme/live/reward/b;->d:Lcom/tencent/tme/live/reward/RewardProgress;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/reward/RewardProgress;->setProgress(F)V

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/tme/live/q1/b;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/q1/b;->b:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 12
    iget-object v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->k:Lcom/tencent/tme/live/reward/b;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, v0, Lcom/tencent/tme/live/reward/b;->b:Lcom/tencent/tme/live/c1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/c1/b;->b()V

    :cond_4
    return-void
.end method
