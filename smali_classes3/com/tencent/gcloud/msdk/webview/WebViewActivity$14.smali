.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->callJs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

.field final synthetic val$parasJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;->val$parasJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msdkCall(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;->val$parasJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14$1;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method
