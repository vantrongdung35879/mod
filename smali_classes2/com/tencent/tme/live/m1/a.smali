.class public Lcom/tencent/tme/live/m1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/n1/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/tencent/tme/live/n1/c;

.field public c:Lcom/tencent/tme/live/n1/a;

.field public d:Lcom/tencent/tme/live/o1/b;

.field public e:Landroid/widget/FrameLayout;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public final i:Lcom/tencent/tme/live/o1/d;

.field public final j:Lcom/tencent/tme/live/o1/c;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m1/a;->f:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/m1/a;->g:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/tme/live/m1/a;->h:Ljava/lang/String;

    new-instance v1, Lcom/tencent/tme/live/m1/a$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/m1/a$a;-><init>(Lcom/tencent/tme/live/m1/a;)V

    iput-object v1, p0, Lcom/tencent/tme/live/m1/a;->i:Lcom/tencent/tme/live/o1/d;

    new-instance v1, Lcom/tencent/tme/live/m1/a$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/m1/a$b;-><init>(Lcom/tencent/tme/live/m1/a;)V

    iput-object v1, p0, Lcom/tencent/tme/live/m1/a;->j:Lcom/tencent/tme/live/o1/c;

    iput-boolean v0, p0, Lcom/tencent/tme/live/m1/a;->k:Z

    iput-object p1, p0, Lcom/tencent/tme/live/m1/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/m1/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->c()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->d()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->e()V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/m1/a;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "question_vote"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/m1/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/m1/a;->f:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->b()V

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/m;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    .line 2
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->o:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d()V

    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b()V

    .line 4
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d()V

    .line 5
    :cond_4
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->p:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->g:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_6
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    if-eqz v2, :cond_7

    .line 7
    iget-object v4, v2, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, v2, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_7
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v2, ""

    iput-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    iget-object v2, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_a

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 11
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 12
    iput-object v2, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    .line 13
    :cond_b
    iput-object v2, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    iput-boolean v1, p0, Lcom/tencent/tme/live/m1/a;->f:Z

    iput-boolean v1, p0, Lcom/tencent/tme/live/m1/a;->g:Z

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Lcom/tencent/tme/live/w0/k;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/tme/live/m1/a;->e:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p2}, Lcom/tencent/tme/live/w0/k;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupTimerProgress(Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupTitles(Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->setupOptionItemList(Lcom/tencent/tme/live/w0/k;)V

    .line 48
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v2, Lcom/tencent/tme/live/p1/a;

    invoke-direct {v2, v0}, Lcom/tencent/tme/live/p1/a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-boolean v1, p0, Lcom/tencent/tme/live/m1/a;->k:Z

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->c:Lcom/tencent/tme/live/n1/a;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/n1/c;->setOptionHelper(Lcom/tencent/tme/live/n1/a;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupTimerProgress(Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupTitles(Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupOptionItemList(Lcom/tencent/tme/live/w0/k;)V

    .line 52
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v2, Lcom/tencent/tme/live/p1/a;

    invoke-direct {v2, v0}, Lcom/tencent/tme/live/p1/a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-boolean v1, p0, Lcom/tencent/tme/live/m1/a;->k:Z

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->c:Lcom/tencent/tme/live/n1/a;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/n1/c;->setOptionHelper(Lcom/tencent/tme/live/n1/a;)V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    iget-object p1, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast p1, Lcom/tencent/tme/live/o1/m;

    .line 56
    iput-object p2, p1, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/o1/m;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->e()V

    .line 58
    iget-object p1, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-nez p1, :cond_4

    new-instance p1, Lcom/tencent/tme/live/o1/m;

    invoke-direct {p1}, Lcom/tencent/tme/live/o1/m;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    :cond_4
    iget-object p1, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    iget-object p2, p0, Lcom/tencent/tme/live/m1/a;->j:Lcom/tencent/tme/live/o1/c;

    check-cast p1, Lcom/tencent/tme/live/o1/m;

    .line 59
    iput-object p2, p1, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    .line 60
    iget-object p1, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->c()V

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/tencent/tme/live/w0/k;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 14
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 15
    iget-object v0, v0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 18
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/w0/k;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 20
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget v0, v0, Lcom/tencent/tme/live/w0/k;->d:I

    .line 22
    :goto_1
    iput v0, p1, Lcom/tencent/tme/live/w0/k;->d:I

    .line 23
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/m1/a;->a(Landroid/widget/FrameLayout;Lcom/tencent/tme/live/w0/k;)V

    goto/16 :goto_3

    .line 24
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 25
    iput-object p1, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    .line 26
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    .line 27
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupTitles(Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->setupOptionItemList(Lcom/tencent/tme/live/w0/k;)V

    goto :goto_3

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 29
    const-string v1, "question_vote"

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/m1/a;->a(Landroid/widget/FrameLayout;Lcom/tencent/tme/live/w0/k;)V

    .line 31
    iget-object v0, p1, Lcom/tencent/tme/live/w0/k;->h:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 34
    new-instance v3, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v3, v2}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 35
    new-instance v2, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 36
    iput-object v0, v2, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 37
    iput-object p1, v2, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 38
    new-instance v4, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v4, v2}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 39
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 40
    new-instance v5, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v5, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 41
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 42
    new-instance v6, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v6, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 43
    const-string v2, "InstantGuessShow_aov"

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    goto :goto_3

    .line 44
    :cond_5
    const-string p1, "QuestionManagerImpl"

    const-string v0, "already showed before"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/n;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 3
    iput-object v1, v0, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/m1/a$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/m1/a$c;-><init>(Lcom/tencent/tme/live/m1/a;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m1/a;->c:Lcom/tencent/tme/live/n1/a;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/o1/m;

    invoke-direct {v0}, Lcom/tencent/tme/live/o1/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->j:Lcom/tencent/tme/live/o1/c;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/o1/m;

    invoke-direct {v0}, Lcom/tencent/tme/live/o1/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    iget-object v1, p0, Lcom/tencent/tme/live/m1/a;->i:Lcom/tencent/tme/live/o1/d;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/n;->a()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/live/m1/a;->b()V

    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/m;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->l:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d()V

    :cond_2
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    if-eqz v0, :cond_3

    .line 2
    sget v2, Lcom/tencent/tme/live/biz/R$id;->container_result_suc:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/tencent/tme/live/biz/R$id;->container_result_finish:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->d:Landroid/view/View;

    new-instance v2, Lcom/tencent/tme/live/p1/b;

    invoke-direct {v2, v0}, Lcom/tencent/tme/live/p1/b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tv_result_finish_title:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_3
    return-void
.end method
