.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;
.super Ljava/lang/Object;
.source "GarenaFriend.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/GGPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSDKGarenaFriendCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# instance fields
.field mMethodID:I

.field mObserverID:I

.field mSeqID:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mObserverID:I

    .line 345
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mSeqID:Ljava/lang/String;

    .line 346
    iput p4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mMethodID:I

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/beetalk/sdk/plugin/PluginResult;)V
    .locals 4

    const/16 v0, 0x270f

    .line 357
    const-string v1, "[ "

    if-eqz p1, :cond_2

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mSeqID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onPluginResult: status = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 361
    iget v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 362
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mMethodID:I

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    goto :goto_0

    .line 363
    :cond_0
    iget v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 364
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mMethodID:I

    iget v2, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 368
    :cond_1
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mMethodID:I

    iget v3, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 373
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mSeqID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Garena Plugin Result is null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 374
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mMethodID:I

    const/16 v2, 0x13

    const-string v3, "Garena Plugin Result is null"

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 379
    :goto_0
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mObserverID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->mSeqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;->onPluginResult(Lcom/beetalk/sdk/plugin/PluginResult;)V

    return-void
.end method
