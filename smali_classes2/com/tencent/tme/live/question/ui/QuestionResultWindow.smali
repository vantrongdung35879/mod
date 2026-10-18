.class public Lcom/tencent/tme/live/question/ui/QuestionResultWindow;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Lcom/tencent/tme/live/n1/a;

.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/lang/Runnable;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$b;-><init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_question_result:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->d:Landroid/view/View;

    return-void
.end method

.method public setOptionHelper(Lcom/tencent/tme/live/n1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a:Lcom/tencent/tme/live/n1/a;

    return-void
.end method
