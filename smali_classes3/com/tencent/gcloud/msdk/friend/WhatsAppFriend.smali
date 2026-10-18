.class public Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;
.super Ljava/lang/Object;
.source "WhatsAppFriend.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/friend/IFriend;


# static fields
.field private static final MSDKWhatsAppSendFileName:Ljava/lang/String; = "MSDKWhatsAppSendTemp.png"

.field private static final MSDKWhatsAppSendFolderName:Ljava/lang/String; = "WhatsAppSend"

.field private static final MSDK_WHATSAPP_FILE_PROVIDER:Ljava/lang/String; = ".system.provider"

.field private static final PACKAGE:Ljava/lang/String; = "com.whatsapp"


# instance fields
.field private final WHATSAPP_FRIEND_REPORT_TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "WhatsAppFriend"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->WHATSAPP_FRIEND_REPORT_TYPE:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] WhatsAppFriend initialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 73
    const-string v1, "5.34.000"

    const/4 v2, 0x0

    invoke-static {v1, v0, v1, p1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFriend(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsApp addFriend is not support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 448
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd6

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V
    .locals 10

    const/16 v0, 0xd4

    if-eq p4, v0, :cond_0

    const/16 v0, 0xd3

    if-eq p4, v0, :cond_0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WhatsAppFriend dealNetImg get error methodId, the methodId is: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x2712

    .line 195
    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/4 v2, 0x1

    const-string v3, "[ "

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xb

    const-string v1, "WhatsApp send image failed, reqInfo.imagePath is null"

    invoke-direct {p1, p4, v0, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp send image failed, reqInfo.imagePath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] dealNetImg with args reqInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", observerId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] dealNetImg failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 204
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, p4, v0, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_2
    new-instance v0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p3

    move v8, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;-><init>(Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;II)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public isBackendSupported(IILjava/lang/String;)Z
    .locals 0

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsAppFriend isBackendSupported returns false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public needOpenid2Uid(ILcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;)Z
    .locals 0

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsAppFriend needOpenid2Uid returns false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public queryFriends(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] WhatsApp queryFriends support by sever not SDK"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 467
    :try_start_0
    new-instance p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p3, p4}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x7

    .line 468
    :try_start_1
    iput p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    .line 469
    iget p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retMsg:Ljava/lang/String;

    const/16 p1, 0xd5

    .line 470
    iput p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->methodNameID:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p3

    move-object v0, p3

    move-object p3, p1

    move-object p1, v0

    .line 472
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp queryFriends json exception, e = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0xca

    .line 474
    invoke-static {p1, p3, p5}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 7

    .line 85
    const-string v0, "execute MSDKPlatform.initialize() first"

    const/16 v1, 0xb

    const/4 v2, 0x1

    const-string v3, "[ "

    const/16 v4, 0xd4

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp sendMessage failed, reqInfo is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] WhatsApp sendMessage with args reqInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", observerId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 94
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x11

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp sendMessage failed, execute MSDKPlatform.initialize() first"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_1
    const-string v0, "com.whatsapp"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Tools;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xf

    const-string v1, "need WhatsApp app installed"

    invoke-direct {p1, v4, v0, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] need WhatsApp app installed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_2
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v5, 0x2715

    if-eq v0, v5, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v1, -0x1

    const-string v2, "sendMessage type is not support"

    const/4 v5, 0x7

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsApp send type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not support "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatAppSendOrShareText(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_4
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    .line 121
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 123
    :cond_5
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp send video failed, reqInfo.mediaPath is not local"

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] WhatsApp send video failed, reqInfo.mediaPath is not local"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 132
    :goto_0
    const-string p1, "WhatsAppFriend"

    const-string/jumbo p3, "{\"method\":\"sendMessage\"}"

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendToGameCenter(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsApp sendToGameCenter is not support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 435
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd7

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 7

    .line 376
    const-string v0, "execute MSDKPlatform.initialize() first"

    const/16 v1, 0xb

    const/4 v2, 0x1

    const-string v3, "[ "

    const/16 v4, 0xd3

    if-nez p1, :cond_0

    .line 377
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp share failed, reqInfo is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] WhatsApp share with args reqInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", observerId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 385
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x11

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp share failed, execute MSDKPlatform.initialize() first"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_1
    const-string v0, "com.whatsapp"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Tools;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xf

    const-string v1, "need WhatsApp app installed"

    invoke-direct {p1, v4, v0, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] need WhatsApp app installed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_2
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v5, 0x2715

    if-eq v0, v5, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 417
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v1, -0x1

    const-string v2, "share type is not support"

    const/4 v5, 0x7

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 418
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsApp share type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not support "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatAppSendOrShareText(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 409
    :cond_4
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    .line 410
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 412
    :cond_5
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp share video failed, reqInfo.mediaPath is not local"

    invoke-direct {p1, v4, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] WhatsApp share video failed, reqInfo.mediaPath is not local"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 421
    :goto_0
    const-string p1, "WhatsAppFriend"

    const-string/jumbo p3, "{\"method\":\"sendMessage\"}"

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whatAppSendOrShareText(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V
    .locals 7

    const/16 v0, 0xd4

    if-eq p4, v0, :cond_0

    const/16 v0, 0xd3

    if-eq p4, v0, :cond_0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WhatsAppFriend whatAppSendOrShareText get error methodId, the methodId is: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v1, 0xb

    const/16 v2, 0x2710

    const/4 v3, 0x1

    const-string v4, "[ "

    if-ne v2, v0, :cond_1

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp send text failed, reqInfo.desc is null"

    invoke-direct {p1, p4, v1, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp whatAppSendOrShareText failed, reqInfo.desc is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_1
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v5, 0x2711

    if-ne v5, v0, :cond_2

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp send link failed, reqInfo.link is null"

    invoke-direct {p1, p4, v1, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp whatAppSendOrShareText link failed, reqInfo.link is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] whatsAppSendText with args reqInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", observerId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const-string v6, "android.intent.extra.TEXT"

    if-ne v1, v2, :cond_3

    .line 165
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    :cond_3
    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v1, v5, :cond_4

    .line 167
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_4
    :goto_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 172
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] whatsAppSendText success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 175
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, p4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] whatsAppSendText failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 178
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, p4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V
    .locals 8

    const/16 v0, 0xd4

    if-eq p4, v0, :cond_0

    const/16 v0, 0xd3

    if-eq p4, v0, :cond_0

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WhatsAppFriend whatsAppSendLocalMedia get error methodId, the methodId is: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_0
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v1, 0x2712

    const/16 v2, 0xb

    const/4 v3, 0x1

    const-string v4, "[ "

    if-ne v1, v0, :cond_1

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp send image failed, reqInfo.imagePath is null"

    invoke-direct {p1, p4, v2, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp whatsAppSendLocalMedia failed, reqInfo.imagePath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_1
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v5, 0x2715

    if-ne v5, v0, :cond_2

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "WhatsApp send video failed, reqInfo.videoPath is null"

    invoke-direct {p1, p4, v2, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] WhatsApp whatsAppSendLocalMedia failed, reqInfo.mediaPath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 286
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] WhatsAppSendLocalMedia with args reqInfo : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", observerId : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", methodID : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    const-string v6, "com.whatsapp"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget v6, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v1, v6, :cond_3

    .line 294
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_3
    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v5, v1, :cond_4

    .line 297
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_4
    const-string p1, ""

    .line 303
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsAppSendMedia failed, imagePath : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 306
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "localMediaFile is not exist"

    invoke-direct {p1, p4, v2, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".system.provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ] providerAuth path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 314
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_7

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsAppSendMedia failed, uri is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 319
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string/jumbo v0, "uri is null"

    invoke-direct {p1, p4, v2, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] localMediaPath is : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and uri is : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 324
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 328
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsAppSendMedia success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 331
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, p4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] WhatsAppSendMedia failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 334
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, p4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
