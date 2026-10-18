.class Lcom/centauri/oversea/business/h5/webview/MWebView$5;
.super Landroid/webkit/WebViewClient;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 286
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageCommitVisible url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MWebView"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$300(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$300(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string p2, "sdk.webview.onfinish"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$500(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStarted url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError description: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$300(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string p2, "sdk.webview.err"

    const-string p4, ""

    invoke-virtual {p1, p2, p4}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$500(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$900(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$900(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;->onRequestError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .line 358
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedSslError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cert="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageUrl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 373
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$900(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$900(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    move-result-object p1

    const-string p2, "request error,https ssl error."

    invoke-interface {p1, p2}, Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;->onRequestError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldInterceptRequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$700(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    invoke-interface {v0}, Lcom/centauri/oversea/business/h5/webview/IIntercept;->level()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/centauri/oversea/business/h5/webview/IIntercept;->queryCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 397
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldOverrideUrlLoading url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$700(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    invoke-interface {v0}, Lcom/centauri/oversea/business/h5/webview/IIntercept;->level()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/business/h5/webview/IIntercept;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 335
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
