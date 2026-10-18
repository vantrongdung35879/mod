.class public final Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;
.super Lcom/beetalk/sdk/networking/model/CommonResponse;
.source "ExchangeSwapTokenResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001e\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001e\u0010\u001e\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR \u0010!\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R$\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001e\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008\u00a8\u00061"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
        "()V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "setAccessToken",
        "(Ljava/lang/String;)V",
        "createTimestamp",
        "",
        "getCreateTimestamp",
        "()J",
        "setCreateTimestamp",
        "(J)V",
        "expiryTimesInSeconds",
        "getExpiryTimesInSeconds",
        "setExpiryTimesInSeconds",
        "openId",
        "getOpenId",
        "setOpenId",
        "platform",
        "",
        "getPlatform",
        "()I",
        "setPlatform",
        "(I)V",
        "primaryPlatform",
        "getPrimaryPlatform",
        "setPrimaryPlatform",
        "refreshExpiryTime",
        "getRefreshExpiryTime",
        "setRefreshExpiryTime",
        "refreshToken",
        "getRefreshToken",
        "setRefreshToken",
        "scope",
        "",
        "getScope",
        "()Ljava/util/List;",
        "setScope",
        "(Ljava/util/List;)V",
        "uid",
        "getUid",
        "setUid",
        "toAuthToken",
        "Lcom/beetalk/sdk/data/AuthToken;",
        "session",
        "Lcom/beetalk/sdk/GGLoginSession;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private createTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field private expiryTimesInSeconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiry_time"
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

.field private refreshExpiryTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_expiry_time"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private scope:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->accessToken:Ljava/lang/String;

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->scope:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->uid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->openId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreateTimestamp()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->createTimestamp:J

    return-wide v0
.end method

.method public final getExpiryTimesInSeconds()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->expiryTimesInSeconds:J

    return-wide v0
.end method

.method public final getOpenId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->platform:I

    return v0
.end method

.method public final getPrimaryPlatform()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->primaryPlatform:I

    return v0
.end method

.method public final getRefreshExpiryTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshExpiryTime:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->scope:Ljava/util/List;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setCreateTimestamp(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->createTimestamp:J

    return-void
.end method

.method public final setExpiryTimesInSeconds(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->expiryTimesInSeconds:J

    return-void
.end method

.method public final setOpenId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->openId:Ljava/lang/String;

    return-void
.end method

.method public final setPlatform(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->platform:I

    return-void
.end method

.method public final setPrimaryPlatform(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->primaryPlatform:I

    return-void
.end method

.method public final setRefreshExpiryTime(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshExpiryTime:J

    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public final setScope(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->scope:Ljava/util/List;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->uid:Ljava/lang/String;

    return-void
.end method

.method public final toAuthToken(Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/beetalk/sdk/data/AuthToken;

    .line 47
    iget-object v1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->accessToken:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result p1

    .line 49
    iget v2, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->platform:I

    .line 46
    invoke-direct {v0, v1, p1, v2}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 51
    iget-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 52
    iget-wide v1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->expiryTimesInSeconds:J

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 53
    iget-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 54
    iget p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->primaryPlatform:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setPrimaryPlatform(Ljava/lang/Integer;)V

    .line 55
    iget-object p1, p0, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->openId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    return-object v0
.end method
