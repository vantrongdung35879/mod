.class public interface abstract Lcom/tencent/gcloud/msdk/core/group/IGroup;
.super Ljava/lang/Object;
.source "IGroup.java"


# static fields
.field public static final GROUP_HANDLE_IN_CORE_KIT:I = 0x1

.field public static final GROUP_HANDLE_IN_PLUGIN:I = 0x0

.field public static final mObserverID:I = 0x12d


# virtual methods
.method public abstract bindGroup(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Lcom/tencent/gcloud/msdk/api/group/MSDKGroupInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "groupInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract createGroup(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract getGroupList(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract getGroupRelation(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Lcom/tencent/gcloud/msdk/api/group/MSDKGroupInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "groupInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract getGroupState(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract joinGroup(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Lcom/tencent/gcloud/msdk/api/group/MSDKGroupInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "groupInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract remindToBindGroup(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract sendGroupMessage(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Lcom/tencent/gcloud/msdk/api/group/MSDKGroupMessage;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "friendReqInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract unbindGroup(Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionInfo",
            "seqID",
            "extra"
        }
    .end annotation
.end method
