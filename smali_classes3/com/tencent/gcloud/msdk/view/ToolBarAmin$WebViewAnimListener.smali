.class Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarAmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAnimListener"
.end annotation


# static fields
.field private static final STATE_HIDE:I = 0x2

.field private static final STATE_SHOW:I = 0x1


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;I)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->state:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 304
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    iget p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 308
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p1

    const/4 v2, 0x2

    if-eq v2, p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 313
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 291
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    iget p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 295
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
