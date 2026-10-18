.class public Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;
.super Ljava/lang/Object;
.source "MSDKSensitive.java"


# static fields
.field private static MSDK_ANDORID_ID_KEY:Ljava/lang/String; = "AndroidID"

.field private static MSDK_APN_KEY:Ljava/lang/String; = "Apn"

.field private static MSDK_IMEI_KEY:Ljava/lang/String; = "Imei"

.field private static collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static couldCollectCache:Z = false

.field private static jsonInfoCache:Ljava/lang/String; = ""

.field private static observerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static paramsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive$1;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive$1;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->MSDK_ANDORID_ID_KEY:Ljava/lang/String;

    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->MSDK_IMEI_KEY:Ljava/lang/String;

    sget-object v3, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->MSDK_APN_KEY:Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RegistSensitiveObserver(Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCollectSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infoType"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync getCollectSensitiveInfo json parsing failed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 98
    const-string/jumbo p0, "{}"

    return-object p0

    .line 102
    :cond_2
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    return-object v1

    .line 106
    :cond_3
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_4

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static getCouldCollectSensitiveInfo()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->couldCollectCache:Z

    return v0
.end method

.method public static getSensitiveInfo()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->jsonInfoCache:Ljava/lang/String;

    return-object v0
.end method

.method public static setCollectSensitiveInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonInfo"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 47
    :goto_0
    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 48
    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 51
    :try_start_1
    sget-object v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->collectSensitiveCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 53
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error when parsing with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find key in json object for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->paramsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set collect sensitive info JSON parse failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Current setting:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setCouldCollectSensitiveInfo(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "couldCollect"
        }
    .end annotation

    .line 32
    sput-boolean p0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->couldCollectCache:Z

    .line 33
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;

    .line 35
    invoke-interface {v2, p0}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;->setCouldCollectSensitiveInfo(Z)V

    goto :goto_0

    .line 37
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setSensitiveInfo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonInfo"
        }
    .end annotation

    .line 69
    sput-object p0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->jsonInfoCache:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitive;->observerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;

    .line 72
    invoke-interface {v2, p0}, Lcom/tencent/gcloud/msdk/api/sensitive/MSDKSensitiveInterface;->setSensitiveInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
