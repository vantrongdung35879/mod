.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .line 1565
    const-string v0, "onHideCustomView"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1568
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1569
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3702(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;

    .line 1572
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3800(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1573
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    .line 1576
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1577
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4002(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 0

    .line 1432
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 4

    .line 1446
    const-string v0, "sendGetPhoneNumberRequest"

    .line 0
    const-string v1, "MsdkMethod:"

    .line 1446
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->cancel()V

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onJsPrompt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1448
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->getInstance()Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->canResolved(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1451
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1452
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p4}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1453
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p4}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1454
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1455
    :cond_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "isAppInstalled"

    iget-object p4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p4}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1456
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1, p3}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1458
    :cond_1
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, ""

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1459
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1460
    const-string p2, "open_url"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1461
    const-string p3, "port"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    .line 1462
    const-string v1, "carrier"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1463
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, p2, p3, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1464
    :cond_2
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "accountTicket"

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1465
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x6f

    invoke-static {p2, p3, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$2900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_3
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->getInstance()Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->parseMessage(Ljava/lang/String;)V

    :goto_0
    move-object p1, p4

    .line 1469
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1470
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    goto :goto_2

    .line 1472
    :cond_4
    invoke-interface {p5, p1}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1476
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "parse jsonMessage error : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    .line 1480
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0

    .line 1437
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    .line 1439
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    .line 1440
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1426
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 1427
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3102(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1528
    const-string v0, "onShowCustomView"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->onHideCustomView()V

    return-void

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3702(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;

    .line 1536
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3802(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)I

    .line 1537
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3902(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)I

    const/high16 v0, -0x1000000

    .line 1540
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1543
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4002(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    .line 1546
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1547
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1559
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1488
    const-string p1, "onShowFileChooser"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1489
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1490
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1492
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3502(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 1493
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 1497
    :try_start_0
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    .line 1498
    invoke-virtual {p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1497
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1500
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return p2
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openFileChooser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1509
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1510
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1512
    :cond_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p2, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3602(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 1513
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1514
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    :try_start_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    .line 1518
    invoke-virtual {p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1517
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1520
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
