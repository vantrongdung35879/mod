.class public Lcom/beetalk/sdk/networking/model/RecallToken;
.super Ljava/lang/Object;
.source "RecallToken.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field private expiryTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiry_time"
    .end annotation
.end field

.field private loginPlatform:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_platform"
    .end annotation
.end field

.field private openId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "open_id"
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private primaryPlatform:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main_active_platform"
    .end annotation
.end field

.field private scopes:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/beetalk/sdk/networking/ULongJsonAdapter;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->platform:I

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->accessToken:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->createTime:J

    .line 19
    iput-wide v2, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->expiryTime:J

    .line 22
    iput-object v1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->uid:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->openId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->scopes:J

    .line 32
    iput v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->primaryPlatform:I

    .line 35
    iput v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->loginPlatform:I

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->createTime:J

    return-wide v0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->expiryTime:J

    return-wide v0
.end method

.method public getLoginPlatform()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->loginPlatform:I

    return v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->platform:I

    return v0
.end method

.method public getPrimaryPlatform()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->primaryPlatform:I

    return v0
.end method

.method public getScopes()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->scopes:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->uid:Ljava/lang/String;

    return-object v0
.end method
