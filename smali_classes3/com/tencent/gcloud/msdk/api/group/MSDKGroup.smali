.class public Lcom/tencent/gcloud/msdk/api/group/MSDKGroup;
.super Ljava/lang/Object;
.source "MSDKGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bindGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "unionID",
            "zoneID",
            "roleID",
            "groupID",
            "groupName",
            "extraJson"
        }
    .end annotation
.end method

.method public static native createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "unionID",
            "unionName",
            "roleName",
            "zoneID",
            "roleID",
            "extraJson"
        }
    .end annotation
.end method

.method public static native getGroupList()V
.end method

.method public static native getGroupRelation(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetID",
            "extraJson"
        }
    .end annotation
.end method

.method public static native getGroupState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionID",
            "zoneID",
            "extraJson"
        }
    .end annotation
.end method

.method public static native joinGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionID",
            "zoneID",
            "roleID",
            "groupID",
            "extraJson"
        }
    .end annotation
.end method

.method public static native remindToBindGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionID",
            "zoneID",
            "roleID",
            "roleName",
            "leaderOpenID",
            "leaderRoleID",
            "extraJson"
        }
    .end annotation
.end method

.method public static native sendGroupMessage(Lcom/tencent/gcloud/msdk/api/group/MSDKGroupMessage;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupMessage",
            "unionID"
        }
    .end annotation
.end method

.method public static native setGroupObserver(Lcom/tencent/gcloud/msdk/api/group/MSDKGroupObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public static native unbindGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unionID",
            "unionName",
            "zoneID",
            "roleID",
            "extraJson"
        }
    .end annotation
.end method
