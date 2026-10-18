.class Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;
.super Landroid/webkit/WebChromeClient;
.source "MSDKWebLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->initWebView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4

    .line 309
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$000(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$000(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    .line 316
    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->valueOfString(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    move-result-object v1

    const-string v3, "msg"

    .line 317
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-interface {v2, v1, v0}, Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;->onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsPrompt, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 326
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
