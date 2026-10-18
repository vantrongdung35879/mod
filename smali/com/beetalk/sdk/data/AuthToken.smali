.class public Lcom/beetalk/sdk/data/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_LOGIN_PLATFORM:Ljava/lang/String; = "login_platform"

.field private static final KEY_MAIN_ACTIVE_PLATFORM:Ljava/lang/String; = "main_active_platform"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile authToken:Ljava/lang/String;

.field private volatile expiryTimestamp:Ljava/lang/Integer;

.field private volatile lastInspectTime:Ljava/lang/Integer;

.field private loginPlatform:I

.field private volatile openId:Ljava/lang/String;

.field private final originalPlatform:I

.field private volatile primaryPlatform:Ljava/lang/Integer;

.field private volatile refreshExpiryTime:J

.field private volatile refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->primaryPlatform:Ljava/lang/Integer;

    .line 51
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/beetalk/sdk/data/AuthToken;->loginPlatform:I

    .line 53
    iput p3, p0, Lcom/beetalk/sdk/data/AuthToken;->originalPlatform:I

    .line 54
    iput-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 10

    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string p0, "authToken"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    const-string v1, "mainPlatform"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    const-string v2, "refreshToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "openId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v4, "expiryTimestamp"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 102
    const-string v5, "lastInspectTime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 103
    const-string v6, "refresh_expiry_time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 105
    const-string v8, "login_platform"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 106
    new-instance v9, Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {v9, p0, v8, v1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 107
    invoke-direct {v9, v2, v3, v4, v5}, Lcom/beetalk/sdk/data/AuthToken;->update(Ljava/lang/String;Ljava/lang/String;II)V

    .line 108
    invoke-virtual {v9, v0}, Lcom/beetalk/sdk/data/AuthToken;->updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    .line 109
    invoke-virtual {v9, v6, v7}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshExpiryTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p0

    .line 113
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseExchangeResponse(ILorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    const-string v0, "open_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "expiry_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 61
    const-string v3, "platform"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    const-string v4, "refresh_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string v5, "refresh_expiry_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 64
    new-instance v7, Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {v7, v1, p0, v3}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 65
    invoke-virtual {v7, v0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v7, v4}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v7, p1}, Lcom/beetalk/sdk/data/AuthToken;->updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    .line 68
    invoke-virtual {v7, v2}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 69
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    .line 70
    invoke-virtual {v7, v5, v6}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshExpiryTime(J)V

    return-object v7
.end method

.method public static toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;
    .locals 4

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    :try_start_0
    const-string v1, "authToken"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "expiryTimestamp"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "refreshToken"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "openId"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "lastInspectTime"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "mainPlatform"

    iget v2, p0, Lcom/beetalk/sdk/data/AuthToken;->originalPlatform:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v1, "main_active_platform"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->primaryPlatform:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "login_platform"

    iget v2, p0, Lcom/beetalk/sdk/data/AuthToken;->loginPlatform:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v1, "refresh_expiry_time"

    iget-wide v2, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshExpiryTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 89
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    .line 213
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public cloneFrom(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 4

    .line 224
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    new-instance v1, Lcom/beetalk/sdk/data/AuthToken;

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    iget v3, p0, Lcom/beetalk/sdk/data/AuthToken;->loginPlatform:I

    invoke-direct {v1, v2, v3, v0}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 226
    const-string v0, "expiry_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 227
    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/data/AuthToken;->updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    .line 228
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 229
    const-string v0, "open_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    .line 231
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshExpiryTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshExpiryTime(J)V

    return-object v1
.end method

.method public declared-synchronized getAuthToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getExpiryTimestamp()I
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLastInspectTime()I
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLoginPlatform()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/beetalk/sdk/data/AuthToken;->loginPlatform:I

    return v0
.end method

.method public getMainPlatform()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget v0, p0, Lcom/beetalk/sdk/data/AuthToken;->originalPlatform:I

    return v0
.end method

.method public declared-synchronized getOpenId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOriginalPlatform()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/beetalk/sdk/data/AuthToken;->originalPlatform:I

    return v0
.end method

.method public getPrimaryPlatform()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->primaryPlatform:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefreshExpiryTime()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshExpiryTime:J

    return-wide v0
.end method

.method public declared-synchronized getRefreshToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized hasAllFields()Z
    .locals 1

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    .line 219
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRefreshExpiryTimeExpired()Z
    .locals 5

    .line 236
    iget-wide v0, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshExpiryTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshExpiryTime:J

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized setAuthToken(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 131
    :try_start_0
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setExpiryTimestamp(I)V
    .locals 0

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLastInspectTime(I)V
    .locals 0

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLoginPlatform(I)V
    .locals 0

    monitor-enter p0

    .line 169
    :try_start_0
    iput p1, p0, Lcom/beetalk/sdk/data/AuthToken;->loginPlatform:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setOpenId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPrimaryPlatform(Ljava/lang/Integer;)V
    .locals 0

    monitor-enter p0

    .line 198
    :try_start_0
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->primaryPlatform:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setRefreshExpiryTime(J)V
    .locals 0

    monitor-enter p0

    .line 206
    :try_start_0
    iput-wide p1, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshExpiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setRefreshToken(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 2

    monitor-enter p0

    .line 193
    :try_start_0
    const-string v0, "main_active_platform"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->primaryPlatform:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
