.class public abstract Lcom/tencent/tme/live/d2/a;
.super Lcom/tencent/tme/live/e2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/d2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/tencent/tme/live/f2/a;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/tme/live/e2/a;"
    }
.end annotation


# instance fields
.field private acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tencent/tme/live/d2/a<",
            "TS;TH;>.a;>;"
        }
    .end annotation
.end field

.field public backlog:I

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "TH;>;"
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

.field private final createdProcessor:Z

.field private final disposalFuture:Lcom/tencent/tme/live/e2/c$c;

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final processor:Lcom/tencent/tme/live/e2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/e2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public reuseAddress:Z

.field private volatile selectable:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Lcom/tencent/tme/live/e2/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;>;)V"
        }
    .end annotation

    new-instance v3, Lcom/tencent/tme/live/e2/n;

    invoke-direct {v3, p2}, Lcom/tencent/tme/live/e2/n;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;>;I)V"
        }
    .end annotation

    new-instance v3, Lcom/tencent/tme/live/e2/n;

    invoke-direct {v3, p2, p3}, Lcom/tencent/tme/live/e2/n;-><init>(Ljava/lang/Class;I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;>;I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    new-instance v3, Lcom/tencent/tme/live/e2/n;

    invoke-direct {v3, p2, p3, p4}, Lcom/tencent/tme/live/e2/n;-><init>(Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;ZLjava/nio/channels/spi/SelectorProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;Z",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/e2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->registerQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->cancelQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->boundHandles:Ljava/util/Map;

    new-instance p1, Lcom/tencent/tme/live/e2/c$c;

    invoke-direct {p1}, Lcom/tencent/tme/live/e2/c$c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/a;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/d2/a;->reuseAddress:Z

    const/16 p1, 0x32

    iput p1, p0, Lcom/tencent/tme/live/d2/a;->backlog:I

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/tencent/tme/live/d2/a;->processor:Lcom/tencent/tme/live/e2/i;

    iput-boolean p4, p0, Lcom/tencent/tme/live/d2/a;->createdProcessor:Z

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/tencent/tme/live/d2/a;->init(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-boolean p2, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->destroy()V
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

    const-string p3, "Failed to initialize."

    invoke-direct {p2, p3, p1}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean p2, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    invoke-static {}, Lcom/tencent/tme/live/j2/c;->a()Lcom/tencent/tme/live/j2/c;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "processor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/d2/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tencent/tme/live/d2/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e2/c;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/tencent/tme/live/d2/a;)Lcom/tencent/tme/live/e2/c$c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/tencent/tme/live/d2/a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/tme/live/d2/a;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/tme/live/d2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/tencent/tme/live/d2/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/tencent/tme/live/d2/a;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/a;->registerHandles()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/tencent/tme/live/d2/a;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->registerQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/tme/live/d2/a;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/tme/live/d2/a;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/a;->unregisterHandles()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/tencent/tme/live/d2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/d2/a;->createdProcessor:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/tencent/tme/live/d2/a;)Lcom/tencent/tme/live/e2/i;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/a;->processor:Lcom/tencent/tme/live/e2/i;

    return-object p0
.end method

.method private registerHandles()I
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/a$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

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

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/d2/a;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/d2/a;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/tme/live/d2/a;->boundHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/a;->close(Ljava/lang/Object;)V
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
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V

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

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/a;->close(Ljava/lang/Object;)V
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
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V

    goto/16 :goto_0

    :goto_4
    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/a;->close(Ljava/lang/Object;)V
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
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V

    :cond_7
    throw v2
.end method

.method private startupAcceptor()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/a;->selectable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/d2/a$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    new-instance v0, Lcom/tencent/tme/live/d2/a$a;

    .line 1
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/d2/a$a;-><init>(Lcom/tencent/tme/live/d2/a;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/d2/a;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private unregisterHandles()I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/d2/a;->cancelQueue:Ljava/util/Queue;

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

    iget-object v4, p0, Lcom/tencent/tme/live/d2/a;->boundHandles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/d2/a;->close(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V
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
.method public abstract accept(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "TS;>;TH;)TS;"
        }
    .end annotation
.end method

.method public final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 2
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

    iget-object p1, p0, Lcom/tencent/tme/live/d2/a;->registerQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/a;->startupAcceptor()V

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c$c;->i()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->boundHandles:Ljava/util/Map;

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

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/a;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

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

    iget-object v0, p0, Lcom/tencent/tme/live/d2/a;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public dispose0()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/a;->unbind()V

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/a;->startupAcceptor()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V

    return-void
.end method

.method public getBacklog()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/d2/a;->backlog:I

    return v0
.end method

.method public bridge synthetic getSessionConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public abstract init()V
.end method

.method public abstract init(Ljava/nio/channels/spi/SelectorProvider;)V
.end method

.method public isReuseAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/a;->reuseAddress:Z

    return v0
.end method

.method public abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation
.end method

.method public abstract select()I
.end method

.method public abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public setBacklog(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/a;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/d2/a;->backlog:I

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setReuseAddress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e2/a;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean p1, p0, Lcom/tencent/tme/live/d2/a;->reuseAddress:Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "backlog can\'t be set while the acceptor is bound."

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

    iget-object p1, p0, Lcom/tencent/tme/live/d2/a;->cancelQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/a;->startupAcceptor()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->wakeup()V

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

.method public abstract wakeup()V
.end method
