.class Lcom/tencent/gcloud/msdk/view/ShareView$3$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ShareView$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ShareView$3;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$000(Lcom/tencent/gcloud/msdk/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$000(Lcom/tencent/gcloud/msdk/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$000(Lcom/tencent/gcloud/msdk/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$100(Lcom/tencent/gcloud/msdk/view/ShareView;)Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->val$itemPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 179
    const-string v0, "share call back"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$200(Lcom/tencent/gcloud/msdk/view/ShareView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->val$itemPosition:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$200(Lcom/tencent/gcloud/msdk/view/ShareView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$200(Lcom/tencent/gcloud/msdk/view/ShareView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget v1, v1, Lcom/tencent/gcloud/msdk/view/ShareView$3;->val$itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "share call back\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$100(Lcom/tencent/gcloud/msdk/view/ShareView;)Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;->onShare(Ljava/lang/String;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView$3$1;->this$1:Lcom/tencent/gcloud/msdk/view/ShareView$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ShareView$3;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/view/ShareView;->access$302(Lcom/tencent/gcloud/msdk/view/ShareView;Z)Z

    return-void
.end method
