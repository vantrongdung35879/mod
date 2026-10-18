.class public final Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "BoundMobileNumberResponse.java"


# instance fields
.field public final lastUpdateTime:J

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    .line 27
    const-string v0, "mobile_no"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;->phoneNumber:Ljava/lang/String;

    .line 28
    const-string v0, "mobile_update_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;->lastUpdateTime:J

    .line 29
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;->populateStatusCode(Lorg/json/JSONObject;)V

    return-void
.end method
