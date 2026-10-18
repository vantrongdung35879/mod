.class public Lcom/tencent/tme/live/o1/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/tencent/tme/live/o1/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/h;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/g;->c:Lcom/tencent/tme/live/o1/h;

    iput-object p2, p0, Lcom/tencent/tme/live/o1/g;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/tme/live/o1/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/tencent/tme/live/o1/g;->c:Lcom/tencent/tme/live/o1/h;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/h;->b:Lcom/tencent/tme/live/o1/m;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "selectOption, callback is null"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/o1/g;->a:Ljava/lang/Integer;

    const-wide/16 v1, 0xbb8

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/o1/g;->c:Lcom/tencent/tme/live/o1/h;

    iget-object v5, v0, Lcom/tencent/tme/live/o1/h;->b:Lcom/tencent/tme/live/o1/m;

    .line 3
    iget-object v5, v5, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/o1/h;->a:Lcom/tencent/tme/live/w0/i;

    check-cast v5, Lcom/tencent/tme/live/m1/a$b;

    .line 5
    iget-object v6, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 6
    iget-object v7, v0, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 7
    invoke-static {v6, v7}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/m1/a;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 8
    iget-boolean v6, v5, Lcom/tencent/tme/live/m1/a;->g:Z

    iput-boolean v4, v5, Lcom/tencent/tme/live/m1/a;->f:Z

    iput-boolean v4, v5, Lcom/tencent/tme/live/m1/a;->g:Z

    .line 9
    invoke-virtual {v5}, Lcom/tencent/tme/live/m1/a;->b()V

    iget-object v6, v5, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-eqz v6, :cond_2

    check-cast v6, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v6, v4}, Lcom/tencent/tme/live/o1/m;->a(Z)V

    :cond_2
    iget-object v6, v5, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v5, Lcom/tencent/tme/live/o1/m;

    .line 10
    iget-object v5, v5, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    .line 11
    :cond_3
    iget v5, v5, Lcom/tencent/tme/live/w0/k;->g:I

    .line 12
    :goto_0
    check-cast v6, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    .line 13
    iget-object v7, v6, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->l:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v7, :cond_4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v7, v6, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d()V

    :cond_5
    iget-object v6, v6, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->k:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    if-eqz v6, :cond_6

    .line 14
    sget v7, Lcom/tencent/tme/live/biz/R$id;->container_result_suc:I

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v9, Lcom/tencent/tme/live/biz/R$id;->container_result_finish:I

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v7, v6, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->d:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v6, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, v6, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tv_result_suc_subtitle:I

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne v5, v2, :cond_6

    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_question_result_free:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    :cond_6
    iget-object v1, v0, Lcom/tencent/tme/live/w0/i;->b:Ljava/lang/String;

    .line 16
    iget-object v2, v0, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 17
    iget v0, v0, Lcom/tencent/tme/live/w0/i;->e:I

    .line 18
    invoke-static {v1, v2, v0, v4, v3}, Lcom/tencent/tme/live/y0/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 19
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/o1/g;->b:Ljava/lang/Object;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    :goto_2
    const-string v0, "null"

    :goto_3
    iget-object v5, p0, Lcom/tencent/tme/live/o1/g;->c:Lcom/tencent/tme/live/o1/h;

    iget-object v5, v5, Lcom/tencent/tme/live/o1/h;->b:Lcom/tencent/tme/live/o1/m;

    .line 20
    iget-object v5, v5, Lcom/tencent/tme/live/o1/m;->c:Lcom/tencent/tme/live/o1/c;

    .line 21
    iget-object v6, p0, Lcom/tencent/tme/live/o1/g;->a:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/tme/live/o1/g;->c:Lcom/tencent/tme/live/o1/h;

    iget-object v7, v7, Lcom/tencent/tme/live/o1/h;->a:Lcom/tencent/tme/live/w0/i;

    check-cast v5, Lcom/tencent/tme/live/m1/a$b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "errCode:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", errMsg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23
    const-string v9, "QuestionManagerImpl"

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iget-object v8, v7, Lcom/tencent/tme/live/w0/i;->b:Ljava/lang/String;

    .line 25
    iget-object v9, v7, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 26
    iget v10, v7, Lcom/tencent/tme/live/w0/i;->e:I

    .line 27
    invoke-static {v8, v9, v10, v6, v0}, Lcom/tencent/tme/live/y0/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    iget-object v0, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 28
    iget-object v1, v7, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/m1/a;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 30
    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->f()V

    goto :goto_5

    :cond_a
    const/4 v0, 0x6

    if-ne v6, v0, :cond_b

    .line 31
    iget-object v0, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 32
    iget-object v6, v7, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 33
    invoke-static {v0, v6}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/m1/a;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 34
    iget-boolean v6, v0, Lcom/tencent/tme/live/m1/a;->g:Z

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->f()V

    :cond_c
    iput-boolean v4, v0, Lcom/tencent/tme/live/m1/a;->f:Z

    iput-boolean v4, v0, Lcom/tencent/tme/live/m1/a;->g:Z

    .line 35
    iget-object v0, v5, Lcom/tencent/tme/live/m1/a$b;->a:Lcom/tencent/tme/live/m1/a;

    .line 36
    iget-object v5, v0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v5, :cond_10

    iget-object v0, v0, Lcom/tencent/tme/live/m1/a;->a:Landroid/content/Context;

    sget v6, Lcom/tencent/tme/live/biz/R$string;->tme_question_network_browken:I

    .line 37
    instance-of v7, v0, Landroid/app/Activity;

    if-nez v7, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_4
    check-cast v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    .line 39
    iget-object v0, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->g:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->p:Ljava/lang/Runnable;

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :cond_e
    invoke-virtual {v5}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d()V

    iget-object v0, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    invoke-virtual {v5}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b()V

    :cond_10
    :goto_5
    return-void
.end method
