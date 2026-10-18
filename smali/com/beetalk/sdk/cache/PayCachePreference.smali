.class public Lcom/beetalk/sdk/cache/PayCachePreference;
.super Ljava/lang/Object;
.source "PayCachePreference.java"


# static fields
.field private static volatile INSTANCE:Lcom/beetalk/sdk/cache/PayCachePreference; = null

.field private static final KEY_COMMIT_CACHE:Ljava/lang/String; = "COMMIT_CACHE"

.field private static final KEY_TIME_CREATED:Ljava/lang/String; = "TIME_CREATED"

.field private static final KEY_TRANSACTION_INFO_PREFIX:Ljava/lang/String; = "TRANSACTION_INFO_"

.field private static final PREF_NAME:Ljava/lang/String; = "com.garena.android.msdk.PayCachePreference"


# instance fields
.field private cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private timeCreated:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "com.garena.android.msdk.PayCachePreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static cache(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "9999"

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.test.purchased"

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->clearCacheIfExpired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->updateTimeCreated(Landroid/content/Context;)V

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getCache(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 84
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {p0, v0}, Lcom/beetalk/sdk/cache/PayCachePreference;->saveCache(Landroid/content/Context;Ljava/util/Set;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static clearCacheIfExpired(Landroid/content/Context;)Z
    .locals 4

    .line 135
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->isExpired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated:J

    .line 137
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    .line 138
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iget-object p0, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 139
    const-string v0, "COMMIT_CACHE"

    const-string v3, "[]"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v0, "TIME_CREATED"

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCache(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-object v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-object v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iget-object p0, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    return-object p0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-object v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 117
    const-string v1, "COMMIT_CACHE"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    .line 124
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 126
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 127
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iput-object v0, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance()Lcom/beetalk/sdk/cache/PayCachePreference;
    .locals 1

    .line 50
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;
    .locals 2

    .line 54
    sget-object v0, Lcom/beetalk/sdk/cache/PayCachePreference;->INSTANCE:Lcom/beetalk/sdk/cache/PayCachePreference;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/beetalk/sdk/cache/PayCachePreference;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/cache/PayCachePreference;->INSTANCE:Lcom/beetalk/sdk/cache/PayCachePreference;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/beetalk/sdk/cache/PayCachePreference;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/cache/PayCachePreference;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/beetalk/sdk/cache/PayCachePreference;->INSTANCE:Lcom/beetalk/sdk/cache/PayCachePreference;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/beetalk/sdk/cache/PayCachePreference;->INSTANCE:Lcom/beetalk/sdk/cache/PayCachePreference;

    return-object p0
.end method

.method public static getTransactionInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/garena/pay/android/data/UserTransactionInfo;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRANSACTION_INFO_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance()Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-object v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "{}"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :try_start_0
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/garena/pay/android/data/UserTransactionInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/data/UserTransactionInfo;

    .line 186
    iget-object v0, p1, Lcom/garena/pay/android/data/UserTransactionInfo;->accountId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/garena/pay/android/data/UserTransactionInfo;->isValid()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p1

    :catch_0
    move-exception p0

    .line 190
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 192
    :cond_0
    new-instance p0, Lcom/garena/pay/android/data/UserTransactionInfo;

    invoke-direct {p0}, Lcom/garena/pay/android/data/UserTransactionInfo;-><init>()V

    return-object p0
.end method

.method public static hit(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->clearCacheIfExpired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getCache(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 97
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isExpired(Landroid/content/Context;)Z
    .locals 4

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getCommitRequestCacheDurationMs()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static saveCache(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-object v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 106
    :cond_0
    const-string v2, "COMMIT_CACHE"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iput-object p1, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->cache:Ljava/util/Set;

    return-void
.end method

.method public static saveTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/garena/pay/android/Product;)V
    .locals 7

    .line 169
    invoke-virtual {p2}, Lcom/garena/pay/android/Product;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {p2}, Lcom/garena/pay/android/Product;->getPriceAmountMicros()J

    move-result-wide v4

    .line 171
    invoke-virtual {p2}, Lcom/garena/pay/android/Product;->getProductId()Ljava/lang/String;

    move-result-object p2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRANSACTION_INFO_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    new-instance v6, Lcom/garena/pay/android/data/UserTransactionInfo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/garena/pay/android/data/UserTransactionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6}, Lcom/garena/pay/android/data/UserTransactionInfo;->toJson()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance()Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p1

    iget-object p1, p1, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 177
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static timeCreated(Landroid/content/Context;)J
    .locals 5

    .line 160
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    iget-wide v0, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v0

    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v1

    iget-object v1, v1, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "TIME_CREATED"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated:J

    .line 165
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iget-wide v0, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated:J

    return-wide v0
.end method

.method private static updateTimeCreated(Landroid/content/Context;)V
    .locals 4

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v2

    iget-object v2, v2, Lcom/beetalk/sdk/cache/PayCachePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 154
    const-string v3, "TIME_CREATED"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    iput-wide v0, p0, Lcom/beetalk/sdk/cache/PayCachePreference;->timeCreated:J

    return-void
.end method
