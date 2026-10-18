.class public Lcom/tencent/tme/live/p1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/p1/a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tme/live/p1/a;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object p1, p1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/tencent/tme/live/m1/a$c;

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    .line 3
    check-cast v1, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v1}, Lcom/tencent/tme/live/o1/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/m1/a;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/m1/a;->a()V

    :cond_0
    return-void
.end method
