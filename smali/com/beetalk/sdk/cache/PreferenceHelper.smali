.class public Lcom/beetalk/sdk/cache/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "com.garena.msdk.common_cache"

.field private static volatile mInstance:Lcom/beetalk/sdk/cache/PreferenceHelper;


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "com.garena.msdk.common_cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;
    .locals 2

    .line 16
    sget-object v0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mInstance:Lcom/beetalk/sdk/cache/PreferenceHelper;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/beetalk/sdk/cache/PreferenceHelper;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/cache/PreferenceHelper;->mInstance:Lcom/beetalk/sdk/cache/PreferenceHelper;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/beetalk/sdk/cache/PreferenceHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/cache/PreferenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/beetalk/sdk/cache/PreferenceHelper;->mInstance:Lcom/beetalk/sdk/cache/PreferenceHelper;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 23
    :cond_1
    :goto_0
    sget-object p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mInstance:Lcom/beetalk/sdk/cache/PreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putBooleanSync(Ljava/lang/String;Z)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putFloatSync(Ljava/lang/String;F)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putIntSync(Ljava/lang/String;I)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putLongSync(Ljava/lang/String;J)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putStringSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
