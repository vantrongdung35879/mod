.class Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 177
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 178
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
