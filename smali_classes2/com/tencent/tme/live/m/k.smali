.class public Lcom/tencent/tme/live/m/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/m/n;


# instance fields
.field public final a:Lcom/tencent/tme/live/o/d;

.field public final b:Lcom/tencent/tme/live/n/a;

.field public c:Lcom/tencent/tme/live/n/j;

.field public d:Lcom/tencent/tme/live/q/a;

.field public e:Lcom/tencent/tme/live/m/n$a;

.field public final f:Lcom/tencent/tme/live/r/a;

.field public g:Lcom/tencent/tme/live/n/d;

.field public h:Lcom/tencent/tme/live/n/j;

.field public i:Z

.field public j:J

.field public final k:Lcom/tencent/tme/live/r/a$b;

.field public l:Z

.field public m:J

.field public n:J

.field public o:Z

.field public p:Lcom/tencent/tme/live/n/b;

.field public q:Lcom/tencent/tme/live/o/f;

.field public r:Lcom/tencent/tme/live/n/j;

.field public s:Z

.field public t:Lcom/tencent/tme/live/o/d$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/d;Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/m/n$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tme/live/m/k;->j:J

    new-instance v0, Lcom/tencent/tme/live/r/a$b;

    invoke-direct {v0}, Lcom/tencent/tme/live/r/a$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->q:Lcom/tencent/tme/live/o/f;

    new-instance v0, Lcom/tencent/tme/live/m/k$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/m/k$a;-><init>(Lcom/tencent/tme/live/m/k;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->t:Lcom/tencent/tme/live/o/d$a;

    if-eqz p2, :cond_4

    iput-object p2, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p2}, Lcom/tencent/tme/live/o/d;->a()Lcom/tencent/tme/live/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iput-object p3, p0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    new-instance p3, Lcom/tencent/tme/live/s/a;

    invoke-direct {p3, p2}, Lcom/tencent/tme/live/s/a;-><init>(Lcom/tencent/tme/live/o/d;)V

    iput-object p3, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    new-instance v0, Lcom/tencent/tme/live/m/k$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/m/k$b;-><init>(Lcom/tencent/tme/live/m/k;)V

    invoke-virtual {p3, v0}, Lcom/tencent/tme/live/s/a;->a(Lcom/tencent/tme/live/r/a$a;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/o/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/tencent/tme/live/o/d;->d()Z

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
    invoke-virtual {p3, v0}, Lcom/tencent/tme/live/s/a;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/n/d;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/o/d;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "1017_Filter"

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    invoke-virtual {p1, p3}, Lcom/tencent/tme/live/m/f;->a(Ljava/lang/String;)Lcom/tencent/tme/live/m/f$e;

    goto :goto_2

    :cond_2
    iget-object p1, p2, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    invoke-virtual {p1, p3}, Lcom/tencent/tme/live/m/f;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/tme/live/n/a;)Lcom/tencent/tme/live/r/a$b;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    .line 22
    iget-boolean v2, v1, Lcom/tencent/tme/live/m/k;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    check-cast v2, Lcom/tencent/tme/live/s/a;

    .line 23
    iget-object v2, v2, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/s/b;->a()V

    .line 24
    iput-boolean v3, v1, Lcom/tencent/tme/live/m/k;->i:Z

    :cond_0
    iget-object v2, v1, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    invoke-static {v2}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;)V

    iget-boolean v2, v1, Lcom/tencent/tme/live/m/k;->o:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/tencent/tme/live/m/k;->s:Z

    if-nez v2, :cond_1

    iget-object v4, v1, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    goto/16 :goto_b

    :cond_1
    iput-boolean v3, v1, Lcom/tencent/tme/live/m/k;->s:Z

    iget-object v2, v1, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    iget-wide v5, v0, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v7, v0, Lcom/tencent/tme/live/o/e;->f:J

    sub-long v9, v5, v7

    const-wide/16 v11, 0x64

    sub-long/2addr v9, v11

    add-long/2addr v7, v5

    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    iget-wide v11, v1, Lcom/tencent/tme/live/m/k;->m:J

    cmp-long v15, v11, v9

    if-gtz v15, :cond_3

    iget-wide v13, v1, Lcom/tencent/tme/live/m/k;->n:J

    cmp-long v16, v5, v13

    if-lez v16, :cond_2

    goto :goto_0

    :cond_2
    move-wide v9, v11

    move-wide v7, v13

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    .line 25
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    const/4 v6, 0x4

    if-nez v5, :cond_6

    iget v5, v0, Lcom/tencent/tme/live/o/f;->h:I

    if-ne v5, v6, :cond_5

    new-instance v5, Lcom/tencent/tme/live/o/f;

    .line 26
    invoke-direct {v5, v6, v3}, Lcom/tencent/tme/live/o/f;-><init>(IZ)V

    .line 27
    iput-object v5, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    iget-object v11, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    iput-object v11, v5, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v11, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    iget-object v12, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-virtual {v11, v12}, Lcom/tencent/tme/live/o/f;->a(Ljava/util/Collection;)V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_5
    new-instance v5, Lcom/tencent/tme/live/o/f;

    iget-boolean v11, v0, Lcom/tencent/tme/live/o/f;->i:Z

    .line 28
    invoke-direct {v5, v3, v11}, Lcom/tencent/tme/live/o/f;-><init>(IZ)V

    .line 29
    iput-object v5, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    iget-object v11, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    iput-object v11, v5, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    :cond_6
    :goto_1
    iget v5, v0, Lcom/tencent/tme/live/o/f;->h:I

    if-ne v5, v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    if-nez v5, :cond_8

    .line 30
    new-instance v5, Lcom/tencent/tme/live/n/c;

    const-string v6, "start"

    invoke-direct {v5, v6}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    iput-object v5, v0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    :cond_8
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    if-nez v5, :cond_9

    .line 32
    new-instance v5, Lcom/tencent/tme/live/n/c;

    const-string v6, "end"

    invoke-direct {v5, v6}, Lcom/tencent/tme/live/n/c;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    iput-object v5, v0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    :cond_9
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v5

    sub-long v5, v9, v5

    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-ltz v13, :cond_a

    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v5

    cmp-long v11, v7, v5

    if-gtz v11, :cond_a

    :goto_2
    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    goto :goto_4

    :cond_a
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    .line 34
    iput-wide v9, v5, Lcom/tencent/tme/live/n/b;->a:J

    const-wide/16 v11, 0x0

    iput-wide v11, v5, Lcom/tencent/tme/live/n/b;->b:J

    .line 35
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    .line 36
    iput-wide v7, v5, Lcom/tencent/tme/live/n/b;->a:J

    iput-wide v11, v5, Lcom/tencent/tme/live/n/b;->b:J

    .line 37
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;

    iget-object v11, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    check-cast v11, Ljava/util/SortedSet;

    iget-object v12, v0, Lcom/tencent/tme/live/o/f;->c:Lcom/tencent/tme/live/n/b;

    iget-object v13, v0, Lcom/tencent/tme/live/o/f;->d:Lcom/tencent/tme/live/n/b;

    invoke-interface {v11, v12, v13}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/tencent/tme/live/o/f;->a(Ljava/util/Collection;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->b:Lcom/tencent/tme/live/o/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_b
    :goto_3
    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_c

    .line 38
    iput-object v0, v1, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    :cond_c
    iput-wide v9, v1, Lcom/tencent/tme/live/m/k;->m:J

    iput-wide v7, v1, Lcom/tencent/tme/live/m/k;->n:J

    :goto_5
    iget-object v5, v1, Lcom/tencent/tme/live/m/k;->r:Lcom/tencent/tme/live/n/j;

    .line 39
    invoke-virtual {v2}, Lcom/tencent/tme/live/r/a$b;->a()V

    iget-object v6, v2, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 41
    invoke-virtual {v6, v11, v12}, Lcom/tencent/tme/live/n/d;->b(J)J

    iput v3, v2, Lcom/tencent/tme/live/r/a$b;->c:I

    if-eqz v5, :cond_d

    move-object v6, v5

    check-cast v6, Lcom/tencent/tme/live/o/f;

    .line 42
    iget-object v6, v6, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .line 43
    move-object v11, v0

    check-cast v11, Lcom/tencent/tme/live/o/f;

    .line 44
    iget-object v11, v11, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    add-int/2addr v6, v11

    .line 45
    iput v6, v2, Lcom/tencent/tme/live/r/a$b;->d:I

    const/4 v6, 0x1

    if-eqz v5, :cond_f

    .line 46
    check-cast v5, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v5}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v1, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    iput-boolean v6, v11, Lcom/tencent/tme/live/r/a$b;->a:Z

    iget-object v12, v1, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    check-cast v12, Lcom/tencent/tme/live/s/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v13, v11, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    iput-object v13, v12, Lcom/tencent/tme/live/s/a;->a:Lcom/tencent/tme/live/n/d;

    iget-object v12, v12, Lcom/tencent/tme/live/s/a;->h:Lcom/tencent/tme/live/s/a$b;

    move-object/from16 v13, p1

    iput-object v13, v12, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    iput-object v11, v12, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/tencent/tme/live/s/a$b;->d:J

    invoke-virtual {v5, v12}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/j$b;)V

    .line 48
    :cond_f
    iget-object v5, v1, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    iput-boolean v3, v5, Lcom/tencent/tme/live/r/a$b;->a:Z

    if-eqz v0, :cond_15

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, v1, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    iget-object v11, v1, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-wide v12, v1, Lcom/tencent/tme/live/m/k;->j:J

    check-cast v5, Lcom/tencent/tme/live/s/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v14, v2, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    iput-object v14, v5, Lcom/tencent/tme/live/s/a;->a:Lcom/tencent/tme/live/n/d;

    iget-object v5, v5, Lcom/tencent/tme/live/s/a;->h:Lcom/tencent/tme/live/s/a$b;

    iput-object v11, v5, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    iput-object v2, v5, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iput-wide v12, v5, Lcom/tencent/tme/live/s/a$b;->d:J

    invoke-virtual {v0, v5}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/j$b;)V

    .line 50
    iget v0, v2, Lcom/tencent/tme/live/r/a$b;->k:I

    if-nez v0, :cond_10

    const/4 v3, 0x1

    :cond_10
    iput-boolean v3, v2, Lcom/tencent/tme/live/r/a$b;->p:Z

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_11

    iput-wide v5, v2, Lcom/tencent/tme/live/r/a$b;->n:J

    :cond_11
    iget-object v0, v2, Lcom/tencent/tme/live/r/a$b;->e:Lcom/tencent/tme/live/n/b;

    iput-object v4, v2, Lcom/tencent/tme/live/r/a$b;->e:Lcom/tencent/tme/live/n/b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v11

    goto :goto_8

    :cond_12
    move-wide v11, v5

    :goto_8
    iput-wide v11, v2, Lcom/tencent/tme/live/r/a$b;->o:J

    iget-object v0, v2, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 52
    invoke-virtual {v0, v11, v12}, Lcom/tencent/tme/live/n/d;->b(J)J

    move-result-wide v11

    iput-wide v11, v2, Lcom/tencent/tme/live/r/a$b;->m:J

    .line 53
    iget-boolean v0, v2, Lcom/tencent/tme/live/r/a$b;->p:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object v4, v1, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    iget-object v0, v1, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v0, :cond_13

    check-cast v0, Lcom/tencent/tme/live/m/i;

    .line 54
    iget-object v0, v0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    .line 55
    iget-object v0, v0, Lcom/tencent/tme/live/m/h;->g:Lcom/tencent/tme/live/m/h$b;

    .line 56
    :cond_13
    iget-wide v3, v2, Lcom/tencent/tme/live/r/a$b;->n:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_14

    iput-wide v9, v2, Lcom/tencent/tme/live/r/a$b;->n:J

    :cond_14
    iget-wide v3, v2, Lcom/tencent/tme/live/r/a$b;->o:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_16

    :goto_9
    iput-wide v7, v2, Lcom/tencent/tme/live/r/a$b;->o:J

    goto :goto_a

    :cond_15
    iput-boolean v6, v2, Lcom/tencent/tme/live/r/a$b;->p:Z

    iput-wide v9, v2, Lcom/tencent/tme/live/r/a$b;->n:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_9

    :cond_16
    :goto_a
    move-object v4, v2

    :cond_17
    :goto_b
    monitor-exit p0

    return-object v4

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    .line 84
    iget-object v1, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/s/a;

    .line 86
    iget-object v1, v0, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    .line 87
    invoke-virtual {v1}, Lcom/tencent/tme/live/s/b;->a()V

    .line 88
    iget-object v0, v0, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/f;->a()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/k;->d()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/h;->c()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    .line 89
    iget v1, v0, Lcom/tencent/tme/live/n/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/n/h;->d:I

    .line 90
    iget v1, v0, Lcom/tencent/tme/live/n/h;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/n/h;->e:I

    .line 91
    iget v1, v0, Lcom/tencent/tme/live/n/h;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/n/h;->f:I

    .line 92
    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 93
    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/tme/live/o/f;-><init>(IZLcom/tencent/tme/live/n/j$a;)V

    .line 94
    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->r:Lcom/tencent/tme/live/n/j;

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    move-wide p1, v2

    :cond_0
    iput-wide p1, p0, Lcom/tencent/tme/live/m/k;->j:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/r/a$b;->a()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->k:Lcom/tencent/tme/live/r/a$b;

    iget-wide v0, p0, Lcom/tencent/tme/live/m/k;->j:J

    iput-wide v0, p1, Lcom/tencent/tme/live/r/a$b;->o:J

    iput-wide v2, p0, Lcom/tencent/tme/live/m/k;->n:J

    iput-wide v2, p0, Lcom/tencent/tme/live/m/k;->m:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p1}, Lcom/tencent/tme/live/o/f;->d()Lcom/tencent/tme/live/n/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Lcom/tencent/tme/live/n/b;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lcom/tencent/tme/live/n/b;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->q:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->q:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->q:Lcom/tencent/tme/live/o/f;

    .line 2
    invoke-static {}, Lcom/tencent/tme/live/t/c;->a()J

    move-result-wide v2

    .line 3
    iget-object v4, v0, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :try_start_3
    iget-object v5, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tme/live/n/b;

    if-nez v6, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v6}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v7

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const/16 v10, 0xa

    int-to-long v10, v10

    const/4 v12, 0x2

    cmp-long v13, v8, v10

    if-lez v13, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 7
    iget-object v7, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v7, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v7, v6}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/b;)Z

    invoke-virtual {p0, v6}, Lcom/tencent/tme/live/m/k;->b(Lcom/tencent/tme/live/n/b;)V

    const/4 v6, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-ne v6, v1, :cond_6

    goto :goto_3

    :cond_6
    if-ne v6, v12, :cond_7

    .line 8
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-object v6, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_7
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    :cond_8
    :goto_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit p0

    throw p1

    .line 10
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    .line 11
    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 12
    iput v0, p1, Lcom/tencent/tme/live/n/b;->q:I

    iget-wide v2, p0, Lcom/tencent/tme/live/m/k;->m:J

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/tme/live/m/k;->n:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v1, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    move-result v1

    monitor-exit v0

    goto :goto_6

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1

    :cond_b
    iget-boolean v0, p1, Lcom/tencent/tme/live/n/b;->x:Z

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v2, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    move-result v2

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_d

    if-nez v2, :cond_e

    :cond_d
    :try_start_b
    iput-wide v3, p0, Lcom/tencent/tme/live/m/k;->n:J

    iput-wide v3, p0, Lcom/tencent/tme/live/m/k;->m:J

    :cond_e
    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v0, :cond_12

    check-cast v0, Lcom/tencent/tme/live/m/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v1

    iget-object v5, v0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    invoke-virtual {v5}, Lcom/tencent/tme/live/m/h;->a()J

    move-result-wide v5

    sub-long/2addr v1, v5

    iget-object v0, v0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    .line 14
    iget-object v5, v0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    .line 15
    iget-object v5, v5, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v5, v5, Lcom/tencent/tme/live/o/e;->f:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_11

    .line 16
    iget-boolean v5, v0, Lcom/tencent/tme/live/m/h;->w:Z

    if-nez v5, :cond_10

    .line 17
    iget-object v5, v0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    .line 18
    iget-boolean v5, v5, Lcom/tencent/tme/live/r/a$b;->p:Z

    if-eqz v5, :cond_11

    .line 19
    :cond_10
    invoke-virtual {v0}, Lcom/tencent/tme/live/m/h;->c()V

    goto :goto_7

    :cond_11
    cmp-long v5, v1, v3

    if-lez v5, :cond_12

    if-gtz v7, :cond_12

    const/16 v3, 0xb

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    :cond_12
    :goto_7
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    if-eqz v0, :cond_13

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    :cond_13
    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_14
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/n/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/q/a;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    .line 68
    iput-object v0, p1, Lcom/tencent/tme/live/q/a;->d:Lcom/tencent/tme/live/o/d;

    .line 69
    iget-object v1, p0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    .line 70
    check-cast v1, Lcom/tencent/tme/live/o/a;

    .line 71
    iget v2, v1, Lcom/tencent/tme/live/o/a;->f:I

    .line 72
    iget v3, v1, Lcom/tencent/tme/live/o/a;->g:I

    .line 73
    iget v1, v1, Lcom/tencent/tme/live/o/a;->i:F

    .line 74
    iput v1, p1, Lcom/tencent/tme/live/q/a;->b:F

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    int-to-float v2, v2

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/tme/live/o/e;->a(FFF)Z

    iget-object v0, p1, Lcom/tencent/tme/live/q/a;->d:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/e;->b()V

    .line 75
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    .line 76
    iput-object v0, p1, Lcom/tencent/tme/live/q/a;->a:Lcom/tencent/tme/live/n/d;

    .line 77
    iget-object v0, p1, Lcom/tencent/tme/live/q/a;->c:Lcom/tencent/tme/live/n/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/tencent/tme/live/q/a;->d:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v0, Lcom/tencent/tme/live/o/e;->b:I

    iput v1, v0, Lcom/tencent/tme/live/o/e;->a:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    iput-object v2, v0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    const-wide/16 v2, 0x2328

    iput-wide v2, v0, Lcom/tencent/tme/live/o/e;->f:J

    .line 79
    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/f;-><init>()V

    .line 80
    iput-object v0, p1, Lcom/tencent/tme/live/q/a;->c:Lcom/tencent/tme/live/n/j;

    iget-object v0, p1, Lcom/tencent/tme/live/q/a;->d:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/e;->b()V

    iget-object v0, p1, Lcom/tencent/tme/live/q/a;->c:Lcom/tencent/tme/live/n/j;

    .line 81
    :goto_0
    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    .line 82
    iput v1, p1, Lcom/tencent/tme/live/n/h;->b:I

    iput v1, p1, Lcom/tencent/tme/live/n/h;->a:I

    iput v1, p1, Lcom/tencent/tme/live/n/h;->c:I

    iput v1, p1, Lcom/tencent/tme/live/n/h;->d:I

    iput v1, p1, Lcom/tencent/tme/live/n/h;->e:I

    iput v1, p1, Lcom/tencent/tme/live/n/h;->f:I

    if-eqz v0, :cond_1

    .line 83
    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->d()Lcom/tencent/tme/live/n/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->p:Lcom/tencent/tme/live/n/b;

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v3, p1, Lcom/tencent/tme/live/o/e;->f:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x64

    sub-long/2addr v5, v7

    add-long/2addr v1, v3

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast p1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p1, v5, v6, v1, v2}, Lcom/tencent/tme/live/o/f;->a(JJ)Lcom/tencent/tme/live/n/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast p1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p1}, Lcom/tencent/tme/live/o/f;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    sget-object v1, Lcom/tencent/tme/live/o/d$b;->h:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/o/d$b;->m:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "1017_Filter"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    .line 57
    invoke-virtual {p1, p2, v0}, Lcom/tencent/tme/live/m/f;->a(Ljava/lang/String;Z)Lcom/tencent/tme/live/m/f$e;

    goto/16 :goto_4

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    .line 59
    invoke-virtual {p1, p2, v0}, Lcom/tencent/tme/live/m/f;->b(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 60
    :cond_2
    sget-object v1, Lcom/tencent/tme/live/o/d$b;->g:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/tencent/tme/live/o/d$b;->l:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/tencent/tme/live/o/d$b;->q:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/tencent/tme/live/o/d$b;->n:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/tencent/tme/live/o/d$b;->o:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/tencent/tme/live/o/d$b;->p:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/tencent/tme/live/s/a;

    .line 61
    iget-object p2, p2, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/s/b;->a(Z)V

    goto :goto_4

    :cond_5
    :goto_0
    const/4 v0, 0x0

    goto :goto_4

    .line 62
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    .line 63
    iget-boolean v1, p2, Lcom/tencent/tme/live/o/d;->g:Z

    if-nez v1, :cond_7

    .line 64
    iget-boolean p2, p2, Lcom/tencent/tme/live/o/d;->f:Z

    if-eqz p2, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 65
    :cond_8
    check-cast p1, Lcom/tencent/tme/live/s/a;

    if-eqz v2, :cond_9

    .line 66
    iget-object p2, p1, Lcom/tencent/tme/live/s/a;->d:Lcom/tencent/tme/live/s/b$g;

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_2
    iput-object p2, p1, Lcom/tencent/tme/live/s/a;->c:Lcom/tencent/tme/live/s/b$g;

    goto :goto_4

    .line 67
    :cond_a
    :goto_3
    iput-boolean v0, p0, Lcom/tencent/tme/live/m/k;->i:Z

    goto :goto_0

    :cond_b
    :goto_4
    return v0
.end method

.method public varargs a(Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/tencent/tme/live/m/i;

    invoke-virtual {p2}, Lcom/tencent/tme/live/m/i;->a()V

    :cond_0
    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->d:Lcom/tencent/tme/live/q/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/q/a;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/m/k;->n:J

    iput-wide v0, p0, Lcom/tencent/tme/live/m/k;->m:J

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/m/i;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/i;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/k;->l:Z

    :cond_1
    return-void
.end method

.method public b(Lcom/tencent/tme/live/n/b;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/m/k;->n:J

    iput-wide v0, p0, Lcom/tencent/tme/live/m/k;->m:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/k;->o:Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/k;->h:Lcom/tencent/tme/live/n/j;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/s/a;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/s/b;->a()V

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/f;->a()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v1, p0, Lcom/tencent/tme/live/m/k;->t:Lcom/tencent/tme/live/o/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    :cond_1
    iget-object v2, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
