.class public Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->h:Landroid/view/View;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->i:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v1, v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v2, v2, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v3, v3, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v4, v4, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v5, v5, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-double v8, v2, v6

    if-gez v8, :cond_3

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v0, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    :goto_0
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
