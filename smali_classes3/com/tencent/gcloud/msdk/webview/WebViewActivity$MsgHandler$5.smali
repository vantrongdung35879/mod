.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    const-string v0, "Webview do go forward"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    goto :goto_0

    .line 1410
    :cond_0
    const-string v0, "Webview can\'t go forward"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
