.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendGetPhoneNumberRequest(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

.field final synthetic val$carrier:I

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$urlStr:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$carrier:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1824
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 1826
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$urlStr:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/Http;->doGet(Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1828
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    const-string v0, "Response empty!"

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$carrier:I

    const/4 v2, -0x2

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;I)V

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1832
    const-string v0, "Need to redirect"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Resend request to redirect url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1835
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$carrier:I

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;->val$carrier:I

    invoke-static {v0, v1, p1, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method
