.class public final Lcom/tencent/qimei/ai/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/tencent/qimei/ai/h;


# instance fields
.field public final a:Lcom/tencent/qimei/ai/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/ai/f;

    invoke-direct {v0}, Lcom/tencent/qimei/ai/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ai/h;->a:Lcom/tencent/qimei/ai/f;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/qimei/ai/h;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ai/h;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ai/h;->b:Lcom/tencent/qimei/ai/h;

    if-nez v1, :cond_1

    .line 41
    const-class v1, Lcom/tencent/qimei/ai/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    sget-object v2, Lcom/tencent/qimei/ai/h;->b:Lcom/tencent/qimei/ai/h;

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Lcom/tencent/qimei/ai/h;

    invoke-direct {v2}, Lcom/tencent/qimei/ai/h;-><init>()V

    sput-object v2, Lcom/tencent/qimei/ai/h;->b:Lcom/tencent/qimei/ai/h;

    .line 45
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 47
    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/qimei/ai/h;->b:Lcom/tencent/qimei/ai/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static a(Lcom/tencent/qimei/ai/h;Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p0, p1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    .line 5
    invoke-static {}, Lcom/tencent/qimei/uin/U;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 6
    invoke-static {p3}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/tencent/qimei/ag/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/tencent/qimei/ag/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 12
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_0
    const-string v4, "1"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v4, "2"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v0, "5"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p0

    .line 26
    :goto_3
    sget-object p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->APM:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {p0}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result p0

    invoke-static {p3, v1, v0, p0}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 27
    iget-object p1, p1, Lcom/tencent/qimei/ai/e;->b:Lcom/tencent/qimei/ao/e;

    .line 28
    new-instance v0, Lcom/tencent/qimei/y/d;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/tencent/qimei/y/d;->b()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_4

    .line 30
    sget-object p0, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/tencent/qimei/ac/e;->a(J)V

    .line 31
    iget-object p0, p1, Lcom/tencent/qimei/ao/e;->a:Lcom/tencent/qimei/ao/h;

    .line 32
    iget-object p0, p0, Lcom/tencent/qimei/ao/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "SpreadQM"

    const-string p2, "spread data upload success."

    invoke-static {p1, p2, p0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    const/4 p0, 0x2

    .line 35
    new-array p0, p0, [Ljava/lang/Object;

    aput-object p3, p0, v0

    const/4 p3, 0x1

    aput-object p2, p0, p3

    const-string p2, "IsolateRequest"

    const-string v1, "(appKey: %s) Report failed. type = %s"

    invoke-static {p2, v1, p0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 36
    sget-object p0, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    invoke-virtual {p0, p3}, Lcom/tencent/qimei/ac/e;->a(Z)V

    .line 37
    iget-object p0, p1, Lcom/tencent/qimei/ao/e;->a:Lcom/tencent/qimei/ao/h;

    .line 38
    iget-object p0, p0, Lcom/tencent/qimei/ao/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 48
    invoke-static {p3}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 50
    sget-object v1, Lcom/tencent/qimei/au/a;->k:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/ai/h;->a:Lcom/tencent/qimei/ai/f;

    .line 56
    iget-object v1, p1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    .line 57
    iget-object v2, v0, Lcom/tencent/qimei/ai/f;->a:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 58
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v2, v0, Lcom/tencent/qimei/ai/f;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    iget-object v3, v0, Lcom/tencent/qimei/ai/f;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_4
    monitor-exit v0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 70
    :cond_5
    new-instance v0, Lcom/tencent/qimei/ai/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/qimei/ai/g;-><init>(Lcom/tencent/qimei/ai/h;Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0

    throw p1
.end method
