.class public Lcom/tencent/tme/live/c2/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/h;


# instance fields
.field public final a:Lcom/tencent/tme/live/f2/j;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/tencent/tme/live/c2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c2/i<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/c2/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/c2/e;->a:Lcom/tencent/tme/live/f2/j;

    iput-object p0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/c2/i<",
            "*>;)",
            "Lcom/tencent/tme/live/c2/h;"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Lcom/tencent/tme/live/c2/i;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->c:Lcom/tencent/tme/live/c2/i;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/c2/e;->c:Lcom/tencent/tme/live/c2/i;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->d:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/tme/live/c2/e;->d:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/c2/e;->a(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public final a(JZ)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    iget-object v4, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    if-nez v5, :cond_7

    cmp-long v6, p1, v2

    if-gtz v6, :cond_1

    goto :goto_4

    :cond_1
    iget v2, p0, Lcom/tencent/tme/live/c2/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/tme/live/c2/e;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    if-nez p3, :cond_5

    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->g()V

    goto :goto_0

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/tencent/tme/live/c2/e;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget p2, p0, Lcom/tencent/tme/live/c2/e;->g:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/tencent/tme/live/c2/e;->g:I

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->g()V

    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p1

    :cond_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    iget p2, p0, Lcom/tencent/tme/live/c2/e;->g:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/tencent/tme/live/c2/e;->g:I

    iget-boolean p2, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->g()V

    :cond_6
    throw p1

    :cond_7
    :goto_4
    monitor-exit v4

    return v5

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final b(Lcom/tencent/tme/live/c2/i;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0}, Lcom/tencent/tme/live/c2/i;->operationComplete(Lcom/tencent/tme/live/c2/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1
    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/c2/e;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    iget v1, p0, Lcom/tencent/tme/live/c2/e;->g:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->c:Lcom/tencent/tme/live/c2/i;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c2/e;->b(Lcom/tencent/tme/live/c2/i;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/c2/e;->c:Lcom/tencent/tme/live/c2/i;

    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/c2/i;

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/c2/e;->b(Lcom/tencent/tme/live/c2/i;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/tencent/tme/live/c2/e;->d:Ljava/util/List;

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()Lcom/tencent/tme/live/c2/h;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tme/live/c2/e;->a(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public final g()V
    .locals 11

    instance-of v0, p0, Lcom/tencent/tme/live/c2/a;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tencent/tme/live/c2/k;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tencent/tme/live/c2/j;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tencent/tme/live/c2/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, " or configure a proper thread model alternatively."

    const-string v5, "i"

    const-string v6, ".await() was invoked from an I/O processor thread.  Please use "

    const-string v7, "h"

    const-string v8, "DEAD LOCK: "

    if-ge v3, v1, :cond_2

    aget-object v9, v0, v3

    const-class v10, Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/tencent/tme/live/c2/h;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/tencent/tme/live/c2/i;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    :try_start_0
    const-class v9, Lcom/tencent/tme/live/c2/e;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v9, Lcom/tencent/tme/live/e2/i;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lcom/tencent/tme/live/c2/h;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lcom/tencent/tme/live/c2/i;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getSession()Lcom/tencent/tme/live/f2/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->a:Lcom/tencent/tme/live/f2/j;

    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/c2/e;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
