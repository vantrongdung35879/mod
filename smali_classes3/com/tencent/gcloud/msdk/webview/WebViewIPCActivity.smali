.class public Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;
.super Landroid/app/Activity;
.source "WebViewIPCActivity.java"


# instance fields
.field private msgType:I

.field private observerId:I

.field private seqId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->msgType:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    return-void
.end method

.method private fromH5AuthResult(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/api/MSDKRet;
    .locals 3

    .line 135
    const-string v0, "flag"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(I)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v2, "desc"

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IILjava/lang/String;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private handlerIPCMsg(ILjava/lang/String;)V
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msgType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ipcJsonMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    .line 78
    const-string v2, "js call webview nativie"

    const/16 v3, 0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->processWebViewShare(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :pswitch_1
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    .line 101
    iput v3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    .line 102
    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgJsonData:Ljava/lang/String;

    .line 103
    iput v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    .line 104
    iput-object v2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    const/16 p2, 0x19d

    .line 105
    iput p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 106
    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "js captcha, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    .line 120
    iput v3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    .line 121
    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgJsonData:Ljava/lang/String;

    .line 122
    iput v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    .line 123
    iput-object v2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    const/16 p2, 0x1a4

    .line 124
    iput p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 125
    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "RealName notify:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->fromH5AuthResult(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/api/MSDKRet;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleIPCMsg close webview with ObserverID : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 83
    iget p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_3

    .line 84
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(I)V

    const/16 p2, 0xd3

    .line 85
    iput p2, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 86
    const-string p2, "close GameLine webview"

    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retMsg:Ljava/lang/String;

    const/4 p2, -0x1

    .line 87
    iput p2, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdCode:I

    .line 88
    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    const/16 v0, 0x64

    .line 91
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    .line 92
    iput v1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    const/16 v0, 0x19b

    .line 93
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 94
    const-string v0, "close webview"

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    .line 95
    iput-object p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgJsonData:Ljava/lang/String;

    .line 96
    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 181
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;Landroid/app/Activity;Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 190
    :cond_0
    const-string p1, "MSDKPlatform.getActivity() return null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 193
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

    .line 194
    iput p1, p2, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    const/16 p1, 0x191

    .line 195
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processWebViewShare(ILjava/lang/String;)V
    .locals 9

    .line 151
    const-string v0, "channel"

    invoke-static {p2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "isToastShow"

    invoke-static {p2, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 153
    const-string v3, "from_key"

    invoke-static {p2, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 154
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "com.tencent.gcloud.msdk.friend.%sFriend"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "packageName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getInstance()Lcom/tencent/gcloud/msdk/tools/MSDKModules;

    move-result-object v6

    const-class v7, Lcom/tencent/gcloud/msdk/core/friend/IFriend;

    iget-object v8, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v8, v5}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getChannelInstance(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/gcloud/msdk/core/friend/IFriend;

    if-nez v5, :cond_0

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "no plugin ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") include!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 159
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>(I)V

    invoke-direct {p0, v2, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v4, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    invoke-direct {v4, p2}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v4}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toJSONString()Ljava/lang/String;

    move-result-object v4

    .line 165
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v0, "fromType"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v0, "shareType"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    .line 170
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->extraJson:Ljava/lang/String;

    const/16 v0, 0x19e

    .line 171
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 172
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    const/16 v1, 0x194

    invoke-static {v1, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parse MSDKFriendReqInfo with json("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 175
    new-instance p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>(I)V

    invoke-direct {p0, v2, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->onJniNotify(ZLcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 67
    const-string p1, "onActivityResult invoked"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->loadSO()Z

    .line 48
    const-string p1, "onCreate invoked"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 51
    const-string p1, "Intent to WebViewIpcActivity is null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->finish()V

    return-void

    .line 55
    :cond_0
    const-string v0, "ipc_webview_msg_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->msgType:I

    .line 56
    const-string/jumbo v0, "webview_key_observer_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->observerId:I

    .line 57
    const-string/jumbo v0, "webview_key_seq_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->seqId:Ljava/lang/String;

    .line 58
    const-string v0, "ipc_webview_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->msgType:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->handlerIPCMsg(ILjava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    const-string v0, "onDestroy invoked"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method
