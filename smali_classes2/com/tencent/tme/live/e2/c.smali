.class public abstract Lcom/tencent/tme/live/e2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e2/c$c;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final createdExecutor:Z

.field public final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private filterChainBuilder:Lcom/tencent/tme/live/b2/f;

.field private handler:Lcom/tencent/tme/live/e2/g;

.field private final listeners:Lcom/tencent/tme/live/e2/l;

.field private final serviceActivationListener:Lcom/tencent/tme/live/e2/k;

.field public final sessionConfig:Lcom/tencent/tme/live/f2/l;

.field private sessionDataStructureFactory:Lcom/tencent/tme/live/f2/m;

.field private stats:Lcom/tencent/tme/live/e2/m;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/e2/c;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/e2/c;->LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/e2/c;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/e2/c$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e2/c$a;-><init>(Lcom/tencent/tme/live/e2/c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e2/c;->serviceActivationListener:Lcom/tencent/tme/live/e2/k;

    new-instance v1, Lcom/tencent/tme/live/b2/b;

    invoke-direct {v1}, Lcom/tencent/tme/live/b2/b;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/e2/c;->filterChainBuilder:Lcom/tencent/tme/live/b2/f;

    new-instance v1, Lcom/tencent/tme/live/f2/d;

    invoke-direct {v1}, Lcom/tencent/tme/live/f2/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/e2/c;->sessionDataStructureFactory:Lcom/tencent/tme/live/f2/m;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/e2/c;->disposalLock:Ljava/lang/Object;

    new-instance v1, Lcom/tencent/tme/live/e2/m;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e2/m;-><init>(Lcom/tencent/tme/live/e2/c;)V

    iput-object v1, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/d;

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/tencent/tme/live/e2/l;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e2/l;-><init>(Lcom/tencent/tme/live/e2/j;)V

    iput-object v1, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/e2/l;->a(Lcom/tencent/tme/live/e2/k;)V

    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    sget-object p1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/tencent/tme/live/e2/c;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/tme/live/e2/c;->createdExecutor:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/tencent/tme/live/e2/c;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->threadName:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionConfig type: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/e2/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/d;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TransportMetadata"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionConfig"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addListener(Lcom/tencent/tme/live/e2/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Lcom/tencent/tme/live/c2/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    instance-of v2, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/f2/j;

    move-object v3, p1

    check-cast v3, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->e()Lcom/tencent/tme/live/z1/b;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/tme/live/f2/j;->write(Ljava/lang/Object;)Lcom/tencent/tme/live/c2/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/f2/j;

    invoke-interface {v2, p1}, Lcom/tencent/tme/live/f2/j;->write(Ljava/lang/Object;)Lcom/tencent/tme/live/c2/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Lcom/tencent/tme/live/e2/c$b;

    invoke-direct {p1, p0, v1}, Lcom/tencent/tme/live/e2/c$b;-><init>(Lcom/tencent/tme/live/e2/c;Ljava/util/List;)V

    return-object p1
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e2/c;->dispose(Z)V

    return-void
.end method

.method public final dispose(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/tme/live/e2/c;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/e2/c;->disposing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/tencent/tme/live/e2/c;->disposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->dispose0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1
    :try_start_2
    sget-object v3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v3, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/tencent/tme/live/e2/c;->createdExecutor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    if-eqz p1, :cond_2

    :try_start_3
    sget-object p1, Lcom/tencent/tme/live/e2/c;->LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

    const-string v1, "awaitTermination on {} called by thread=[{}]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, p0, v3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x7fffffff

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "awaitTermination on {} finished"

    invoke-interface {p1, v0, p0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lcom/tencent/tme/live/e2/c;->LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

    const-string v0, "awaitTermination on [{}] was interrupted"

    invoke-interface {p1, v0, p0}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/tencent/tme/live/e2/c;->disposed:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public abstract dispose0()V
.end method

.method public final executeWorker(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->threadName:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/live/e2/c;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/tme/live/j2/h;

    invoke-direct {v1, p1, v0}, Lcom/tencent/tme/live/j2/h;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSessionInitialization0(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V
    .locals 0

    return-void
.end method

.method public final getActivationTime()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    .line 1
    iget-wide v0, v0, Lcom/tencent/tme/live/e2/l;->f:J

    return-wide v0
.end method

.method public final getFilterChain()Lcom/tencent/tme/live/b2/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->filterChainBuilder:Lcom/tencent/tme/live/b2/f;

    instance-of v1, v0, Lcom/tencent/tme/live/b2/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/b2/b;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current filter chain builder is not a DefaultIoFilterChainBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->filterChainBuilder:Lcom/tencent/tme/live/b2/f;

    return-object v0
.end method

.method public final getHandler()Lcom/tencent/tme/live/e2/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->handler:Lcom/tencent/tme/live/e2/g;

    return-object v0
.end method

.method public final getListeners()Lcom/tencent/tme/live/e2/l;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    return-object v0
.end method

.method public final getManagedSessionCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public final getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/tencent/tme/live/f2/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getScheduledWriteBytes()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/e2/m;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getScheduledWriteMessages()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/e2/m;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final getSessionDataStructureFactory()Lcom/tencent/tme/live/f2/m;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionDataStructureFactory:Lcom/tencent/tme/live/f2/m;

    return-object v0
.end method

.method public getStatistics()Lcom/tencent/tme/live/e2/m;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    return-object v0
.end method

.method public final initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, v0, Lcom/tencent/tme/live/e2/m;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getActivationTime()J

    move-result-wide v1

    .line 3
    iget-object v5, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    .line 5
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-wide v1, v0, Lcom/tencent/tme/live/e2/m;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->stats:Lcom/tencent/tme/live/e2/m;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getActivationTime()J

    move-result-wide v1

    .line 7
    iget-object v3, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_3
    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 8
    :cond_1
    :goto_1
    :try_start_4
    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/e2/j;->getSessionDataStructureFactory()Lcom/tencent/tme/live/f2/m;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v1, Lcom/tencent/tme/live/f2/d$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/f2/d$a;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/f2/a;->setAttributeMap(Lcom/tencent/tme/live/f2/k;)V
    :try_end_4
    .catch Lcom/tencent/tme/live/f2/n; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/e2/j;->getSessionDataStructureFactory()Lcom/tencent/tme/live/f2/m;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v1, Lcom/tencent/tme/live/f2/d$b;

    invoke-direct {v1}, Lcom/tencent/tme/live/f2/d$b;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/f2/a;->setWriteRequestQueue(Lcom/tencent/tme/live/g2/e;)V
    :try_end_5
    .catch Lcom/tencent/tme/live/f2/n; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/tencent/tme/live/c2/b;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/tme/live/b2/a;->SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0, p2}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, p1, p2}, Lcom/tencent/tme/live/f2/o;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/e2/c;->finishSessionInitialization0(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/tencent/tme/live/f2/n;

    const-string p3, "Failed to initialize a writeRequestQueue."

    invoke-direct {p2, p3, p1}, Lcom/tencent/tme/live/f2/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/tencent/tme/live/f2/n;

    const-string p3, "Failed to initialize an attributeMap."

    invoke-direct {p2, p3, p1}, Lcom/tencent/tme/live/f2/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    throw p1

    :catchall_2
    move-exception p1

    .line 13
    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_3
    move-exception p1

    .line 14
    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/e2/c;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/e2/c;->disposing:Z

    return v0
.end method

.method public final removeListener(Lcom/tencent/tme/live/e2/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->listeners:Lcom/tencent/tme/live/e2/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setFilterChainBuilder(Lcom/tencent/tme/live/b2/f;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/tme/live/b2/b;

    invoke-direct {p1}, Lcom/tencent/tme/live/b2/b;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->filterChainBuilder:Lcom/tencent/tme/live/b2/f;

    return-void
.end method

.method public final setHandler(Lcom/tencent/tme/live/e2/g;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->handler:Lcom/tencent/tme/live/e2/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler cannot be set while the service is active."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "handler cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSessionDataStructureFactory(Lcom/tencent/tme/live/f2/m;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/e2/c;->sessionDataStructureFactory:Lcom/tencent/tme/live/f2/m;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sessionDataStructureFactory cannot be set while the service is active."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionDataStructureFactory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
