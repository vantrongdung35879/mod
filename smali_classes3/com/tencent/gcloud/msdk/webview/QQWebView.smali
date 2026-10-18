.class public Lcom/tencent/gcloud/msdk/webview/QQWebView;
.super Ljava/lang/Object;
.source "QQWebView.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/webview/WebViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callJS(Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView jsonJsPara = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 62
    const-string v0, "isEmbedWebView"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->callJS(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->callJS(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 77
    const-string v0, "WebView close"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->close()V

    return-void
.end method

.method public onShareCallback(Ljava/lang/String;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView Share callback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onShareCallback(Ljava/lang/String;)V

    return-void
.end method

.method public openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] WebView openUrl with url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->screenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isBrowser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isX5Close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isX5Close:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isFullScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUseURLEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isUseURLEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " extraJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "{}"

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 45
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, "MSDK_KEY_OBSERVER_ID"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v1, "MSDK_KEY_SEQ_ID"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 52
    :goto_0
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string v1, "isEmbedWebView"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;Ljava/lang/String;I)V

    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)V

    return-void
.end method

.method public setPosition(IIII)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPosition invoked with parameters x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->setPosition(IIII)V

    return-void
.end method
