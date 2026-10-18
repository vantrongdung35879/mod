.class public Lcom/tencent/gcloud/msdk/webview/WebViewManager;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# static fields
.field public static final CONFIG_KEY_BACK_DISABLE:Ljava/lang/String; = "CONFIG_KEY_BACK_DISABLE"

.field public static final CONFIG_KEY_IS_FULLSCREEN:Ljava/lang/String; = "WEBVIEW_IS_FULLSCREEN"

.field public static final CONFIG_KEY_LANDSCAPE_BAR:Ljava/lang/String; = "WEBVIEW_LANDSCAPE_BAR_HIDEABLE"

.field public static final CONFIG_KEY_PORTRAIT_BAR:Ljava/lang/String; = "WEBVIEW_PORTRAIT_BAR_HIDEABLE"

.field public static final CONFIG_KEY_SHARE_CHANNEL:Ljava/lang/String; = "WEBVIEW_SHARE_CHANNEL"

.field public static final CONFIG_KEY_X5_CLOSE:Ljava/lang/String; = "WEBVIEW_X5_CLOSE_ANDROID"

.field public static final CONFIG_KEY_X5_UPLOAD:Ljava/lang/String; = "WEBVIEW_X5_UPLOAD_ANDROID"

.field public static final EXTRA_KEY_CALLJS_CONFIG:Ljava/lang/String; = "webview_calljs"

.field public static final EXTRA_KEY_FROM_JS:I = 0x1

.field public static final EXTRA_KEY_FROM_KEY:Ljava/lang/String; = "from_key"

.field public static final EXTRA_KEY_FROM_NATIVE:I = 0x2

.field public static final EXTRA_KEY_LOADING_COLOR:Ljava/lang/String; = "webview_key_loading_color"

.field public static final EXTRA_KEY_OBSERVER_ID:Ljava/lang/String; = "webview_key_observer_id"

.field public static final EXTRA_KEY_SCREEN:Ljava/lang/String; = "webview_screen"

.field public static final EXTRA_KEY_SEQ_ID:Ljava/lang/String; = "webview_key_seq_id"

.field public static final EXTRA_KEY_TIELE_BAR_ALPHA:Ljava/lang/String; = "webview_key_title_bar_alpha"

.field public static final EXTRA_KEY_TIELE_BAR_COLOR:Ljava/lang/String; = "webview_key_title_bar_color"

.field public static final EXTRA_KEY_TOOL_BAR_ALPHA:Ljava/lang/String; = "webview_key_tool_bar_alpha"

.field public static final EXTRA_KEY_TOOL_BAR_COLOR:Ljava/lang/String; = "webview_key_tool_bar_color"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "webview_url"

.field public static final EXTRA_KEY_WEBVIEW_CONFIG:Ljava/lang/String; = "webview_config"

.field public static final EXTRA_USER_AGENT:Ljava/lang/String; = "user_agent"

.field public static final IPC_WEBVIEW_MSG:Ljava/lang/String; = "ipc_webview_msg"

.field public static final IPC_WEBVIEW_MSG_TYPE:Ljava/lang/String; = "ipc_webview_msg_type"

.field protected static final KEY_JAVA_TO_JS_MSG:Ljava/lang/String; = "java_to_js_msg"

.field public static final KEY_JS_CHANNEL:Ljava/lang/String; = "channel"

.field protected static final KEY_JS_DATA:Ljava/lang/String; = "jsonData"

.field public static final KEY_JS_FULLSCREEN:Ljava/lang/String; = "isFullScreen"

.field public static final KEY_JS_IMGDATA:Ljava/lang/String; = "imgData"

.field protected static final KEY_JS_SCREEN_ORIENTATION:Ljava/lang/String; = "screenOrientation"

.field public static final KEY_JS_TOAST:Ljava/lang/String; = "isToastShow"

.field public static final LOADING_BACKGROUND_COLOR:Ljava/lang/String; = "WEBVIEW_LOADING_BACKGROUND_COLOR"

.field public static final MSDK_GAME_ID:Ljava/lang/String; = "MSDK_GAME_ID"

.field public static final MSDK_KEY_CARRIER:Ljava/lang/String; = "carrier"

.field public static final MSDK_KEY_OPEN_URL:Ljava/lang/String; = "open_url"

.field public static final MSDK_KEY_PORT:Ljava/lang/String; = "port"

.field public static final MSDK_WEBVIEW_MODE_FLAG:Ljava/lang/String; = "MSDK_WEBVIEW_MODE"

.field protected static final MSG_A2S_CAPTCHA:I = 0x1a4

.field protected static final MSG_A2S_JS_RETURN:I = 0x17

.field protected static final MSG_A2S_RECEIVE_MESSENGER:I = 0x16

.field protected static final MSG_A2S_WEBVIEW_CLOSED:I = 0x15

.field protected static final MSG_S2A_JAVA_CALL_JS:I = 0x1e

.field public static final QQ_APP_ID:Ljava/lang/String; = "QQ_APP_ID"

.field public static final SCREEN_DIRECTION_LANDSCAPE:I = 0x3

.field public static final SCREEN_DIRECTION_PORTRAIT:I = 0x2

.field public static final SCREEN_DIRECTION_SENSOR:I = 0x1

.field public static final TITLE_BAR_ALPHA:Ljava/lang/String; = "WEBVIEW_TITLE_BAR_ALPHA"

.field public static final TITLE_BAR_BACKGROUND_COLOR:Ljava/lang/String; = "WEBVIEW_TITLE_BAR_BACKGROUND_COLOR"

.field public static final TITLE_BAR_BACKGROUND_COLOR_DEFAULT:Ljava/lang/String; = "#333333"

.field public static final TOOL_BAR_ALPHA:Ljava/lang/String; = "WEBVIEW_TOOL_BAR_ALPHA"

.field public static final TOOL_BAR_BACKGROUND_COLOR:Ljava/lang/String; = "WEBVIEW_TOOL_BAR_BACKGROUND_COLOR"

.field public static final TOOL_BAR_BACKGROUND_COLOR_DEFAULT:Ljava/lang/String; = "#333333"

.field public static final WX_APP_ID:Ljava/lang/String; = "WECHAT_APP_ID"

.field private static sInstance:Lcom/tencent/gcloud/msdk/webview/WebViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "init"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/gcloud/msdk/webview/WebViewManager;
    .locals 4

    .line 111
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->sInstance:Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->sInstance:Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    .line 114
    :cond_0
    const-string v0, "TBS"

    const-string v1, "4.3.0.442"

    const-string v2, "5.36.000"

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->sInstance:Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    return-object v0
.end method

.method private getWebViewConfig(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)Ljava/lang/String;
    .locals 10

    .line 205
    const-string v0, "WEBVIEW_SHARE_CHANNEL"

    const-string v1, "WEBVIEW_LANDSCAPE_BAR_HIDEABLE"

    const-string v2, "WEBVIEW_PORTRAIT_BAR_HIDEABLE"

    const-string v3, "WEBVIEW_X5_UPLOAD_ANDROID"

    const-string v4, "WEBVIEW_X5_CLOSE_ANDROID"

    const-string v5, "WEBVIEW_IS_FULLSCREEN"

    const-string v6, "CONFIG_KEY_BACK_DISABLE"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, 0x1

    .line 207
    :try_start_0
    invoke-static {v4, v8}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 208
    invoke-static {v3, v8}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v3, 0x0

    .line 209
    invoke-static {v2, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    invoke-static {v1, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 211
    invoke-static {v5, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 212
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-static {v6, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 214
    iget-boolean v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 218
    :cond_0
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v7, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 227
    :cond_1
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static parseColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p0, p1

    .line 241
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public callJS(Ljava/lang/String;)V
    .locals 3

    .line 168
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string p1, "jsonJsPara is null, return"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonJsPara = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string/jumbo v1, "webview_calljs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    const-string p1, "can\'t start WebViewActivity\uff0cMake sure you have register \"WebViewActivity\""

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onShareCallback(Ljava/lang/String;)V
    .locals 3

    .line 185
    :try_start_0
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {v0, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 189
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResult webViewResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewManager;Landroid/app/Activity;Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 200
    :cond_0
    const-string p1, "MSDKPlatform.getActivity() return null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)V
    .locals 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openUrl with url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 128
    iget-boolean v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->isBrowser:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->shareToBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 134
    const-string p1, "Must execute USDKPlatform.initialize() first !!!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string/jumbo v1, "webview_url"

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "webview_screen"

    iget v2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->screenType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string v2, "MSDK_KEY_OBSERVER_ID"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "webview_key_observer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string v2, "MSDK_KEY_SEQ_ID"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webview_key_seq_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string v2, "MSDK_WEBVIEW_MODE"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "WEBVIEW_LOADING_BACKGROUND_COLOR"

    const-string v2, "010C0F"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webview_key_loading_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "WEBVIEW_TITLE_BAR_BACKGROUND_COLOR"

    const-string v2, "333333"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "webview_key_title_bar_color"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "WEBVIEW_TITLE_BAR_ALPHA"

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "webview_key_title_bar_alpha"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v1, "WEBVIEW_TOOL_BAR_BACKGROUND_COLOR"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webview_key_tool_bar_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "WEBVIEW_TOOL_BAR_ALPHA"

    invoke-static {v1, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "webview_key_tool_bar_alpha"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "webview_config"

    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->getWebViewConfig(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " MSDK/5.36.000 mQQAppId/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "QQ_APP_ID"

    .line 151
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mWXAppId/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WECHAT_APP_ID"

    .line 152
    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGameId/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MSDK_GAME_ID"

    .line 153
    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MSDKdeviceId/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_2
    const-string/jumbo v1, "user_agent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    const-string p1, "can\'t start WebViewActivity\uff0cMake sure you have register \"WebViewActivity\""

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 164
    const-string/jumbo v0, "{\"method\":\"openUrl\"}"

    const-string/jumbo v1, "webview"

    invoke-static {v1, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
