.class Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;
.super Lcom/tencent/tme/live/b2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
    }
.end annotation


# instance fields
.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/f2/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile flushEnabled:Z

.field private final processor:Lcom/tencent/tme/live/e2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sessionOpened:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;-><init>(Lcom/tencent/tme/live/f2/a;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    new-instance p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$1;)V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lcom/tencent/tme/live/e2/i;

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;Lcom/tencent/tme/live/f2/h;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method private fireEvent(Lcom/tencent/tme/live/f2/h;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 3
    sget-object v2, Lcom/tencent/tme/live/f2/i;->d:Lcom/tencent/tme/live/f2/i;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->isReadSuspended()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->isReadSuspended()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireMessageReceived(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    iget-object v0, v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    if-ne v1, v2, :cond_3

    check-cast p1, Lcom/tencent/tme/live/g2/d;

    invoke-super {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/tencent/tme/live/f2/i;->e:Lcom/tencent/tme/live/f2/i;

    if-ne v1, v2, :cond_4

    check-cast p1, Lcom/tencent/tme/live/g2/d;

    invoke-super {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/tencent/tme/live/f2/i;->g:Lcom/tencent/tme/live/f2/i;

    if-ne v1, v2, :cond_5

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/tencent/tme/live/f2/i;->f:Lcom/tencent/tme/live/f2/i;

    if-ne v1, v2, :cond_6

    check-cast p1, Lcom/tencent/tme/live/f2/f;

    invoke-super {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/tencent/tme/live/f2/i;->b:Lcom/tencent/tme/live/f2/i;

    if-ne v1, p1, :cond_7

    invoke-super {p0}, Lcom/tencent/tme/live/b2/a;->fireSessionOpened()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/tencent/tme/live/f2/i;->a:Lcom/tencent/tme/live/f2/i;

    if-ne v1, p1, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-super {p0}, Lcom/tencent/tme/live/b2/a;->fireSessionCreated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_8
    sget-object p1, Lcom/tencent/tme/live/f2/i;->c:Lcom/tencent/tme/live/f2/i;

    if-ne v1, p1, :cond_9

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    invoke-super {p0}, Lcom/tencent/tme/live/b2/a;->fireSessionClosed()V

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/tencent/tme/live/f2/i;->i:Lcom/tencent/tme/live/f2/i;

    if-ne v1, p1, :cond_a

    invoke-super {p0}, Lcom/tencent/tme/live/b2/a;->fireFilterClose()V

    :cond_a
    :goto_1
    return-void
.end method

.method private flushEvents()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/h;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->fireEvent(Lcom/tencent/tme/live/f2/h;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flushPendingDataQueues(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method private pushEvent(Lcom/tencent/tme/live/f2/h;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;Z)V

    return-void
.end method

.method private pushEvent(Lcom/tencent/tme/live/f2/h;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->g:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireFilterClose()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->i:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->d:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireMessageSent(Lcom/tencent/tme/live/g2/d;)V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->e:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireSessionClosed()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->c:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireSessionCreated()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->a:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->f:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public fireSessionOpened()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/f2/h;

    sget-object v1, Lcom/tencent/tme/live/f2/i;->b:Lcom/tencent/tme/live/f2/i;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lcom/tencent/tme/live/f2/h;)V

    return-void
.end method

.method public getProcessor()Lcom/tencent/tme/live/e2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lcom/tencent/tme/live/e2/i;

    return-object v0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method
