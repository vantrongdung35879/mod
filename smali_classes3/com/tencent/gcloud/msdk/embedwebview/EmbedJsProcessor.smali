.class public Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;
.super Ljava/lang/Object;
.source "EmbedJsProcessor.java"


# static fields
.field private static final JS_CALLBACK:Ljava/lang/String; = "Callback"

.field private static final JS_FUNCNAME:Ljava/lang/String; = "msdkCall"

.field private static final JS_METHOD_WEBVIEW_CLOSE:Ljava/lang/String; = "closeWebView"

.field private static final JS_METHOD_WEBVIEW_GETNETWORKTYPE:Ljava/lang/String; = "getNetworkType"

.field private static final JS_METHOD_WEBVIEW_GOBACK:Ljava/lang/String; = "goBack"

.field private static final JS_METHOD_WEBVIEW_GOFORWARD:Ljava/lang/String; = "goForward"

.field private static final JS_METHOD_WEBVIEW_MSDK_BROWSER:Ljava/lang/String; = "OpenUrlInMSDKBrowser"

.field private static final JS_METHOD_WEBVIEW_MSDK_NAME_AUTH:Ljava/lang/String; = "OnWebRealNameAuthNotify"

.field private static final JS_METHOD_WEBVIEW_NATIVE:Ljava/lang/String; = "jsCallNative"

.field private static final JS_METHOD_WEBVIEW_SCREEN:Ljava/lang/String; = "setFullScreen"

.field private static final JS_METHOD_WEBVIEW_SCREEN_ORIENTATION:Ljava/lang/String; = "setScreenOrientation"

.field private static final JS_METHOD_WEBVIEW_SEND:Ljava/lang/String; = "sendMsgWebView"

.field private static final JS_METHOD_WEBVIEW_SETPOSITION:Ljava/lang/String; = "setPosition"

.field private static final JS_METHOD_WEBVIEW_SHARE:Ljava/lang/String; = "shareWebView"

.field private static final JS_PARAMKEY:Ljava/lang/String; = "ParamKey"

.field private static final JS_PARAM_WEBVIEW_HEIGHT:Ljava/lang/String; = "height"

.field private static final JS_PARAM_WEBVIEW_WIDTH:Ljava/lang/String; = "width"

.field private static final JS_PARAM_WEBVIEW_X:Ljava/lang/String; = "x"

.field private static final JS_PARAM_WEBVIEW_Y:Ljava/lang/String; = "y"

.field private static final MAX_JS_MSG_SIZE:I = 0x300000

.field protected static final MSG_JS_OPT_EMBED_WEBVIEW_PROGRESS:I = 0x6f

.field protected static final MSG_JS_OPT_WEBVIEW_BROWSER:I = 0x69

.field protected static final MSG_JS_OPT_WEBVIEW_CLOSE:I = 0x64

.field protected static final MSG_JS_OPT_WEBVIEW_FULLSCREEN:I = 0x68

.field protected static final MSG_JS_OPT_WEBVIEW_GETNETWORKTYPE:I = 0x6e

.field protected static final MSG_JS_OPT_WEBVIEW_GOBACK:I = 0x6c

.field protected static final MSG_JS_OPT_WEBVIEW_GOFORWARD:I = 0x6d

.field protected static final MSG_JS_OPT_WEBVIEW_NATIVE:I = 0x65

.field protected static final MSG_JS_OPT_WEBVIEW_REAL_NAME_NOTIFY:I = 0x6a

.field protected static final MSG_JS_OPT_WEBVIEW_SCREEN_ORIENTATION:I = 0x6b

.field protected static final MSG_JS_OPT_WEBVIEW_SEND:I = 0x67

.field protected static final MSG_JS_OPT_WEBVIEW_SHARE:I = 0x66

.field private static final TAG_JS_METHOD:Ljava/lang/String; = "ITOPMethod"

.field private static final TAG_JS_METHOD_MSDK:Ljava/lang/String; = "MsdkMethod"


# instance fields
.field private mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    return-void
.end method

.method private GetNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 267
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewNetwork;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 254
    const-string p1, "Close embed WebView from js"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 255
    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->close()V

    return-void
.end method

.method private getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 278
    const-string p1, "data is empty"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-object v1

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "imgData length is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/tencent/gcloud/msdk/tools/FileUtils;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/tools/FileUtils;-><init>()V

    .line 286
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->filePathForMSDK(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msdk_webview"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v0, v2}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const-string p1, "create sdcard file error"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-object v1

    .line 294
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 296
    const-string v0, "image/png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "thumb"

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_2
    const-string v0, "image/jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v6, ".jpg"

    if-eq v0, v5, :cond_3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file name:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 311
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    const-string v0, "base64,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_5

    add-int/lit8 v0, v0, 0x7

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 317
    :cond_5
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 319
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 321
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    .line 325
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_3
    return-object v1

    :goto_4
    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 330
    :cond_7
    :goto_5
    throw p1
.end method

.method private onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 216
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    new-instance v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor$1;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;Landroid/app/Activity;Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    :cond_0
    const-string p1, "MSDKPlatform.getActivity() return null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WebViewIPCActivity onJniResult:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 p1, 0x19e

    .line 229
    iput p1, p2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    const/16 p1, 0x191

    .line 230
    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processWebViewShare(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 163
    const-string v2, "imgData"

    .line 0
    const-string v3, "\""

    const-string v4, "processWebViewShare remove imgdata:"

    const-string v5, "processWebViewShare json:"

    const-string v6, "processWebViewShare imgLocalPath:"

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "processWebViewShare jsonParam:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 164
    const-string v7, "channel"

    invoke-static {v1, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    const-string v9, "isToastShow"

    invoke-static {v1, v9}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 166
    const-string v10, "from_key"

    invoke-static {v1, v10}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    .line 167
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const-string v13, "com.tencent.gcloud.msdk.friend.%sFriend"

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "packageName:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getInstance()Lcom/tencent/gcloud/msdk/tools/MSDKModules;

    move-result-object v13

    const-class v14, Lcom/tencent/gcloud/msdk/core/friend/IFriend;

    const-string v15, ""

    invoke-virtual {v13, v14, v11, v15, v12}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getChannelInstance(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/gcloud/msdk/core/friend/IFriend;

    if-nez v12, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no plugin ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") include!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>(I)V

    invoke-direct {v0, v9, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    invoke-direct {v0, v11}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 181
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, "\"imagePath\":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 198
    new-instance v2, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    invoke-direct {v2, v1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "fromType"

    invoke-virtual {v3, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v2, "shareType"

    move/from16 v4, p1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    new-instance v2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {v2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    .line 205
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->extraJson:Ljava/lang/String;

    const/16 v3, 0x19e

    .line 206
    iput v3, v2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    const/16 v3, 0x194

    .line 207
    invoke-static {v3, v2, v15}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse MSDKFriendReqInfo with json("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") error!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>(I)V

    invoke-direct {v0, v9, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .line 238
    const-string v0, "OnEnterForeground"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 245
    const-string v0, "OnEnterBackground"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processJsMessage(Ljava/lang/String;)Z
    .locals 5

    .line 84
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    const-string p1, "jsonMessage is empty"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v2, 0x300000

    if-le v0, v2, :cond_1

    .line 89
    const-string p1, "js content size should < 3M"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return v1

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "jsonMessage = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 93
    const-string v0, "ITOPMethod"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v0, "MsdkMethod"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_2
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 100
    :cond_3
    const-string v1, "ParamKey"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "Callback"

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "closeWebView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->closeWebview(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    const-string v3, "shareWebView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v0, 0x66

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->processWebViewShare(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    const-string v3, "sendMsgWebView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0x67

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->processWebViewShare(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v3, "jsCallNative"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 110
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->sendJsToGame(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_7
    const-string v3, "goBack"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 112
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->goBack()V

    goto :goto_0

    .line 113
    :cond_8
    const-string v3, "goForward"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 114
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->goForward()V

    goto :goto_0

    .line 115
    :cond_9
    const-string v3, "getNetworkType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 116
    invoke-direct {p0, v1, v2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->GetNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_a
    const-string v1, "setFullScreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 118
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    const-string v1, "isFullScreen"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setToolBarEnable(Z)V

    goto :goto_0

    .line 119
    :cond_b
    const-string v1, "setPosition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    const-string/jumbo v1, "y"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 122
    const-string/jumbo v2, "width"

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 123
    const-string v3, "height"

    invoke-static {p1, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 124
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->setPosition(IIII)V

    goto :goto_0

    .line 126
    :cond_c
    const-string p1, "can not find cmd"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return v4
.end method

.method public sendToJs(Ljava/lang/String;)V
    .locals 1

    .line 136
    const-string v0, "msdkCall"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendToJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string p1, "sendToJs funcName is empty"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:%s(\'%s\')"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->mToolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-virtual {p2, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
