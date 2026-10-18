.class public Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/tencent/tme/live/w0/i;

.field public final synthetic c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;Landroid/view/View;Lcom/tencent/tme/live/w0/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    iput-object p2, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->b:Lcom/tencent/tme/live/w0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p1, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;->t:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    .line 3
    iget-object v0, p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->c:Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow;

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionSingleLineWindow$a;->b:Lcom/tencent/tme/live/w0/i;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Lcom/tencent/tme/live/w0/i;)V

    return-void
.end method
