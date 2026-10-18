.class public Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;
.super Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;


# instance fields
.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ring_timer_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a(II)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->h:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->i:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_option_l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_option_r:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->vs_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->u:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_close2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_exception_toast:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->g:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tv_exception_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_question:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->l:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_question_title_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_question_title_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/b1/p;->b(Landroid/widget/TextView;II)V

    .line 1
    iget-object v1, p2, Lcom/tencent/tme/live/w0/i;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->iv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b(Landroid/widget/ImageView;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/tencent/tme/live/biz/R$id;->iv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_right_question_single_option_line:I

    return v0
.end method

.method public setupOptionItemList(Lcom/tencent/tme/live/w0/k;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/w0/k;->a(I)Lcom/tencent/tme/live/w0/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/w0/k;->a(I)Lcom/tencent/tme/live/w0/i;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->u:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 1
    iget v0, v0, Lcom/tencent/tme/live/w0/i;->d:I

    iget p1, p1, Lcom/tencent/tme/live/w0/i;->d:I

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v2, Lcom/tencent/tme/live/question/ui/a;

    invoke-direct {v2, v1, v0, p1}, Lcom/tencent/tme/live/question/ui/a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionVoteBar;II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
