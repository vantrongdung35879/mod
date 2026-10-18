.class public Lcom/beetalk/sdk/cache/SharedPrefStorage;
.super Lcom/beetalk/sdk/cache/StorageCache;
.source "SharedPrefStorage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final APP_PLATFORM_BIND_CACHE_KEY:Ljava/lang/String; = "com.garena.msdk.app_platform_bind_token"

.field private static final BIND_CACHE_KEY:Ljava/lang/String; = "com.garena.msdk.bind_token"

.field private static final DEFAULT_KEY:Ljava/lang/String; = "com.garena.msdk.token_cache"

.field private static final SWAP_ACCOUNT_CACHE_KEY:Ljava/lang/String; = "com.garena.msdk.account_security_verifier_token"


# instance fields
.field private final cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cacheKey:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    const-string p2, "com.garena.msdk.token_cache"

    iput-object p2, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cacheKey:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object p1, p2

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cacheKey:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static create()Lcom/beetalk/sdk/cache/SharedPrefStorage;
    .locals 2

    .line 47
    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createForGuestBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;
    .locals 3

    .line 52
    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.garena.msdk.bind_token"

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createForPlatformBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;
    .locals 3

    .line 57
    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.garena.msdk.app_platform_bind_token"

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createForSwap()Lcom/beetalk/sdk/cache/SharedPrefStorage;
    .locals 3

    .line 62
    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.garena.msdk.account_security_verifier_token"

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 90
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 92
    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public load()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public save(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/beetalk/sdk/cache/SharedPrefStorage;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
