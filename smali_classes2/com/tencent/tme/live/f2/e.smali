.class public Lcom/tencent/tme/live/f2/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/f2/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/f2/e$b;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/j2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/j2/e<",
            "Ljava/net/SocketAddress;",
            "Lcom/tencent/tme/live/f2/j;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/tencent/tme/live/j2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/j2/e<",
            "Ljava/net/SocketAddress;",
            "Lcom/tencent/tme/live/f2/j;",
            ">.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/f2/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/j2/e;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tme/live/j2/e;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    invoke-virtual {v0}, Lcom/tencent/tme/live/j2/e;->b()Lcom/tencent/tme/live/j2/e$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/f2/e;->b:Lcom/tencent/tme/live/j2/e$a;

    iget-object p1, p0, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    new-instance p2, Lcom/tencent/tme/live/f2/e$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/tencent/tme/live/f2/e$b;-><init>(Lcom/tencent/tme/live/f2/e;Lcom/tencent/tme/live/f2/e$a;)V

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/j2/e;->a(Lcom/tencent/tme/live/j2/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/e;->b:Lcom/tencent/tme/live/j2/e$a;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, v0, Lcom/tencent/tme/live/j2/e$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-boolean v1, v0, Lcom/tencent/tme/live/j2/e$a;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tme/live/j2/e$a;->d:Z

    iget-object v1, v0, Lcom/tencent/tme/live/j2/e$a;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0

    .line 2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    .line 3
    iget-object v1, v1, Lcom/tencent/tme/live/j2/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/tencent/tme/live/f2/e;->a:Lcom/tencent/tme/live/j2/e;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/j2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    iget-object v0, v0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
