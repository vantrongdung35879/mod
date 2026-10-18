.class public Lcom/tencent/tme/live/p1/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/p1/b;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/p1/b;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->c:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/p1/b;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/p1/b;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a:Lcom/tencent/tme/live/n1/a;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/tencent/tme/live/m1/a$c;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/tme/live/m1/a;->a()V

    :cond_0
    return-void
.end method
