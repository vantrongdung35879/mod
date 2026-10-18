.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
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

.field final synthetic val$observerID:I

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iput p2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$observerID:I

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 750
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->onNotify([B)V

    return-void
.end method

.method public onNotify([B)V
    .locals 6

    .line 757
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iget v3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$observerID:I

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$seqID:Ljava/lang/String;

    const/16 v5, 0xd4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/GGPlatform;->GGSendImageToFBMessenger(Landroid/app/Activity;[BLcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 766
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
