.class public Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;
.super Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;
.source "MSDKUnionInfo.java"


# instance fields
.field public areaID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "areaID"
    .end annotation
.end field

.field public extraJson:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public leaderID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "leaderID"
    .end annotation
.end field

.field public leaderRoleID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "leaderRoleID"
    .end annotation
.end field

.field public leaderZoneID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "leaderZoneID"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "nickName"
    .end annotation
.end field

.field public partitionID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "partitionID"
    .end annotation
.end field

.field public roleID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "roleID"
    .end annotation
.end field

.field public roleName:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "roleName"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "type"
    .end annotation
.end field

.field public unionID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "unionID"
    .end annotation
.end field

.field public unionName:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "unionName"
    .end annotation
.end field

.field public userLabel:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "userLabel"
    .end annotation
.end field

.field public userZoneID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "userZoneID"
    .end annotation
.end field

.field public zoneID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "zoneID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKUnionInfo{unionID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->unionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', unionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->unionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', zoneID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->zoneID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userZoneID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->userZoneID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', roleID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->roleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', roleName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', leaderID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->leaderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', leaderRoleID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->leaderRoleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', leaderZoneID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->leaderZoneID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', areaID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->areaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', partitionID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->partitionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->userLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/group/MSDKUnionInfo;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
