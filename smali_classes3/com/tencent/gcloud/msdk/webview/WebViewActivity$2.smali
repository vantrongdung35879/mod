.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 245
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getHitTestResult()Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 250
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get image url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    const-string p1, "Image url is null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
