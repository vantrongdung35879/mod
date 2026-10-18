.class public interface abstract Lcom/tencent/gcloud/msdk/core/friend/IFriend;
.super Ljava/lang/Object;
.source "IFriend.java"


# virtual methods
.method public abstract addFriend(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reqInfo",
            "seqID",
            "observerID"
        }
    .end annotation
.end method

.method public abstract isBackendSupported(IILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodID",
            "type",
            "seqID"
        }
    .end annotation
.end method

.method public abstract needOpenid2Uid(ILcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodID",
            "reqInfo",
            "seqID"
        }
    .end annotation
.end method

.method public abstract queryFriends(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subChannel",
            "page",
            "count",
            "isInGame",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reqInfo",
            "seqID",
            "observerID"
        }
    .end annotation
.end method

.method public abstract sendToGameCenter(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reqInfo",
            "seqID",
            "observerID"
        }
    .end annotation
.end method

.method public abstract share(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reqInfo",
            "seqID",
            "observerID"
        }
    .end annotation
.end method
