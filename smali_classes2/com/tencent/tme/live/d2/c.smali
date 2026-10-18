.class public abstract Lcom/tencent/tme/live/d2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/d2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/tencent/tme/live/f2/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/e2/i<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/tencent/tme/net/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final threadIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lcom/tencent/tme/live/c2/e;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tencent/tme/live/d2/c<",
            "TS;>.a;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field public wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/e2/i;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/d2/c;->LOG:Lcom/tencent/tme/net/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/d2/c;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->removingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->trafficControllingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->disposalLock:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/tme/live/c2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->disposalFuture:Lcom/tencent/tme/live/c2/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/d2/c;->threadName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tme/live/d2/c;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/c;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tencent/tme/live/d2/c;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/tencent/tme/live/d2/c;Lcom/tencent/tme/live/f2/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->scheduleRemove(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/tencent/tme/live/d2/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/c;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/tencent/tme/live/d2/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/d2/c;->disposing:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/tencent/tme/live/d2/c;)Lcom/tencent/tme/live/c2/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/c;->disposalFuture:Lcom/tencent/tme/live/c2/e;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/tencent/tme/live/d2/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/d2/c;->lastIdleCheckTime:J

    return-wide p1
.end method

.method public static synthetic access$300()Lcom/tencent/tme/net/slf4j/Logger;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/d2/c;->LOG:Lcom/tencent/tme/net/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/tencent/tme/live/d2/c;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->handleNewSessions()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/tencent/tme/live/d2/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->updateTrafficMask()V

    return-void
.end method

.method public static synthetic access$600(Lcom/tencent/tme/live/d2/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->process()V

    return-void
.end method

.method public static synthetic access$700(Lcom/tencent/tme/live/d2/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->flush(J)V

    return-void
.end method

.method public static synthetic access$800(Lcom/tencent/tme/live/d2/c;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->removeSessions()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/tencent/tme/live/d2/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->notifyIdleSessions(J)V

    return-void
.end method

.method private addNow(Lcom/tencent/tme/live/f2/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->init(Lcom/tencent/tme/live/f2/a;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/j;->getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v1

    check-cast v0, Lcom/tencent/tme/live/b2/b;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/b2/b;->a(Lcom/tencent/tme/live/b2/e;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e2/l;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->destroy(Lcom/tencent/tme/live/f2/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    throw p1

    :catch_1
    move-exception p1

    .line 3
    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private clearWriteRequestQueue(Lcom/tencent/tme/live/f2/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/tencent/tme/live/z1/b;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/tme/live/g2/h;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/g2/h;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/g2/d;

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/f2/a;->decreaseScheduledBytesAndMessages(Lcom/tencent/tme/live/g2/d;)V

    invoke-interface {v2}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private fireMessageSent(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/g2/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method private flush(J)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->unscheduledForFlush()V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/d2/c;->getState(Lcom/tencent/tme/live/f2/a;)Lcom/tencent/tme/live/f2/q;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/live/d2/c;->flushNow(Lcom/tencent/tme/live/f2/a;J)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->scheduleFlush(Lcom/tencent/tme/live/f2/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->scheduleRemove(Lcom/tencent/tme/live/f2/a;)V

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->scheduleFlush(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method private flushNow(Lcom/tencent/tme/live/f2/a;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/tencent/tme/live/d2/c;->scheduleRemove(Lcom/tencent/tme/live/f2/a;)V

    return v10

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/tencent/tme/live/f2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-boolean v0, v0, Lcom/tencent/tme/live/e2/d;->d:Z

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v2

    const/4 v12, 0x1

    ushr-int/2addr v2, v12

    add-int v13, v1, v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v8, v9, v10}, Lcom/tencent/tme/live/d2/c;->setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/f2/a;->getCurrentWriteRequest()Lcom/tencent/tme/live/g2/d;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v2, v11

    check-cast v2, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v2, v9}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v9, v1}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move-object v15, v1

    :try_start_1
    invoke-interface {v15}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v6

    instance-of v1, v6, Lcom/tencent/tme/live/z1/b;

    if-eqz v1, :cond_3

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-object v10, v6

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/live/d2/c;->writeBuffer(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    move-object v6, v10

    check-cast v6, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8, v9, v12}, Lcom/tencent/tme/live/d2/c;->setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V

    const/4 v1, 0x0

    return v1

    :cond_3
    move-object v10, v6

    instance-of v1, v10, Lcom/tencent/tme/live/a2/b;

    if-eqz v1, :cond_9

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/live/d2/c;->writeFile(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    move-object v6, v10

    check-cast v6, Lcom/tencent/tme/live/a2/b;

    invoke-interface {v6}, Lcom/tencent/tme/live/a2/b;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    invoke-virtual {v8, v9, v12}, Lcom/tencent/tme/live/d2/c;->setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V

    const/4 v1, 0x0

    return v1

    :cond_4
    if-nez v1, :cond_5

    sget-object v1, Lcom/tencent/tme/live/f2/a;->MESSAGE_SENT_REQUEST:Lcom/tencent/tme/live/g2/d;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8, v9, v12}, Lcom/tencent/tme/live/d2/c;->setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V

    const/4 v1, 0x0

    return v1

    :cond_5
    add-int/2addr v14, v1

    if-lt v14, v13, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/tencent/tme/live/d2/c;->scheduleFlush(Lcom/tencent/tme/live/f2/a;)V

    const/4 v1, 0x0

    return v1

    :cond_6
    instance-of v1, v10, Lcom/tencent/tme/live/z1/b;

    if-eqz v1, :cond_7

    move-object v6, v10

    check-cast v6, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->g()V

    :cond_7
    if-lt v14, v13, :cond_8

    :goto_1
    return v12

    :cond_8
    move-object v1, v15

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle message of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v15

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method private handleNewSessions()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->addNow(Lcom/tencent/tme/live/f2/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    goto :goto_0

    :cond_1
    return v1
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/d2/c;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyIdleSessions(J)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/tme/live/d2/c;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iput-wide p1, p0, Lcom/tencent/tme/live/d2/c;->lastIdleCheckTime:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/c;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/tme/live/f2/a;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private process()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/c;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v1}, Lcom/tencent/tme/live/d2/c;->process(Lcom/tencent/tme/live/f2/a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private process(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->isReadable(Lcom/tencent/tme/live/f2/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->read(Lcom/tencent/tme/live/f2/a;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->isWritable(Lcom/tencent/tme/live/f2/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/f2/a;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private read(Lcom/tencent/tme/live/f2/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-boolean v2, v2, Lcom/tencent/tme/live/e2/d;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/tme/live/d2/c;->read(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/tencent/tme/live/d2/c;->read(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    if-lez v3, :cond_4

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/tencent/tme/live/b2/e;->fireMessageReceived(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    shl-int/lit8 v1, v3, 0x1

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->decreaseReadBufferSize()V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v1

    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->increaseReadBufferSize()V

    :cond_4
    :goto_1
    if-gez v4, :cond_7

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/b2/e;->fireInputClosed()V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_6

    instance-of v2, v1, Ljava/net/PortUnreachableException;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->scheduleRemove(Lcom/tencent/tme/live/f2/a;)V

    :cond_6
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private removeNow(Lcom/tencent/tme/live/f2/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->clearWriteRequestQueue(Lcom/tencent/tme/live/f2/a;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->destroy(Lcom/tencent/tme/live/f2/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->clearWriteRequestQueue(Lcom/tencent/tme/live/f2/a;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e2/l;->b(Lcom/tencent/tme/live/f2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->clearWriteRequestQueue(Lcom/tencent/tme/live/f2/a;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e2/l;->b(Lcom/tencent/tme/live/f2/j;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1

    :goto_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->clearWriteRequestQueue(Lcom/tencent/tme/live/f2/a;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/e2/l;->b(Lcom/tencent/tme/live/f2/j;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
.end method

.method private removeSessions()I
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/d2/c;->getState(Lcom/tencent/tme/live/f2/a;)Lcom/tencent/tme/live/f2/q;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->removeNow(Lcom/tencent/tme/live/f2/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/d2/c;->removeNow(Lcom/tencent/tme/live/f2/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/a;

    goto :goto_0

    :cond_4
    return v1
.end method

.method private scheduleFlush(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/f2/a;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scheduleRemove(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private startupProcessor()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/d2/c$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/d2/c$a;

    .line 1
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/d2/c$a;-><init>(Lcom/tencent/tme/live/d2/c;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/d2/c;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/d2/c;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/tencent/tme/live/j2/h;

    iget-object v3, p0, Lcom/tencent/tme/live/d2/c;->threadName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/tencent/tme/live/j2/h;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/c;->wakeup()V

    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/tencent/tme/live/d2/c;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/c;->getState(Lcom/tencent/tme/live/f2/a;)Lcom/tencent/tme/live/f2/q;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v1, 0x2

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/c;->updateTrafficControl(Lcom/tencent/tme/live/f2/a;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/tencent/tme/live/d2/c;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private writeBuffer(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;ZIJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/g2/d;",
            "ZIJ)I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p4

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/tencent/tme/live/d2/c;->write(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->g()V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->removeNow(Lcom/tencent/tme/live/f2/a;)Z

    return v2

    :cond_1
    :goto_1
    invoke-virtual {p1, v2, p5, p6}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p3, :cond_4

    if-eqz v2, :cond_4

    :cond_2
    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->a()Lcom/tencent/tme/live/g2/d;

    move-result-object p3

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/tencent/tme/live/z1/b;

    if-eqz p3, :cond_3

    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->a()Lcom/tencent/tme/live/g2/d;

    move-result-object p3

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result p4

    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->fireMessageSent(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V

    invoke-virtual {p3, p4}, Lcom/tencent/tme/live/z1/b;->e(I)Lcom/tencent/tme/live/z1/b;

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->fireMessageSent(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V

    :cond_4
    :goto_2
    return v2
.end method

.method private writeFile(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;ZIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/g2/d;",
            "ZIJ)I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/a2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/a2/b;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-interface {v0}, Lcom/tencent/tme/live/a2/b;->a()J

    move-result-wide v1

    if-eqz p3, :cond_0

    int-to-long v5, p4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    long-to-int p4, v1

    invoke-virtual {p0, p1, v0, p4}, Lcom/tencent/tme/live/d2/c;->transferFile(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/a2/b;I)I

    move-result p4

    int-to-long v1, p4

    invoke-interface {v0, v1, v2}, Lcom/tencent/tme/live/a2/b;->a(J)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1, p4, p5, p6}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    invoke-interface {v0}, Lcom/tencent/tme/live/a2/b;->a()J

    move-result-wide p5

    cmp-long v0, p5, v3

    if-lez v0, :cond_2

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->fireMessageSent(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V

    :cond_3
    return p4
.end method


# virtual methods
.method public final add(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->startupProcessor()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already disposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->add(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method public abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract destroy(Lcom/tencent/tme/live/f2/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/tme/live/d2/c;->disposing:Z

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->startupProcessor()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->disposalFuture:Lcom/tencent/tme/live/c2/e;

    invoke-virtual {v0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    iput-boolean v1, p0, Lcom/tencent/tme/live/d2/c;->disposed:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract doDispose()V
.end method

.method public final flush(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/f2/a;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/c;->wakeup()V

    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->flush(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method public abstract getState(Lcom/tencent/tme/live/f2/a;)Lcom/tencent/tme/live/f2/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/tencent/tme/live/f2/q;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/tencent/tme/live/f2/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract isBrokenConnection()Z
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/c;->disposing:Z

    return v0
.end method

.method public abstract isInterestedInRead(Lcom/tencent/tme/live/f2/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isInterestedInWrite(Lcom/tencent/tme/live/f2/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isReadable(Lcom/tencent/tme/live/f2/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isSelectorEmpty()Z
.end method

.method public abstract isWritable(Lcom/tencent/tme/live/f2/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract read(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/z1/b;",
            ")I"
        }
    .end annotation
.end method

.method public abstract registerNewSelector()V
.end method

.method public final remove(Lcom/tencent/tme/live/f2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;->scheduleRemove(Lcom/tencent/tme/live/f2/a;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/c;->startupProcessor()V

    return-void
.end method

.method public bridge synthetic remove(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->remove(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method public abstract select()I
.end method

.method public abstract select(J)I
.end method

.method public abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract setInterestedInRead(Lcom/tencent/tme/live/f2/a;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract transferFile(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/a2/b;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/a2/b;",
            "I)I"
        }
    .end annotation
.end method

.method public updateTrafficControl(Lcom/tencent/tme/live/f2/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isReadSuspended()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/tencent/tme/live/d2/c;->setInterestedInRead(Lcom/tencent/tme/live/f2/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/d2/c;->setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->updateTrafficControl(Lcom/tencent/tme/live/f2/a;)V

    return-void
.end method

.method public final updateTrafficMask(Lcom/tencent/tme/live/f2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/c;->wakeup()V

    return-void
.end method

.method public abstract wakeup()V
.end method

.method public abstract write(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/z1/b;",
            "I)I"
        }
    .end annotation
.end method

.method public write(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/tencent/tme/live/g2/d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/d2/c;->flush(Lcom/tencent/tme/live/f2/a;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/d2/c;->write(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method
