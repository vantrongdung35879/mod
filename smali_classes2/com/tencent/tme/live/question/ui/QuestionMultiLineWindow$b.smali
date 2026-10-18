.class public Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;
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

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow$b;->a:Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->b:Lcom/tencent/tme/live/n1/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
