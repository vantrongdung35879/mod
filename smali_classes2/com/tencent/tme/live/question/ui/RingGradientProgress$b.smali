.class public Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/question/ui/RingGradientProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->l:Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    .line 3
    check-cast v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v1, v1, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/tencent/tme/live/m1/a$c;

    .line 5
    iget-object v1, v1, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 6
    iget-object v1, v1, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    .line 7
    check-cast v1, Lcom/tencent/tme/live/o1/m;

    .line 8
    iget-object v1, v1, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-eqz v1, :cond_0

    .line 9
    iput v2, v1, Lcom/tencent/tme/live/w0/k;->d:I

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 11
    invoke-static {v0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
