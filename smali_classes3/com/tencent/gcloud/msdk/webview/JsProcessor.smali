.class public Lcom/tencent/gcloud/msdk/webview/JsProcessor;
.super Ljava/lang/Object;
.source "JsProcessor.java"


# static fields
.field public static final JS_METHOD_CAPTCHA:Ljava/lang/String; = "accountTicket"

.field public static final JS_METHOD_SEND_GET_PHONENUMBER_REQUEST:Ljava/lang/String; = "sendGetPhoneNumberRequest"

.field public static final JS_METHOD_WEBVIEW_CLOSE:Ljava/lang/String; = "closeWebView"

.field public static final JS_METHOD_WEBVIEW_GET_INSTALL_STATE:Ljava/lang/String; = "isAppInstalled"

.field public static final JS_METHOD_WEBVIEW_GO_BACK:Ljava/lang/String; = "GoBack"

.field public static final JS_METHOD_WEBVIEW_GO_FORWARD:Ljava/lang/String; = "GoForward"

.field public static final JS_METHOD_WEBVIEW_MSDK_BROWSER:Ljava/lang/String; = "OpenUrlInMSDKBrowser"

.field public static final JS_METHOD_WEBVIEW_MSDK_NAME_AUTH:Ljava/lang/String; = "OnWebRealNameAuthNotify"

.field public static final JS_METHOD_WEBVIEW_NATIVE:Ljava/lang/String; = "jsCallNative"

.field public static final JS_METHOD_WEBVIEW_SCREEN:Ljava/lang/String; = "setFullScreen"

.field public static final JS_METHOD_WEBVIEW_SCREEN_ORIENTATION:Ljava/lang/String; = "setScreenOrientation"

.field public static final JS_METHOD_WEBVIEW_SEND:Ljava/lang/String; = "sendMsgWebView"

.field public static final JS_METHOD_WEBVIEW_SHARE:Ljava/lang/String; = "shareWebView"

.field public static final KEY_PACKAGE_TARGET:Ljava/lang/String; = "package"

.field private static final MAX_JS_MSG_SIZE:I = 0x300000

.field public static final MSDK_KEY_PARMAS:Ljava/lang/String; = "ParamKey"

.field public static final MSG_JS_CAPTCHA:I = 0x6f

.field public static final MSG_JS_OPT_SEND_GET_PHONENUMBER_REQUEST:I = 0x6e

.field public static final MSG_JS_OPT_WEBVIEW_BROWSER:I = 0x69

.field public static final MSG_JS_OPT_WEBVIEW_CLOSE:I = 0x64

.field public static final MSG_JS_OPT_WEBVIEW_FULLSCREEN:I = 0x68

.field public static final MSG_JS_OPT_WEBVIEW_GO_BACK:I = 0x6c

.field public static final MSG_JS_OPT_WEBVIEW_GO_FORWARD:I = 0x6d

.field public static final MSG_JS_OPT_WEBVIEW_NATIVE:I = 0x65

.field public static final MSG_JS_OPT_WEBVIEW_REAL_NAME_NOTIFY:I = 0x6a

.field public static final MSG_JS_OPT_WEBVIEW_SCREEN_ORIENTATION:I = 0x6b

.field public static final MSG_JS_OPT_WEBVIEW_SEND:I = 0x67

.field public static final MSG_JS_OPT_WEBVIEW_SHARE:I = 0x66

.field public static final TAG_JS_METHOD:Ljava/lang/String; = "MsdkMethod"

.field private static gInstance:Lcom/tencent/gcloud/msdk/webview/JsProcessor;


# instance fields
.field private mActivityHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    return-void
.end method

.method private dispatchMessage(ILjava/lang/String;)V
    .locals 6

    .line 153
    const-string v0, "screenOrientation"

    const-string v1, "isFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msgType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 154
    const-string v2, "ParamKey"

    const/4 v3, 0x0

    const-string v4, "jsonData"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 p1, 0x6d

    .line 214
    invoke-direct {p0, p1, v5}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x6c

    .line 211
    invoke-direct {p0, p1, v5}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 199
    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 202
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 205
    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 207
    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-direct {p0, p1, v1}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 190
    :pswitch_3
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :pswitch_4
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :pswitch_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 162
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    .line 165
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 167
    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0x68

    .line 168
    invoke-direct {p0, p2, p1}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 174
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto :goto_2

    :pswitch_7
    const/16 p1, 0x64

    .line 156
    invoke-direct {p0, p1, v5}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/gcloud/msdk/webview/JsProcessor;
    .locals 1

    .line 71
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->gInstance:Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->gInstance:Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    .line 75
    :cond_0
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->gInstance:Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    return-object v0
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 231
    const-string v0, "MsdkMethod"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "isAppInstalled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "package"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseMethodName(Ljava/lang/String;)I
    .locals 1

    .line 124
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    const-string v0, "closeWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    goto/16 :goto_0

    .line 127
    :cond_0
    const-string v0, "shareWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x66

    goto/16 :goto_0

    .line 129
    :cond_1
    const-string v0, "sendMsgWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x67

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "setFullScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x68

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "jsCallNative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x65

    goto :goto_0

    .line 135
    :cond_4
    const-string v0, "OpenUrlInMSDKBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x69

    goto :goto_0

    .line 137
    :cond_5
    const-string v0, "OnWebRealNameAuthNotify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x6a

    goto :goto_0

    .line 139
    :cond_6
    const-string v0, "setScreenOrientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x6b

    goto :goto_0

    .line 141
    :cond_7
    const-string v0, "GoBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x6c

    goto :goto_0

    .line 143
    :cond_8
    const-string v0, "GoForward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x6d

    goto :goto_0

    .line 145
    :cond_9
    const-string v0, "sendGetPhoneNumberRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x6e

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendMsgToWebViewActivity(ILandroid/os/Bundle;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public canResolved(Ljava/lang/String;)Z
    .locals 3

    .line 83
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
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

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "jsonMessage = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string p1, "MsdkMethod"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parse jsonMessage error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public init(Landroid/os/Handler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    return-void
.end method

.method public parseMessage(Ljava/lang/String;)V
    .locals 3

    .line 109
    const-string v0, "MsdkMethod"

    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, ""

    .line 115
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->parseMethodName(Ljava/lang/String;)I

    move-result v0

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->dispatchMessage(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
