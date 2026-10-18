.class Lcom/tencent/gcloud/msdk/view/ToolBarAmin$7;
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
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$7;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 221
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$7;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
