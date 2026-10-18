.class Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;
.super Landroid/app/Dialog;
.source "ToolBarWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->showWithDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

.field final synthetic val$isFullscreen:Z


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Landroid/content/Context;IZ)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    iput-boolean p4, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->val$isFullscreen:Z

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 141
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$100(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->val$isFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setFullscreen(Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
