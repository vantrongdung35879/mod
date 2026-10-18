.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;
.super Landroid/os/Handler;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    .line 1298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1303
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage, msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_0

    .line 1307
    const-string p1, "mWebView is null, please check!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 1311
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1312
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "jsonData"

    const-string v4, ""

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 1348
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1349
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    .line 1351
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1352
    const-string p1, "sendGetPhoneNumberRequest"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1353
    const-string p1, "open_url"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1354
    const-string v1, "port"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1355
    const-string v2, "carrier"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1356
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v2, p1, v1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendGetPhoneNumberRequest failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 1359
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1, v4, v5, v5}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$3000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 1403
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$5;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1390
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$4;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$4;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1376
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1379
    const-string v0, "screenOrientation"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1382
    :cond_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;

    invoke-direct {v0, p0, v5}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;I)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v0, :cond_3

    .line 1371
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1372
    :cond_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v4}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$2900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    if-eqz v0, :cond_4

    .line 1364
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1365
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string/jumbo v0, "url"

    invoke-static {v4, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1368
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1322
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1323
    const-string v0, "isFullScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 1324
    :goto_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$2;

    invoke-direct {v0, p0, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$2;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;Z)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1334
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1335
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v0, 0x0

    .line 1339
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1340
    :try_start_2
    const-string v0, "isToastShow"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1341
    const-string v0, "from_key"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1343
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1345
    :goto_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-static {v0, p1, v4}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$2900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;)V

    goto :goto_4

    .line 1314
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
