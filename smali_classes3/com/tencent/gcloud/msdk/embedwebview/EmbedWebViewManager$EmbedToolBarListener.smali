.class Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmbedToolBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    .line 314
    const-string v0, "event from embed tool bar, onClose"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    const/16 v1, 0x64

    .line 316
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    const/4 v1, 0x0

    .line 317
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    .line 318
    const-string v1, "close webview"

    iput-object v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    const/16 v1, 0x19b

    .line 319
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 320
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$600(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)I

    move-result v1

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$002(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    .line 322
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$402(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;)Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    .line 323
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$500(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$500(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$502(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 327
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$302(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onJsPrompt(Ljava/lang/String;)Z
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event from embed tool bar, onJsPrompt:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$400(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$400(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->processJsMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onProgress(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    const-string p1, "event from embed tool bar, but tool bar WebView is closed!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event from embed tool bar, onProgress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    const/16 v1, 0x6f

    .line 339
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    int-to-float p1, p1

    .line 340
    iput p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->embedProgress:F

    .line 341
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->embedUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 342
    iput p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    .line 343
    const-string/jumbo p1, "webview progress"

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    const/16 p1, 0x1a0

    .line 344
    iput p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 345
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$600(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)I

    move-result p1

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onShare(Ljava/lang/String;)V
    .locals 9

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event from embed tool bar, onShare:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    const-string p1, "event from embed tool bar, share failed"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "Facebook"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "QQ"

    const-string v6, "WeChat"

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "Qzone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "Moment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x67

    const/16 v8, 0x66

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 367
    :pswitch_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->shareToBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_1
    move-object p1, v1

    goto :goto_1

    :pswitch_2
    move-object p1, v5

    :goto_1
    const/16 v4, 0x66

    goto :goto_3

    :pswitch_3
    move-object p1, v5

    :goto_2
    const/16 v4, 0x67

    goto :goto_3

    :pswitch_4
    move-object p1, v6

    goto :goto_2

    :pswitch_5
    move-object p1, v6

    goto :goto_1

    :goto_3
    if-eqz v4, :cond_9

    .line 391
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    .line 395
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 397
    :try_start_0
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string/jumbo p1, "title"

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 400
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 401
    const-string p1, "not allow to share illegal URL begins with \"file://\""

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_8
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string/jumbo p1, "type"

    const/16 v1, 0x2711

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string/jumbo p1, "thumbPath"

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string p1, "isToastShow"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 408
    const-string p1, "from_key"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$700(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void

    .line 392
    :cond_9
    :goto_5
    const-string p1, "handleShareEvent data error"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x764b91e0 -> :sswitch_5
        -0x65db149a -> :sswitch_4
        0xa20 -> :sswitch_3
        0x4ae937d -> :sswitch_2
        0x217bfee6 -> :sswitch_1
        0x6c37c308 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
