.class Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

.field final synthetic val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string/jumbo v1, "withDialog"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "open with dialog"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isBackpressEnable(Ljava/lang/String;)Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isFullscreenEnable(Ljava/lang/String;)Z

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-boolean v2, v2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isFullScreen:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->showWithDialog(ZZ)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "open in activity"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->showWithActivity(Landroid/app/Activity;)V

    .line 168
    :goto_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string v2, "bgColor"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setWebViewBackgroundColor(I)V

    .line 172
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;->val$wbInfo:Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
