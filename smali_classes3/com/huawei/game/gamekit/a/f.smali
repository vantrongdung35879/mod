.class public final Lcom/huawei/game/gamekit/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/game/gamekit/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SystemUploadMessage"

.field private static final b:Ljava/lang/String; = "MessageType"

.field private static final c:I = 0x4e22

.field private static d:Lcom/huawei/game/gamekit/a/f;


# instance fields
.field private e:Lcom/huawei/game/gamekit/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/game/gamekit/a/f$a;

    invoke-direct {v0}, Lcom/huawei/game/gamekit/a/f$a;-><init>()V

    iput-object v0, p0, Lcom/huawei/game/gamekit/a/f;->e:Lcom/huawei/game/gamekit/a/a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/huawei/game/gamekit/a/f;
    .locals 2

    const-class v0, Lcom/huawei/game/gamekit/a/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/a/f;->d:Lcom/huawei/game/gamekit/a/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/a/f;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/a/f;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/a/f;->d:Lcom/huawei/game/gamekit/a/f;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/a/f;->d:Lcom/huawei/game/gamekit/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    const-string v0, "SystemUploadMessage"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "MessageType"

    const/16 v4, 0x4e22

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Lcom/huawei/game/gamekit/a/a$a;

    invoke-direct {v5, v4, v3}, Lcom/huawei/game/gamekit/a/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/huawei/game/gamekit/a/f;->e:Lcom/huawei/game/gamekit/a/a;

    invoke-virtual {v3, p1, v5}, Lcom/huawei/game/gamekit/a/a;->a(Ljava/lang/String;Lcom/huawei/game/gamekit/a/a$a;)Lcom/huawei/game/gamekit/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/huawei/game/gamekit/a/a$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/huawei/game/gamekit/a/a$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const-string/jumbo p1, "translateMessage outJson operation exception"

    :goto_2
    invoke-static {v0, p1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catch_1
    const-string/jumbo p1, "translateMessage JSONObject operation exception"

    goto :goto_2
.end method
