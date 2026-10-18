.class public Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;
.super Ljava/lang/Object;
.source "TaskCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$TaskLocalManagerInstance;
    }
.end annotation


# instance fields
.field cacheAvailable:Z

.field expiredTime:J

.field mContextSp:Landroid/content/SharedPreferences;

.field mSpEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    const-wide/32 v0, 0x3f480

    .line 30
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->expiredTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$TaskLocalManagerInstance;->access$100()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTaskCache(Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;)V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p2, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->taskType:Ljava/lang/String;

    const-string v1, "1"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    .line 53
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->generateJsonString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public delTask(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public getAllTask()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;",
            ">;"
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 86
    invoke-virtual {p0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->delTask(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    :try_start_0
    new-instance v6, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;

    invoke-direct {v6}, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;-><init>()V

    .line 91
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->parseJson(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v7, v6, Lcom/ihoc/tgpatask/transceivertool/json/TaskConfigSub;->releaseTime:J

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->expiredTime:J

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    add-long/2addr v7, v9

    cmp-long v5, v7, v0

    if-lez v5, :cond_2

    .line 94
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->delTask(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getTaskCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    .line 36
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getTaskStorageTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->expiredTime:J

    .line 39
    :cond_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->cacheAvailable:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enqTaskList"

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mContextSp:Landroid/content/SharedPreferences;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->mSpEditor:Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method
