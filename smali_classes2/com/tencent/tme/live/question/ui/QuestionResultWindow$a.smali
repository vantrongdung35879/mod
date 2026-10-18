.class public Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/question/ui/QuestionResultWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionResultWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow$a;->a:Lcom/tencent/tme/live/question/ui/QuestionResultWindow;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionResultWindow;->a:Lcom/tencent/tme/live/n1/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/tme/live/m1/a$c;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/m1/a$c;->a:Lcom/tencent/tme/live/m1/a;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->a()V

    :cond_0
    return-void
.end method
