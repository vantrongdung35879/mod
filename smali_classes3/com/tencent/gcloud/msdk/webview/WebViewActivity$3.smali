.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 548
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->cancel()V

    .line 549
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    .line 550
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    .line 551
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 556
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    .line 557
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 543
    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewCommonUtil;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
