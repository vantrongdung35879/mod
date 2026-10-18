.class public Lcom/tencent/tme/live/e2/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e2/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/e2/j;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/e2/k;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/tencent/tme/live/f2/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/tencent/tme/live/f2/j;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile f:J

.field public volatile g:I

.field public h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e2/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e2/l;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e2/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/e2/l;->g:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/tme/live/e2/l;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/tencent/tme/live/e2/l;->a:Lcom/tencent/tme/live/e2/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->a:Lcom/tencent/tme/live/e2/j;

    instance-of v1, v0, Lcom/tencent/tme/live/e2/e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/tencent/tme/live/e2/e;

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/e;->isCloseOnDeactivation()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/tencent/tme/live/e2/l$a;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/e2/l$a;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/f2/j;

    invoke-interface {v3}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/tencent/tme/live/c2/a;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;

    goto :goto_0

    :cond_2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public a(Lcom/tencent/tme/live/e2/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 4

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/l;->b()V

    :cond_2
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionCreated()V

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionOpened()V

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/tme/live/e2/l;->g:I

    if-le v0, v1, :cond_3

    iput v0, p0, Lcom/tencent/tme/live/e2/l;->g:I

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/k;

    :try_start_1
    invoke-interface {v1, p1}, Lcom/tencent/tme/live/e2/k;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/e2/l;->f:J

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/k;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/e2/l;->a:Lcom/tencent/tme/live/e2/j;

    invoke-interface {v1, v2}, Lcom/tencent/tme/live/e2/k;->b(Lcom/tencent/tme/live/e2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/tencent/tme/live/f2/j;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionClosed()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1, p1}, Lcom/tencent/tme/live/e2/k;->b(Lcom/tencent/tme/live/f2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_2
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/tme/live/e2/f;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/l;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/tme/live/e2/f;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p1

    :try_start_5
    iget-object v1, p0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/l;->c()V

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_3
    :goto_2
    throw v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/tencent/tme/live/e2/l;->a:Lcom/tencent/tme/live/e2/j;

    invoke-interface {v1, v2}, Lcom/tencent/tme/live/e2/k;->a(Lcom/tencent/tme/live/e2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1
    :try_start_2
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/l;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/l;->a()V

    throw v0
.end method
