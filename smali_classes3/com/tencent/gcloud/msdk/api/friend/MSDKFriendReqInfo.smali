.class public Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;
.super Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;
.source "MSDKFriendReqInfo.java"


# static fields
.field public static final FRIEND_REQ_ARK:I = 0x2718

.field public static final FRIEND_REQ_COMMON_SHARE:I = 0x2720

.field public static final FRIEND_REQ_IMG:I = 0x2712

.field public static final FRIEND_REQ_IMG_SILENT:I = 0x4e22

.field public static final FRIEND_REQ_INVITE:I = 0x2713

.field public static final FRIEND_REQ_INVITE_SILENT:I = 0x4e23

.field public static final FRIEND_REQ_LINK:I = 0x2711

.field public static final FRIEND_REQ_LINK_SILENT:I = 0x4e21

.field public static final FRIEND_REQ_MINI_APP:I = 0x2716

.field public static final FRIEND_REQ_MINI_APP_SILENT:I = 0x4e26

.field public static final FRIEND_REQ_MUSIC:I = 0x2714

.field public static final FRIEND_REQ_MUSIC_SILENT:I = 0x4e24

.field public static final FRIEND_REQ_OPEN_BUSINESS_VIEW:I = 0x2719

.field public static final FRIEND_REQ_PULL_UP_MINI_APP:I = 0x2717

.field public static final FRIEND_REQ_STATE_IMAGE:I = 0x271d

.field public static final FRIEND_REQ_STATE_IMAGE_OPEN_MINI_APP:I = 0x2722

.field public static final FRIEND_REQ_STATE_TEXT:I = 0x271c

.field public static final FRIEND_REQ_STATE_VIDEO:I = 0x271e

.field public static final FRIEND_REQ_TEXT:I = 0x2710

.field public static final FRIEND_REQ_TEXT_SILENT:I = 0x4e20

.field public static final FRIEND_REQ_VIDEO:I = 0x2715

.field public static final FRIEND_REQ_VIDEO_SILENT:I = 0x4e25

.field public static final FRIEND_REQ_WX_CHANNEL_SHARE_VIDEO:I = 0x271b

.field public static final FRIEND_REQ_WX_CHANNEL_START_LIVE:I = 0x271f

.field public static final FRIEND_REQ_WX_GAMELINE:I = 0x271a

.field public static final FRIEND_REQ_WX_NATIVE_GAME_PAGE:I = 0x2721


# instance fields
.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "desc"
    .end annotation
.end field

.field public extraJson:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public imagePath:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "imagePath"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "link"
    .end annotation
.end field

.field public mediaPath:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "mediaPath"
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "thumbPath"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "title"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "type"
    .end annotation
.end field

.field public user:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
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

    .line 89
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

    .line 85
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKFriendReqInfo{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', imagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', thumbPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->thumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mediaPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', link=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
