.class public interface abstract Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendObserver;
.super Ljava/lang/Object;
.source "MSDKFriendObserver.java"


# virtual methods
.method public abstract onDeliverMessageNotify(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseRet"
        }
    .end annotation
.end method

.method public abstract onQueryFriendNotify(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendRet"
        }
    .end annotation
.end method
