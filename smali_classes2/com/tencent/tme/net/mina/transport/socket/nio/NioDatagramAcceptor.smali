.class public final Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;
.super Lcom/tencent/tme/live/e2/a;

# interfaces
.implements Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;
.implements Lcom/tencent/tme/live/e2/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/e2/a;",
        "Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;",
        "Lcom/tencent/tme/live/e2/i<",
        "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lcom/tencent/tme/live/f2/p;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/e2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lcom/tencent/tme/live/e2/c$c;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/e2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private volatile selector:Ljava/nio/channels/Selector;

.field private sessionRecycler:Lcom/tencent/tme/live/f2/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/f2/e;

    const/16 v1, 0x3c

    .line 1
    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f2/e;-><init>(I)V

    .line 2
    sput-object v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lcom/tencent/tme/live/f2/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/e2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    sget-object p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lcom/tencent/tme/live/f2/p;

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lcom/tencent/tme/live/f2/p;

    new-instance p1, Lcom/tencent/tme/live/e2/c$c;

    invoke-direct {p1}, Lcom/tencent/tme/live/e2/c$c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->init()V

    iput-boolean p2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/tencent/tme/live/j2/c;->a()Lcom/tencent/tme/live/j2/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/tencent/tme/live/y1/a;

    const-string v0, "Failed to initialize."

    invoke-direct {p2, v0, p1}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean p2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    invoke-static {}, Lcom/tencent/tme/live/j2/c;->a()Lcom/tencent/tme/live/j2/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Lcom/tencent/tme/live/e2/c$c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerHandles()I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flushSessions(J)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->unregisterHandles()I

    move-result p0

    return p0
.end method

.method private flush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;J)Z
    .locals 9

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v2

    const/4 v3, 0x1

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getCurrentWriteRequest()Lcom/tencent/tme/live/g2/d;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v0

    check-cast v5, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v5, p1}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v4, p2, p3}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {p1, v5}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    :cond_1
    invoke-interface {v5}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-virtual {p1, v8}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    :goto_1
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Lcom/tencent/tme/live/g2/d;->d()Ljava/net/SocketAddress;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;Ljava/net/SocketAddress;)I

    move-result v7

    if-eqz v7, :cond_5

    if-lt v4, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V

    invoke-virtual {p1, v8}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    add-int/2addr v4, v7

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    goto :goto_1

    :goto_2
    invoke-interface {v6, v5}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v4, p2, p3}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    return v2

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4, p2, p3}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    throw v0
.end method

.method private flushSessions(J)V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->unscheduledForFlush()V

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lcom/tencent/tme/live/f2/p;

    monitor-enter v1

    :try_start_0
    iget-object p2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lcom/tencent/tme/live/f2/p;

    check-cast p2, Lcom/tencent/tme/live/f2/e;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/j2/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/f2/j;

    if-eqz p2, :cond_0

    .line 2
    monitor-exit v1

    return-object p2

    :cond_0
    invoke-virtual {p0, p0, v0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->newSession(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lcom/tencent/tme/live/f2/p;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/f2/e;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/f2/e;->a(Lcom/tencent/tme/live/f2/j;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;

    move-result-object p2

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    check-cast p2, Lcom/tencent/tme/live/b2/b;

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/b2/b;->a(Lcom/tencent/tme/live/b2/e;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/e2/l;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown local address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyIdleSessions(J)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iput-wide p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/l;->d:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/tme/live/f2/a;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->readHandle(Ljava/nio/channels/DatagramChannel;)V

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/f2/j;

    check-cast v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-direct {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readHandle(Ljava/nio/channels/DatagramChannel;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->receive(Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/z1/b;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireMessageReceived(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/a$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/e2/a$a;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    invoke-virtual {p0, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tme/live/e2/l;->b()V

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 5
    sget-object v3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 6
    invoke-virtual {v3, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_4
    return v2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 7
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 9
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 10
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    goto/16 :goto_0

    :goto_4
    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 11
    sget-object v3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 12
    invoke-virtual {v3, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_7
    throw v2
.end method

.method private scheduleFlush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/f2/a;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startupAcceptor()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$1;)V

    iput-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void
.end method

.method private unregisterHandles()I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/e2/a$a;

    if-nez v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v2, v1, Lcom/tencent/tme/live/e2/a$a;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    iget-object v4, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 4
    throw v0

    :catch_0
    move-exception v3

    .line 3
    sget-object v4, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v4, v3}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->add(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public add(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 0

    return-void
.end method

.method public final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/live/e2/a$a;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/e2/a$a;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method public close(Ljava/nio/channels/DatagramChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method public dispose0()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/a;->unbind()V

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    return-void
.end method

.method public bridge synthetic flush(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public flush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public final getSessionRecycler()Lcom/tencent/tme/live/f2/p;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lcom/tencent/tme/live/f2/p;

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public isReadable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isWritable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;
    .locals 5

    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/a;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/tencent/tme/live/y1/a;

    const-string v1, "Failed to create a session."

    invoke-direct {p2, v1, p1}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create a session from a unbound service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The Acceptor is being disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSession(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;-><init>(Lcom/tencent/tme/live/e2/j;Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/e2/i;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 4

    const-string v0, "Error while binding on "

    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v2, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;->setAll(Lcom/tencent/tme/live/f2/l;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\noriginal message : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    throw p1
.end method

.method public receive(Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/z1/b;)Ljava/net/SocketAddress;
    .locals 0

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->remove(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public remove(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lcom/tencent/tme/live/f2/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/e;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/j2/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e2/l;->b(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public select()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method public selectedHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public send(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;Ljava/net/SocketAddress;)I
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result p1

    return p1
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/e2/a;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x5

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public final setSessionRecycler(Lcom/tencent/tme/live/f2/p;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/a;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lcom/tencent/tme/live/f2/p;

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lcom/tencent/tme/live/f2/p;

    monitor-exit v0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final unbind0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/live/e2/a$a;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/e2/a$a;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    invoke-virtual {v0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->updateTrafficControl(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public updateTrafficControl(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic write(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->write(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public write(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/g2/d;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v3

    const/4 v4, 0x1

    ushr-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p1, v6}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    return-void

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v5}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v6}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    invoke-virtual {v5}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/tencent/tme/live/g2/d;->d()Ljava/net/SocketAddress;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    :cond_2
    invoke-virtual {p0, p1, v5, v7}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;Ljava/net/SocketAddress;)I

    move-result v7

    if-eqz v7, :cond_4

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V

    invoke-virtual {p1, v6}, Lcom/tencent/tme/live/f2/a;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v7, v0, v1}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move v3, v7

    goto :goto_4

    :catch_0
    move-exception p2

    move v3, v7

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v5

    check-cast v5, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v5, v5, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v5, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1, v3, v0, v1}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1, v3, v0, v1}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    throw p2
.end method
