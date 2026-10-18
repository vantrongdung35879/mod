.class public final Lcom/tencent/qimei/ao/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/tencent/qimei/t/d;

.field public final e:Lcom/tencent/qimei/sdk/S/DataFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ad/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/ao/j;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/ao/c;

    invoke-direct {v0}, Lcom/tencent/qimei/ao/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qimei/ao/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    .line 3
    iget-object v1, p0, Lcom/tencent/qimei/ao/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qimei/ao/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "SpreadQM"

    const-string v1, "%s%s load current cache size: %s"

    invoke-static {v0, v1, v3}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 16
    invoke-virtual {v5, p2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 17
    invoke-virtual {v5, p3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 19
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v2, p2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v2, p3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 31
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v4

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "SpreadQM"

    const-string/jumbo p2, "update data,from:appKey:%s  source:%s  updateResult:%b"

    invoke-static {p1, p2, v3}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 35
    iget-object p1, p0, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a(Ljava/util/HashMap;)V

    .line 37
    sget-object p1, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    invoke-virtual {p1, v4}, Lcom/tencent/qimei/ac/e;->a(Z)V

    .line 40
    new-instance p1, Lcom/tencent/qimei/ao/c;

    invoke-direct {p1}, Lcom/tencent/qimei/ao/c;-><init>()V

    iget-object p2, p0, Lcom/tencent/qimei/ao/j;->e:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/ao/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
