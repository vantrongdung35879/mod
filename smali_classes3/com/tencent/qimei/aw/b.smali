.class public final Lcom/tencent/qimei/aw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/aw/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/aw/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-object p1, p0, Lcom/tencent/qimei/aw/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/aw/b;
    .locals 3

    const-class v0, Lcom/tencent/qimei/aw/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/aw/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/aw/b;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/aw/b;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/aw/b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 5
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_NET_WORK_TYPE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v2}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/qimei/v/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public final b()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_Q16:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v2}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_Q36:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v2}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->a:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 14
    sget-object v1, Lcom/tencent/qimei/au/a;->m:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v0, "0"

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_PRE_AUDIT_STATE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v2}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 20
    new-instance v0, Lcom/tencent/qimei/ar/a;

    iget-object v2, p0, Lcom/tencent/qimei/aw/b;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v2}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_SDK_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.1.3.157"

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_APP_KEY:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/qimei/aw/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_NET_WORK_TYPE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/qimei/v/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_APP_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    sget-object v5, Lcom/tencent/qimei/v/a;->c:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 28
    invoke-static {}, Lcom/tencent/qimei/v/a;->f()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tencent/qimei/v/a;->c:Ljava/lang/String;

    .line 30
    :cond_4
    sget-object v5, Lcom/tencent/qimei/v/a;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_CHANNEL_ID:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_USER_ID_PARAM:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_OS_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v3}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/qimei/v/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_MODEL:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v1}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/qimei/ag/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/tencent/qimei/aw/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1

    .line 38
    :cond_5
    :goto_2
    sget-object v0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->MAX_TYPE_SIZE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v0}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->a()I

    move-result v0

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/tencent/qimei/aw/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v0, :cond_6

    goto :goto_3

    .line 46
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    goto :goto_3

    :cond_7
    return-object v1
.end method
