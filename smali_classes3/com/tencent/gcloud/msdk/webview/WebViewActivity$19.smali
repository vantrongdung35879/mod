.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getPhoneNumberRequestResultCallbackToH5(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

.field final synthetic val$resultCarrier:I

.field final synthetic val$resultData:Ljava/lang/String;

.field final synthetic val$resultFlag:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;IILjava/lang/String;)V
    .locals 0

    .line 1890
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iput p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultFlag:I

    iput p3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultCarrier:I

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "resultStr:"

    .line 1893
    const-string v1, ""

    .line 1894
    const-string v2, "sendGetPhoneNumberRequestResult"

    .line 1896
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1898
    :try_start_0
    const-string v4, "MsdkMethod"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1899
    const-string v2, "flag"

    iget v4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultFlag:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1900
    const-string v2, "carrier"

    iget v4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultCarrier:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1901
    iget v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultFlag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "data"

    if-nez v2, :cond_0

    .line 1902
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultData:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1905
    :cond_0
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->val$resultData:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1907
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1910
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1912
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Result back to H5:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1914
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "javascript:msdkNativeCallback(\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1915
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1916
    const-string v0, "Result back to H5 done"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
