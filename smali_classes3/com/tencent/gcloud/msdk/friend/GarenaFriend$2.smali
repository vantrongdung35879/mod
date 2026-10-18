.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;
.super Ljava/lang/Object;
.source "GarenaFriend.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$ShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToGarena(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

.field final synthetic val$observerID:I

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$seqID:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$observerID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/beetalk/sdk/ndk/ShareRet;)V
    .locals 4

    const/16 v0, 0x270f

    .line 475
    const-string v1, "[ "

    const/16 v2, 0xd4

    if-eqz p1, :cond_2

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] desc = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 478
    iget v1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 479
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    goto :goto_0

    .line 480
    :cond_0
    iget v1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 481
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    iget-object p1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 485
    :cond_1
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v3, p1, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    iget-object p1, p1, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 490
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Garena Plugin Result is null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 491
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v1, -0x1

    const-string v3, "Garena Plugin Result is null"

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 496
    :goto_0
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 467
    check-cast p1, Lcom/beetalk/sdk/ndk/ShareRet;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;->onPluginResult(Lcom/beetalk/sdk/ndk/ShareRet;)V

    return-void
.end method
