.class public abstract Lcom/tencent/tme/live/d2/b;
.super Lcom/tencent/tme/live/e2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/d2/b$a;,
        Lcom/tencent/tme/live/d2/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tme/live/f2/a;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/tme/live/e2/b;"
    }
.end annotation


# instance fields
.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/d2/b<",
            "TT;TH;>.a;>;"
        }
    .end annotation
.end field

.field private final connectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/d2/b<",
            "TT;TH;>.a;>;"
        }
    .end annotation
.end field

.field private final connectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tencent/tme/live/d2/b<",
            "TT;TH;>.b;>;"
        }
    .end annotation
.end field

.field private final createdProcessor:Z

.field private final disposalFuture:Lcom/tencent/tme/live/e2/c$c;

.field private final processor:Lcom/tencent/tme/live/e2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile selectable:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Lcom/tencent/tme/live/e2/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/live/e2/n;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/e2/n;-><init>(Ljava/lang/Class;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;>;I)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/live/e2/n;

    invoke-direct {v0, p2, p3}, Lcom/tencent/tme/live/e2/n;-><init>(Ljava/lang/Class;I)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/l;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/e2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/b;->connectQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    new-instance p1, Lcom/tencent/tme/live/e2/c$c;

    invoke-direct {p1}, Lcom/tencent/tme/live/e2/c$c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/b;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d2/b;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/tencent/tme/live/d2/b;->processor:Lcom/tencent/tme/live/e2/i;

    iput-boolean p4, p0, Lcom/tencent/tme/live/d2/b;->createdProcessor:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->destroy()V
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
    iget-boolean p2, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->destroy()V
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

.method public static synthetic access$1000(Lcom/tencent/tme/live/d2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/d2/b;->createdProcessor:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/i;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/b;->processor:Lcom/tencent/tme/live/e2/i;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/tencent/tme/live/d2/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e2/c;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/c$c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/b;->disposalFuture:Lcom/tencent/tme/live/e2/c$c;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/tencent/tme/live/d2/b;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/tencent/tme/live/d2/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/b;->startupWorker()V

    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/b;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/tme/live/d2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/tencent/tme/live/d2/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/tencent/tme/live/d2/b;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/b;->registerNew()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/tencent/tme/live/d2/b;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/d2/b;->connectQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/tme/live/d2/b;Ljava/util/Iterator;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/b;->processConnections(Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/tencent/tme/live/d2/b;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/b;->processTimedOutSessions(Ljava/util/Iterator;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tencent/tme/live/d2/b;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/b;->cancelKeys()I

    move-result p0

    return p0
.end method

.method private cancelKeys()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/d2/b$a;

    if-nez v1, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->wakeup()V

    :cond_0
    return v0

    .line 1
    :cond_1
    iget-object v1, v1, Lcom/tencent/tme/live/d2/b$a;->i:Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/b;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4
    throw v0

    :catch_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private processConnections(Ljava/util/Iterator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/b;->getConnectionRequest(Ljava/lang/Object;)Lcom/tencent/tme/live/d2/b$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/d2/b;->finishConnect(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tme/live/d2/b;->processor:Lcom/tencent/tme/live/e2/i;

    invoke-virtual {p0, v3, v1}, Lcom/tencent/tme/live/d2/b;->newSession(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;

    move-result-object v1

    .line 1
    iget-object v3, v2, Lcom/tencent/tme/live/d2/b$a;->k:Lcom/tencent/tme/live/f2/o;

    .line 2
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    invoke-virtual {v1}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/tencent/tme/live/e2/i;->add(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/c2/d;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw p1

    :cond_2
    return v0
.end method

.method private processTimedOutSessions(Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/d2/b;->getConnectionRequest(Ljava/lang/Object;)Lcom/tencent/tme/live/d2/b$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1
    iget-wide v3, v2, Lcom/tencent/tme/live/d2/b$a;->j:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 2
    new-instance v3, Ljava/net/ConnectException;

    const-string v4, "Connection timed out."

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/c2/d;->a(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerNew()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b;->connectQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/d2/b$a;

    if-nez v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v2, v1, Lcom/tencent/tme/live/d2/b$a;->i:Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/tencent/tme/live/d2/b;->register(Ljava/lang/Object;Lcom/tencent/tme/live/d2/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/c2/d;->a(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/d2/b;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startupWorker()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tme/live/d2/b;->selectable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/d2/b;->connectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/live/d2/b;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/b;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/d2/b$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/d2/b$b;

    .line 1
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/d2/b$b;-><init>(Lcom/tencent/tme/live/d2/b;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract allHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/net/SocketAddress;",
            ")Z"
        }
    .end annotation
.end method

.method public final connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;)",
            "Lcom/tencent/tme/live/c2/b;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/d2/b;->newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/d2/b;->connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/tencent/tme/live/c2/d;

    invoke-direct {p1}, Lcom/tencent/tme/live/c2/d;-><init>()V

    iget-object p2, p0, Lcom/tencent/tme/live/d2/b;->processor:Lcom/tencent/tme/live/e2/i;

    invoke-virtual {p0, p2, v0}, Lcom/tencent/tme/live/d2/b;->newSession(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/tencent/tme/live/e2/i;->add(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/d2/b$a;

    invoke-direct {p1, p0, v0, p3}, Lcom/tencent/tme/live/d2/b$a;-><init>(Lcom/tencent/tme/live/d2/b;Ljava/lang/Object;Lcom/tencent/tme/live/f2/o;)V

    iget-object p2, p0, Lcom/tencent/tme/live/d2/b;->connectQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/b;->startupWorker()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->wakeup()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/tencent/tme/live/c2/d;->b(Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/d2/b;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1
    sget-object p3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/d2/b;->close(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 3
    sget-object p3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public abstract destroy()V
.end method

.method public final dispose0()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/d2/b;->startupWorker()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/b;->wakeup()V

    return-void
.end method

.method public abstract finishConnect(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method public abstract getConnectionRequest(Ljava/lang/Object;)Lcom/tencent/tme/live/d2/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Lcom/tencent/tme/live/d2/b<",
            "TT;TH;>.a;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation
.end method

.method public abstract newSession(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "TT;>;TH;)TT;"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/Object;Lcom/tencent/tme/live/d2/b$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lcom/tencent/tme/live/d2/b<",
            "TT;TH;>.a;)V"
        }
    .end annotation
.end method

.method public abstract select(I)I
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

.method public abstract wakeup()V
.end method
