.class public Lcom/tencent/tme/live/reward/RewardEnterView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/reward/RewardEnterView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Timer;

.field public c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

.field public d:I

.field public e:Landroid/widget/TextView;

.field public f:I

.field public g:Lcom/tencent/tme/live/w0/l;

.field public h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

.field public i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public j:Z

.field public k:Lcom/tencent/tme/live/reward/b;


# direct methods
.method public static synthetic $r8$lambda$ueYWjs1CAHQeSjKta_LCPqze4RI(Lcom/tencent/tme/live/reward/RewardEnterView;Lcom/tencent/tme/live/w0/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/reward/RewardEnterView;->a(Lcom/tencent/tme/live/w0/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->j:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/RewardEnterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->j:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/RewardEnterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/tencent/tme/live/w0/l;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->a()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    iget v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/w0/l;->c(I)Z

    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    .line 12
    iget p1, p1, Lcom/tencent/tme/live/w0/l;->f:I

    .line 13
    iput p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->f:I

    .line 14
    new-instance p1, Lcom/tencent/tme/live/q1/b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/tencent/tme/live/q1/b;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    invoke-virtual {p1}, Lcom/tencent/tme/live/w0/l;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->c()V

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BoxEntryShow"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    iget v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/w0/l;->a(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->d()V

    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/tme/live/reward/RewardEnterView$a;

    .line 17
    invoke-direct {p1, p0}, Lcom/tencent/tme/live/reward/RewardEnterView$a;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;)V

    .line 18
    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->j:Z

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->d()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->a:Landroid/content/Context;

    const/high16 v0, 0x42380000    # 46.0f

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->a:Landroid/content/Context;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_reward_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->text_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->e:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_enter_text:I

    invoke-static {v1, v0}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_enter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    iput-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->h:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    new-instance v2, Lcom/tencent/tme/live/q1/a;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/q1/a;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_hot_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 4
    const-string p1, "reward_date"

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->d(I)V

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    const-string p1, "reward_count_time"

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p1

    .line 10
    iput p1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    const-string p1, "initCountTime:"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardEnterView"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/RewardEnterView;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/reward/RewardEnterView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/reward/RewardEnterView$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;)V

    invoke-static {v0}, Lcom/tencent/tme/live/reward/a;->a(Lcom/tencent/tme/live/reward/a$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->g:Lcom/tencent/tme/live/w0/l;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->b:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    :cond_1
    return-void
.end method
