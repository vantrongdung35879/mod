.class public Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;
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

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->l:Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$e;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/m1/a$c;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 5
    iget-boolean v1, v0, Lcom/tencent/tme/live/m1/a;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tme/live/m1/a;->g:Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tme/live/m1/a;->g:Z

    .line 6
    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->f()V

    :cond_1
    return-void
.end method
