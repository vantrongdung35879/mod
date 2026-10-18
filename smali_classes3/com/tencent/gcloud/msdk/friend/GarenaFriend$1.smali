.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToGarena(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

.field final synthetic val$mediaTagName:Ljava/lang/String;

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$mediaTagName:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$observerID:I

    iput-object p5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->onNotify([B)V

    return-void
.end method

.method public onNotify([B)V
    .locals 6

    const/16 v0, 0xd4

    .line 424
    :try_start_0
    new-instance v1, Lcom/beetalk/sdk/GGTextShare$Builder;

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/beetalk/sdk/GGTextShare$Builder;-><init>([BI)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    .line 425
    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setTitle(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setScene(Ljava/lang/Integer;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    .line 427
    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setDesc(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$mediaTagName:Ljava/lang/String;

    .line 428
    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 429
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://www.garena.sg/"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setUrl(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 430
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->build()Lcom/beetalk/sdk/GGTextShare;

    move-result-object p1

    new-instance v2, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iget v4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$observerID:I

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {v1, p1, v2}, Lcom/beetalk/sdk/GGPlatform;->GGSendGameToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGTextShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Garena AppID is not a num"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 433
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$observerID:I

    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v2, "Garena AppID is not a num"

    const/4 v3, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 443
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
