.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->shareToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
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

.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$caption:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$observerID:I

    iput-object p5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 616
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->onNotify([B)V

    return-void
.end method

.method public onNotify([B)V
    .locals 7

    .line 624
    new-instance v6, Lcom/beetalk/sdk/facebook/FBPostItem;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$caption:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v3, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v4, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v5, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/facebook/FBPostItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iput-object p1, v6, Lcom/beetalk/sdk/facebook/FBPostItem;->data:[B

    .line 626
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iget v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$observerID:I

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$seqID:Ljava/lang/String;

    const/16 v4, 0xd3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {p1, v6, v0}, Lcom/beetalk/sdk/GGPlatform;->GGShareToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 636
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
