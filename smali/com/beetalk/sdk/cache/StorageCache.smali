.class public abstract Lcom/beetalk/sdk/cache/StorageCache;
.super Ljava/lang/Object;
.source "StorageCache.java"


# static fields
.field public static final GUEST_PASSWORD_KEY:Ljava/lang/String; = "com.garena.msdk.guest_password"

.field public static final GUEST_PASSWORD_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_password_sandbox"

.field public static final GUEST_TOKEN_KEY:Ljava/lang/String; = "com.garena.msdk.guest_token"

.field public static final GUEST_TOKEN_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_token_sandbox"

.field public static final GUEST_UID_KEY:Ljava/lang/String; = "com.garena.msdk.guest_uid"

.field public static final GUEST_UID_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_uid_sandbox"

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.garena.msdk.token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getGuestTokenKey()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    .line 107
    const-string v0, "com.garena.msdk.guest_token_sandbox"

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    .line 109
    const-string v0, "com.garena.msdk.guest_token"

    return-object v0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public clearSession()V
    .locals 1

    .line 75
    const-string v0, "com.garena.msdk.token"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    .line 76
    const-string v0, "com.garena.msdk.guest_token"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    .line 77
    const-string v0, "com.garena.msdk.guest_token_sandbox"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGuestInfo()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGuestPassword()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGuestPasswordKey()Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    .line 127
    const-string v0, "com.garena.msdk.guest_password_sandbox"

    return-object v0

    .line 128
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    .line 129
    const-string v0, "com.garena.msdk.guest_password"

    return-object v0
.end method

.method public getGuestToken()Lcom/beetalk/sdk/data/AuthToken;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/data/AuthToken;->fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 142
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setLoginPlatform(I)V

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setPrimaryPlatform(Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public getGuestUID()Ljava/lang/String;
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGuestUidKey()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    .line 117
    const-string v0, "com.garena.msdk.guest_uid_sandbox"

    return-object v0

    .line 118
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    .line 119
    const-string v0, "com.garena.msdk.guest_uid"

    return-object v0
.end method

.method public getToken()Lcom/beetalk/sdk/data/AuthToken;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    .line 89
    const-string v1, "com.garena.msdk.token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/data/AuthToken;->fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public abstract load()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    return-void
.end method

.method public putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/beetalk/sdk/data/AuthToken;->toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    return-void
.end method

.method public putToken(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 2

    .line 96
    const-string v0, "com.garena.msdk.token"

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/beetalk/sdk/data/AuthToken;->toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public removeGuestToken()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public abstract save(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
