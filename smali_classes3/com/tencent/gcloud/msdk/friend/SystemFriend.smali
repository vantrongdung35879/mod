.class public Lcom/tencent/gcloud/msdk/friend/SystemFriend;
.super Ljava/lang/Object;
.source "SystemFriend.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/friend/IFriend;


# static fields
.field private static final MSDKSystemShareFileName:Ljava/lang/String; = "MSDKSystmShareTemp.png"

.field private static final MSDK_SYSTEM_FILE_PROVIDER:Ljava/lang/String; = ".system.provider"


# instance fields
.field private final SYSTEM_FRIEND_REPORT_TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SystemFriend"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->SYSTEM_FRIEND_REPORT_TYPE:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] SystemFriend initialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 66
    const-string v1, "5.34.000"

    const/4 v2, 0x0

    invoke-static {v1, v0, v1, p1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFriend(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] System addFriend is not support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 380
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd6

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] dealNetImg with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", observerId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] dealNetImg failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 169
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/16 v2, 0xd3

    invoke-direct {p1, v2, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/tencent/gcloud/msdk/friend/SystemFriend$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend$1;-><init>(Lcom/tencent/gcloud/msdk/friend/SystemFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public isBackendSupported(IILjava/lang/String;)Z
    .locals 0

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] SystemFriend isBackendSupported returns false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public needOpenid2Uid(ILcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;)Z
    .locals 0

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] SystemFriend needOpenid2Uid returns false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onIntentChooser(Landroid/content/Intent;)V
    .locals 0

    .line 409
    const-string p1, "System onIntentChooser"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public queryFriends(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] System queryFriends is not support"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 398
    :try_start_0
    new-instance p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p3, p4}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x7

    .line 399
    :try_start_1
    iput p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    .line 400
    iget p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retMsg:Ljava/lang/String;

    const/16 p1, 0xd5

    .line 401
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

    .line 403
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] queryFriends json exception:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0xca

    .line 405
    invoke-static {p1, p3, p5}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] System sendMessage is not support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 354
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd4

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public sendToGameCenter(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] System sendToGameCenter is not support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 367
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd7

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 7

    .line 78
    const-string v0, "execute MSDKPlatform.initialize() first"

    const/16 v1, 0xb

    const/4 v2, -0x1

    const/16 v3, 0xd3

    const-string v4, "[ "

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] System share failed, reqInfo is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] System share with args reqInfo : "

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

    .line 86
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 87
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x11

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] System share failed, execute MSDKPlatform.initialize() first"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x2710

    .line 91
    iget v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v0, v5, :cond_2

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "System share text failed, reqInfo.desc is null"

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] System share text failed, reqInfo.desc is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0x2712

    .line 95
    iget v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v0, v5, :cond_3

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "System share image failed, reqInfo.imagePath is null"

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] System share image failed, reqInfo.imagePath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_3
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v5, 0x2715

    if-ne v5, v0, :cond_4

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "System share video failed, reqInfo.mediaPath is null"

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] System share video failed, reqInfo.mediaPath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v0, 0x2711

    .line 103
    iget v6, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-ne v0, v6, :cond_5

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "System share link failed, reqInfo.link is null"

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_5
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    if-eq v0, v5, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v1, 0x7

    const-string v5, "share type is not support"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] System share type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not support "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    invoke-virtual {p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->systemShareLocalImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->systemShareLink(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->systemShareText(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_7
    invoke-virtual {p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->systemShareVideo(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V

    .line 131
    :goto_0
    const-string p1, "SystemFriend"

    const-string/jumbo p3, "{\"method\":\"share\"}"

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected systemShareLink(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    .locals 6

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] systemShareLink with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", observerId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    const-string/jumbo v2, "text/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->onIntentChooser(Landroid/content/Intent;)V

    .line 419
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0xd3

    if-eqz v2, :cond_1

    .line 421
    iget-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareLink success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 423
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareLink failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 426
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, v4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public systemShareLocalImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    .locals 9

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] systemShareLocalImg with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", observerId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->onIntentChooser(Landroid/content/Intent;)V

    .line 241
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/16 v4, 0xb

    const/4 v5, -0x1

    const/16 v6, 0xd3

    if-nez v3, :cond_0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareImg failed, imagePath : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 244
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "imagePath is not exist"

    invoke-direct {p1, v6, v4, v5, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_1

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".system.provider"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ] providerAuth path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareImg failed, uri is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 257
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string/jumbo v0, "uri is null"

    invoke-direct {p1, v6, v4, v5, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]imagePath is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and uri is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 262
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 267
    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareImg success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 270
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v6, v0, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_2

    .line 272
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareImg failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 273
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, v6, v0, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public systemShareText(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    .locals 6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] systemShareText with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", observerId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->onIntentChooser(Landroid/content/Intent;)V

    .line 147
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0xd3

    if-eqz v2, :cond_1

    .line 149
    iget-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareText success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 151
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareText failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 154
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, v4, v0, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected systemShareVideo(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    .locals 9

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] systemShareVideo with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", observerId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/friend/SystemFriend;->onIntentChooser(Landroid/content/Intent;)V

    .line 283
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/16 v4, 0xb

    const/4 v5, -0x1

    const/16 v6, 0xd3

    if-nez v3, :cond_0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareVideo failed, video : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 286
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string/jumbo v0, "video path is not exist"

    invoke-direct {p1, v6, v4, v5, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".system.provider"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ] providerAuth path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareImg failed, uri is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 298
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string/jumbo v0, "uri is null"

    invoke-direct {p1, v6, v4, v5, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]imagePath is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and uri is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 303
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 304
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 307
    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareVideo success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 309
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v6, v0, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] systemShareVideo failed, execute MSDKPlatform.initialize() first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 312
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0x11

    invoke-direct {p1, v6, v0, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(III)V

    invoke-static {p2, p1, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
