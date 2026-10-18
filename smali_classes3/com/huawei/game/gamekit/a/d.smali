.class public final Lcom/huawei/game/gamekit/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/game/gamekit/a/d$f;,
        Lcom/huawei/game/gamekit/a/d$b;,
        Lcom/huawei/game/gamekit/a/d$d;,
        Lcom/huawei/game/gamekit/a/d$c;,
        Lcom/huawei/game/gamekit/a/d$e;,
        Lcom/huawei/game/gamekit/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GameDeliverMessage"

.field private static final b:I = -0x1

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x5

.field private static final i:Ljava/lang/String; = "default"

.field private static j:Lcom/huawei/game/gamekit/a/d;


# instance fields
.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/game/gamekit/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$a;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$e;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$c;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$d;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$f;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/huawei/game/gamekit/a/d$b;

    invoke-direct {v2}, Lcom/huawei/game/gamekit/a/d$b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "MessageType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GameDeliverMessage"

    const-string v0, "getMessageType illegal MessageType"

    invoke-static {p0, v0}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static declared-synchronized a()Lcom/huawei/game/gamekit/a/d;
    .locals 2

    const-class v0, Lcom/huawei/game/gamekit/a/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/a/d;->j:Lcom/huawei/game/gamekit/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/a/d;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/a/d;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/a/d;->j:Lcom/huawei/game/gamekit/a/d;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/a/d;->j:Lcom/huawei/game/gamekit/a/d;
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
    .locals 7

    .line 3
    const-string v0, "GameDeliverMessage"

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

    invoke-static {v1}, Lcom/huawei/game/gamekit/a/d;->a(Ljava/util/Map;)I

    move-result v3

    iget-object v4, p0, Lcom/huawei/game/gamekit/a/d;->k:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/game/gamekit/a/a;

    if-nez v3, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lcom/huawei/game/gamekit/a/a$a;

    invoke-direct {v6, v5, v4}, Lcom/huawei/game/gamekit/a/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v6}, Lcom/huawei/game/gamekit/a/a;->a(Ljava/lang/String;Lcom/huawei/game/gamekit/a/a$a;)Lcom/huawei/game/gamekit/a/a$a;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/huawei/game/gamekit/a/a$a;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/huawei/game/gamekit/a/a$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
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
