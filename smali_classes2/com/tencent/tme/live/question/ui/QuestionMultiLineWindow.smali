.class public Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/tme/live/n1/c;


# instance fields
.field public a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

.field public b:Lcom/tencent/tme/live/n1/a;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

.field public l:Landroid/view/View;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/question/ui/QuestionVoteBar;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public final q:Ljava/lang/Runnable;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->o:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->p:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$c;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->o:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->p:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$c;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->container_bt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->n:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->option0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->option1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->option2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->option3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->option4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_close:I

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

    .line 7
    iget-object v1, p2, Lcom/tencent/tme/live/w0/i;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$d;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->getApngAnimUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/c/c$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/tme/live/c/c$a;-><init>(IZZ)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/tencent/tme/live/c/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/tencent/tme/live/c/c$a;)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/w0/i;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/m1/a$c;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/m1/a;Z)Z

    iget-object v0, v0, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    .line 3
    check-cast v0, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget v1, p1, Lcom/tencent/tme/live/w0/i;->e:I

    .line 5
    iget-object v2, p1, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 6
    new-instance v3, Lcom/tencent/tme/live/o1/h;

    invoke-direct {v3, v0, p1}, Lcom/tencent/tme/live/o1/h;-><init>(Lcom/tencent/tme/live/o1/m;Lcom/tencent/tme/live/w0/i;)V

    invoke-static {v1, v2, v3}, Lcom/tencent/tme/live/o1/a;->a(ILjava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$drawable;->question_dialog_background_zoomin:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->c:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$drawable;->question_dialog_background:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->container_bt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/tme/live/c/a;->a(Landroid/view/View;)Lcom/tencent/tme/live/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v1, v0, Lcom/tencent/tme/live/c/a;->i:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/live/c/a;->stop()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->getLayoutResId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->iv_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getApngAnimUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_option_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_right_question_muti_option_line:I

    return v0
.end method

.method public setOptionHelper(Lcom/tencent/tme/live/n1/a;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->setOptionHelper(Lcom/tencent/tme/live/n1/a;)V

    :cond_0
    return-void
.end method

.method public setupOptionItemList(Lcom/tencent/tme/live/w0/k;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/w0/k;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-lt v2, v0, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/w0/k;->a(I)Lcom/tencent/tme/live/w0/i;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V

    sget v5, Lcom/tencent/tme/live/biz/R$id;->vs_bar:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    if-nez v3, :cond_3

    goto :goto_4

    .line 1
    :cond_3
    iget-object v5, p1, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tme/live/w0/i;

    .line 2
    iget v7, v7, Lcom/tencent/tme/live/w0/i;->d:I

    add-int/2addr v6, v7

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 3
    :cond_6
    new-instance v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-direct {v5}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;-><init>()V

    .line 4
    iget-boolean v7, v4, Lcom/tencent/tme/live/w0/i;->f:Z

    if-eqz v7, :cond_7

    .line 5
    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_yellow:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    sget v7, Lcom/tencent/tme/live/biz/R$color;->tme_question_left_yellow:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_people_brown:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    sget v7, Lcom/tencent/tme/live/biz/R$color;->tme_question_brown:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_mid_bar_yellow:I

    goto :goto_3

    :cond_7
    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_blue_left:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    sget v7, Lcom/tencent/tme/live/biz/R$color;->tme_question_right_blue:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_people_white:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    sget v7, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    sget v7, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_mid_bar_blue:I

    :goto_3
    iput v7, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->a:I

    .line 6
    iput-object v5, v3, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    .line 7
    iget v4, v4, Lcom/tencent/tme/live/w0/i;->d:I

    sub-int/2addr v6, v4

    .line 8
    new-instance v5, Lcom/tencent/tme/live/question/ui/a;

    invoke-direct {v5, v3, v4, v6}, Lcom/tencent/tme/live/question/ui/a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionVoteBar;II)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v4, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public setupTimerProgress(Lcom/tencent/tme/live/w0/k;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    new-instance v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->setITimerStateCallback(Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 1
    iget v1, p1, Lcom/tencent/tme/live/w0/k;->d:I

    .line 2
    iget p1, p1, Lcom/tencent/tme/live/w0/k;->e:I

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a(II)V

    return-void
.end method

.method public setupTitles(Lcom/tencent/tme/live/w0/k;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/w0/k;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_question_subtitle_prefix_suc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p1, Lcom/tencent/tme/live/w0/k;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_question_subtitle_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_question_subtitle_suffix:I

    .line 6
    instance-of v4, v1, Landroid/app/Activity;

    if-nez v4, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget p1, p1, Lcom/tencent/tme/live/w0/k;->f:I

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "<img src=\'"

    const-string v3, "&#160;"

    invoke-static {v0, v3, v1}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_coin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 11
    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$dimen;->tme_question_subtitle_txt_size:I

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/tencent/tme/live/b1/o;

    invoke-direct {v4, v3, v1}, Lcom/tencent/tme/live/b1/o;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v4, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->o:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method
