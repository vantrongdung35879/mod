.class public Lcom/tencent/tme/live/o/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/n/j;


# instance fields
.field public a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/tencent/tme/live/n/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/tencent/tme/live/o/f;

.field public c:Lcom/tencent/tme/live/n/b;

.field public d:Lcom/tencent/tme/live/n/b;

.field public e:Lcom/tencent/tme/live/n/b;

.field public f:Lcom/tencent/tme/live/n/b;

.field public volatile g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tencent/tme/live/o/f;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/o/f;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tme/live/o/f;-><init>(IZLcom/tencent/tme/live/n/j$a;)V

    return-void
.end method

.method public constructor <init>(IZLcom/tencent/tme/live/n/j$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v0, p0, Lcom/tencent/tme/live/o/f;->h:I

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance p3, Lcom/tencent/tme/live/n/j$d;

    invoke-direct {p3, p2}, Lcom/tencent/tme/live/n/j$d;-><init>(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    new-instance p3, Lcom/tencent/tme/live/n/j$e;

    invoke-direct {p3, p2}, Lcom/tencent/tme/live/n/j$e;-><init>(Z)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    new-instance p3, Lcom/tencent/tme/live/n/j$f;

    invoke-direct {p3, p2}, Lcom/tencent/tme/live/n/j$f;-><init>(Z)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_3
    iput-boolean p2, p0, Lcom/tencent/tme/live/o/f;->i:Z

    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/n/j$a;->a(Z)V

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :goto_1
    iput-object p2, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    iput p1, p0, Lcom/tencent/tme/live/o/f;->h:I

    iget-object p1, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tencent/tme/live/n/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v1, p0, Lcom/tencent/tme/live/o/f;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/o/f;->a(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/tencent/tme/live/n/j;
    .locals 4

    .line 5
    iget v0, p0, Lcom/tencent/tme/live/o/f;->h:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/o/f;

    iget-boolean v1, p0, Lcom/tencent/tme/live/o/f;->i:Z

    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1}, Lcom/tencent/tme/live/o/f;-><init>(IZ)V

    .line 7
    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    iput-object v1, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->f:Lcom/tencent/tme/live/n/b;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcom/tencent/tme/live/n/c;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->f:Lcom/tencent/tme/live/n/b;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->e:Lcom/tencent/tme/live/n/b;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/tencent/tme/live/n/c;

    const-string v1, "end"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->e:Lcom/tencent/tme/live/n/b;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->f:Lcom/tencent/tme/live/n/b;

    .line 12
    iput-wide p1, v0, Lcom/tencent/tme/live/n/b;->a:J

    const-wide/16 p1, 0x0

    iput-wide p1, v0, Lcom/tencent/tme/live/n/b;->b:J

    .line 13
    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->e:Lcom/tencent/tme/live/n/b;

    .line 14
    iput-wide p3, v1, Lcom/tencent/tme/live/n/b;->a:J

    iput-wide p1, v1, Lcom/tencent/tme/live/n/b;->b:J

    .line 15
    iget-object p1, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast p1, Ljava/util/SortedSet;

    invoke-interface {p1, v0, v1}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/tencent/tme/live/o/f;

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/o/f;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_6
    :goto_2
    return-object v2
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    const-string v0, "start"

    .line 1
    new-instance v1, Lcom/tencent/tme/live/n/c;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iput-object v1, p0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    const-string v0, "end"

    .line 3
    new-instance v1, Lcom/tencent/tme/live/n/c;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iput-object v1, p0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcom/tencent/tme/live/n/j$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/n/j$b<",
            "-",
            "Lcom/tencent/tme/live/n/b;",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/j$b;->b()V

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/n/b;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/n/j$b;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/j$b;->a()V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tencent/tme/live/n/b;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/f;->i:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/o/f;->h:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/tencent/tme/live/o/f;->h:I

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()Lcom/tencent/tme/live/n/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/o/f;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/tencent/tme/live/n/b;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/tencent/tme/live/n/j$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/n/j$b<",
            "-",
            "Lcom/tencent/tme/live/n/b;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/tencent/tme/live/n/b;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/n/b;->a(Z)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Lcom/tencent/tme/live/n/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/o/f;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/tencent/tme/live/n/b;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
