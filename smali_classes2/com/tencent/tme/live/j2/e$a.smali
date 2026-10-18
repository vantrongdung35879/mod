.class public Lcom/tencent/tme/live/j2/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/j2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field public b:J

.field public c:J

.field public d:Z

.field public final e:Ljava/lang/Thread;

.field public final synthetic f:Lcom/tencent/tme/live/j2/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/j2/e;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/tme/live/j2/e$a;->f:Lcom/tencent/tme/live/j2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/j2/e$a;->d:Z

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "ExpiringMapExpirer-"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tme/live/j2/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/tme/live/j2/e$a;->e:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/tme/live/j2/e$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/tme/live/j2/e$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/tme/live/j2/e$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public run()V
    .locals 9

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/j2/e$a;->d:Z

    if-eqz v0, :cond_3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tme/live/j2/e$a;->f:Lcom/tencent/tme/live/j2/e;

    .line 2
    iget-object v2, v2, Lcom/tencent/tme/live/j2/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/j2/e$b;

    iget-wide v4, p0, Lcom/tencent/tme/live/j2/e$a;->b:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, v3, Lcom/tencent/tme/live/j2/e$b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v4, v3, Lcom/tencent/tme/live/j2/e$b;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v3, Lcom/tencent/tme/live/j2/e$b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sub-long v4, v0, v4

    .line 5
    iget-wide v6, p0, Lcom/tencent/tme/live/j2/e$a;->b:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    iget-object v4, p0, Lcom/tencent/tme/live/j2/e$a;->f:Lcom/tencent/tme/live/j2/e;

    .line 6
    iget-object v4, v4, Lcom/tencent/tme/live/j2/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    iget-object v5, v3, Lcom/tencent/tme/live/j2/e$b;->a:Ljava/lang/Object;

    .line 8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/tme/live/j2/e$a;->f:Lcom/tencent/tme/live/j2/e;

    .line 9
    iget-object v4, v4, Lcom/tencent/tme/live/j2/e;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tme/live/j2/d;

    .line 11
    iget-object v6, v3, Lcom/tencent/tme/live/j2/e$b;->b:Ljava/lang/Object;

    .line 12
    invoke-interface {v5, v6}, Lcom/tencent/tme/live/j2/d;->a(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, v3, Lcom/tencent/tme/live/j2/e$b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 14
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/tencent/tme/live/j2/e$a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    return-void
.end method
