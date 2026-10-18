.class public Lcom/tencent/tme/live/m/h;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/m/h$c;,
        Lcom/tencent/tme/live/m/h$b;
    }
.end annotation


# static fields
.field public static final y:Ljava/lang/String; = "h"


# instance fields
.field public a:Lcom/tencent/tme/live/o/d;

.field public b:Lcom/tencent/tme/live/m/h$c;

.field public c:J

.field public d:Z

.field public e:J

.field public f:Z

.field public g:Lcom/tencent/tme/live/m/h$b;

.field public h:Lcom/tencent/tme/live/n/d;

.field public i:Lcom/tencent/tme/live/q/a;

.field public j:Lcom/tencent/tme/live/m/n;

.field public k:Lcom/tencent/tme/live/m/m;

.field public l:Z

.field public m:Lcom/tencent/tme/live/n/a;

.field public final n:Lcom/tencent/tme/live/r/a$b;

.field public o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/tencent/tme/live/m/o;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/tme/live/m/m;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/h;->d:Z

    new-instance v0, Lcom/tencent/tme/live/n/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/n/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/h;->l:Z

    new-instance v0, Lcom/tencent/tme/live/r/a$b;

    invoke-direct {v0}, Lcom/tencent/tme/live/r/a$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->q:J

    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->r:J

    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->s:J

    invoke-static {}, Lcom/tencent/tme/live/t/b;->a()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/h;->x:Z

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/m/h;->a(Lcom/tencent/tme/live/m/m;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/h;->a(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/h;->a(Z)J

    :goto_0
    iput-boolean p3, p0, Lcom/tencent/tme/live/m/h;->l:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/m/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/h;->f:Z

    return p1
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->e:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v0, v0, Lcom/tencent/tme/live/n/d;->a:J

    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->u:J

    goto :goto_0
.end method

.method public final a(J)J
    .locals 12

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->v:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/h;->v:Z

    iget-wide v3, p0, Lcom/tencent/tme/live/m/h;->e:J

    sub-long/2addr p1, v3

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->l:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    iget-boolean v0, v0, Lcom/tencent/tme/live/r/a$b;->p:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v3, v0, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/tencent/tme/live/m/h;->s:J

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v8, v0

    div-long/2addr v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p0

    move-wide v6, v1

    .line 13
    :goto_1
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    cmp-long v0, p1, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    iget-wide v5, v0, Lcom/tencent/tme/live/r/a$b;->m:J

    iget-wide v7, p0, Lcom/tencent/tme/live/m/h;->q:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_7

    cmp-long v0, v3, v7

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lcom/tencent/tme/live/m/h;->s:J

    div-long v5, p1, v0

    add-long/2addr v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->q:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->t:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    const-wide/16 v6, 0x8

    cmp-long v8, v4, v6

    if-gez v8, :cond_6

    iget-wide v4, p0, Lcom/tencent/tme/live/m/h;->s:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    iget-wide v4, p0, Lcom/tencent/tme/live/m/h;->q:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_6

    move-wide v0, v2

    :cond_6
    sub-long/2addr p1, v0

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->t:J

    move-wide v10, p1

    move-wide p1, v0

    move-wide v1, v10

    :cond_7
    :goto_2
    iput-wide v1, p0, Lcom/tencent/tme/live/m/h;->u:J

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/n/d;->a(J)J

    move-wide v1, p1

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/n/d;->b(J)J

    iput-wide v1, p0, Lcom/tencent/tme/live/m/h;->u:J

    :goto_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/h;->v:Z

    return-wide v1
.end method

.method public a(Z)J
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->l:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v0, p1, Lcom/tencent/tme/live/n/d;->a:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/h;->l:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)Lcom/tencent/tme/live/r/a$b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/n/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/m/n;->a(Lcom/tencent/tme/live/n/a;)Lcom/tencent/tme/live/r/a$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->l:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->l:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->f:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->f:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->g:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->g:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->h:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->h:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->i:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->i:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->j:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->j:I

    iget v1, v0, Lcom/tencent/tme/live/r/a$b;->k:I

    iput v1, p1, Lcom/tencent/tme/live/r/a$b;->k:I

    iget-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->m:J

    iput-wide v1, p1, Lcom/tencent/tme/live/r/a$b;->m:J

    iget-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->n:J

    iput-wide v1, p1, Lcom/tencent/tme/live/r/a$b;->n:J

    iget-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->o:J

    iput-wide v1, p1, Lcom/tencent/tme/live/r/a$b;->o:J

    iget-boolean v1, v0, Lcom/tencent/tme/live/r/a$b;->p:Z

    iput-boolean v1, p1, Lcom/tencent/tme/live/r/a$b;->p:Z

    iget-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->q:J

    iput-wide v1, p1, Lcom/tencent/tme/live/r/a$b;->q:J

    iget-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->r:J

    iput-wide v1, p1, Lcom/tencent/tme/live/r/a$b;->r:J

    iget-wide v0, v0, Lcom/tencent/tme/live/r/a$b;->s:J

    iput-wide v0, p1, Lcom/tencent/tme/live/r/a$b;->s:J

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 5
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/tencent/tme/live/o/a;

    .line 8
    iget v1, v0, Lcom/tencent/tme/live/o/a;->f:I

    if-ne v1, p1, :cond_1

    .line 10
    iget v1, v0, Lcom/tencent/tme/live/o/a;->g:I

    if-eq v1, p2, :cond_2

    .line 11
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/o/a;->a(II)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/tme/live/m/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/h;->l:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Lcom/tencent/tme/live/n/j;
    .locals 10

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->a()J

    move-result-wide v2

    check-cast v0, Lcom/tencent/tme/live/m/k;

    .line 1
    iget-object v4, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v4, v4, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v4, v4, Lcom/tencent/tme/live/o/e;->f:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x64

    sub-long/2addr v6, v8

    add-long/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    const/4 v8, 0x3

    if-ge v4, v8, :cond_0

    :try_start_0
    iget-object v4, v0, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v4, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v4, v6, v7, v2, v3}, Lcom/tencent/tme/live/o/f;->a(JJ)Lcom/tencent/tme/live/n/j;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    move v4, v5

    goto :goto_0

    :cond_0
    :goto_1
    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/f;-><init>()V

    if-eqz v1, :cond_4

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2
    iget-object v2, v1, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_1
    iget-object v1, v1, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/n/b;

    if-nez v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {v3}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    goto :goto_2

    .line 5
    :cond_3
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    return-object v1
.end method

.method public final b(J)V
    .locals 5

    .line 6
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->d:Z

    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->f:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 10
    iput-wide v1, v0, Lcom/tencent/tme/live/r/a$b;->q:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    const-wide/32 v0, 0x989680

    const/4 v2, 0x2

    const/16 v3, 0xb

    cmp-long v4, p1, v0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/tme/live/m/k;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/k;->c()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/h;->w:Z

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->p:Lcom/tencent/tme/live/m/o;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/m/h;->p:Lcom/tencent/tme/live/m/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 1
    :try_start_2
    iput-boolean v1, v0, Lcom/tencent/tme/live/m/o;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v1, 0x7d0

    .line 2
    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p1, :cond_19

    check-cast p1, Lcom/tencent/tme/live/m/k;

    .line 1
    iput-boolean v8, p1, Lcom/tencent/tme/live/m/k;->s:Z

    goto/16 :goto_5

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->a()J

    move-result-wide v0

    check-cast p1, Lcom/tencent/tme/live/m/k;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/tme/live/m/k;->d()V

    iget-object v2, p1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v2}, Lcom/tencent/tme/live/n/h;->c()V

    iget-object v2, p1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    .line 4
    iget v3, v2, Lcom/tencent/tme/live/n/h;->d:I

    add-int/2addr v3, v8

    iput v3, v2, Lcom/tencent/tme/live/n/h;->d:I

    .line 5
    iput-wide v0, p1, Lcom/tencent/tme/live/m/k;->j:J

    goto/16 :goto_5

    .line 6
    :pswitch_2
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/h;->d:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    check-cast p1, Lcom/tencent/tme/live/m/k;

    invoke-virtual {p1}, Lcom/tencent/tme/live/m/k;->c()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {p1}, Lcom/tencent/tme/live/m/m;->b()J

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->c()V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget-object v1, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    .line 7
    iput-object v0, v1, Lcom/tencent/tme/live/o/e;->i:Lcom/tencent/tme/live/o/d;

    invoke-virtual {v1, v8, v0}, Lcom/tencent/tme/live/o/e;->a(ILcom/tencent/tme/live/o/d;)Lcom/tencent/tme/live/n/b;

    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/h;->b()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/h;->c()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    check-cast p1, Lcom/tencent/tme/live/m/k;

    .line 9
    iput-boolean v8, p1, Lcom/tencent/tme/live/m/k;->i:Z

    goto/16 :goto_5

    .line 10
    :pswitch_5
    iput-boolean v6, p0, Lcom/tencent/tme/live/m/h;->l:Z

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/tme/live/m/m;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/tencent/tme/live/m/k;

    invoke-virtual {v1}, Lcom/tencent/tme/live/m/k;->c()V

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    check-cast v1, Lcom/tencent/tme/live/m/k;

    .line 11
    iput-boolean v8, v1, Lcom/tencent/tme/live/m/k;->o:Z

    .line 12
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/tencent/tme/live/m/n;->a()V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_5

    :pswitch_6
    iput-boolean v8, p0, Lcom/tencent/tme/live/m/h;->l:Z

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v10, :cond_4

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->a()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/tencent/tme/live/n/d;->b(J)J

    iget-object v9, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    check-cast v9, Lcom/tencent/tme/live/m/k;

    invoke-virtual {v9}, Lcom/tencent/tme/live/m/k;->c()V

    goto :goto_0

    :cond_3
    invoke-interface {v10}, Lcom/tencent/tme/live/m/n;->start()V

    iget-object v10, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Lcom/tencent/tme/live/m/n;->a(J)V

    iget-object v9, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    check-cast v9, Lcom/tencent/tme/live/m/k;

    invoke-virtual {v9}, Lcom/tencent/tme/live/m/k;->c()V

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v9, 0x0

    :goto_1
    iget-boolean v10, p0, Lcom/tencent/tme/live/m/h;->d:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/tencent/tme/live/m/m;->b()J

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->c()V

    if-nez v9, :cond_14

    goto/16 :goto_5

    :cond_6
    :pswitch_7
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p1, :cond_7

    invoke-interface {p1, v7}, Lcom/tencent/tme/live/m/n;->a(I)V

    :cond_7
    :pswitch_8
    const/4 p1, 0x6

    if-ne v0, p1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    iput-boolean v8, p0, Lcom/tencent/tme/live/m/h;->d:Z

    .line 13
    iget-boolean v1, p0, Lcom/tencent/tme/live/m/h;->w:Z

    if-eqz v1, :cond_9

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/tencent/tme/live/m/h;->a(J)J

    .line 16
    :cond_9
    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v1, v1, Lcom/tencent/tme/live/n/d;->a:J

    iput-wide v1, p0, Lcom/tencent/tme/live/m/h;->c:J

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->b:Lcom/tencent/tme/live/m/h$c;

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/m/h;->b:Lcom/tencent/tme/live/m/h$c;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_a
    if-ne v0, p1, :cond_19

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/tencent/tme/live/m/n;->a()V

    :cond_b
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_19

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_5

    .line 17
    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 18
    iput-wide v3, p0, Lcom/tencent/tme/live/m/h;->e:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->i:Lcom/tencent/tme/live/q/a;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {p1}, Lcom/tencent/tme/live/m/m;->a()Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_3

    :cond_c
    new-instance p1, Lcom/tencent/tme/live/m/h$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/m/h$a;-><init>(Lcom/tencent/tme/live/m/h;)V

    .line 19
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v0}, Lcom/tencent/tme/live/m/m;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-object v2, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v2}, Lcom/tencent/tme/live/m/m;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v3}, Lcom/tencent/tme/live/m/m;->getViewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v4}, Lcom/tencent/tme/live/m/m;->getViewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v5}, Lcom/tencent/tme/live/m/m;->isHardwareAccelerated()Z

    move-result v5

    new-instance v7, Lcom/tencent/tme/live/m/i;

    invoke-direct {v7, p0, p1}, Lcom/tencent/tme/live/m/i;-><init>(Lcom/tencent/tme/live/m/h;Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    .line 21
    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    .line 22
    iput-object p1, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    check-cast p1, Lcom/tencent/tme/live/o/a;

    invoke-virtual {p1, v3, v4}, Lcom/tencent/tme/live/o/a;->a(II)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    iget v4, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    check-cast v2, Lcom/tencent/tme/live/o/a;

    .line 23
    iput v3, v2, Lcom/tencent/tme/live/o/a;->i:F

    iput v4, v2, Lcom/tencent/tme/live/o/a;->j:I

    iput p1, v2, Lcom/tencent/tme/live/o/a;->k:F

    .line 24
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget p1, p1, Lcom/tencent/tme/live/o/d;->a:F

    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/o/a;->b(F)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->m:Lcom/tencent/tme/live/n/a;

    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 25
    iput-boolean v5, p1, Lcom/tencent/tme/live/o/a;->m:Z

    if-eqz v0, :cond_d

    .line 26
    new-instance p1, Lcom/tencent/tme/live/m/a;

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    invoke-direct {p1, v1, v0, v7}, Lcom/tencent/tme/live/m/a;-><init>(Lcom/tencent/tme/live/n/d;Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/m/n$a;)V

    goto :goto_2

    :cond_d
    new-instance p1, Lcom/tencent/tme/live/m/k;

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    invoke-direct {p1, v1, v0, v7}, Lcom/tencent/tme/live/m/k;-><init>(Lcom/tencent/tme/live/n/d;Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/m/n$a;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->i:Lcom/tencent/tme/live/q/a;

    .line 27
    iput-object v0, p1, Lcom/tencent/tme/live/m/k;->d:Lcom/tencent/tme/live/q/a;

    iput-boolean v6, p1, Lcom/tencent/tme/live/m/k;->l:Z

    .line 28
    invoke-interface {p1}, Lcom/tencent/tme/live/m/n;->b()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    iput-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p1}, Lcom/tencent/tme/live/m/h$a;->run()V

    goto/16 :goto_5

    :cond_f
    :goto_3
    const/4 p1, 0x5

    .line 30
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :pswitch_a
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/h;->d:Z

    if-eqz p1, :cond_10

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->b:Lcom/tencent/tme/live/m/h$c;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/m/h;->a(J)J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-gez p1, :cond_11

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    :cond_11
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {p1}, Lcom/tencent/tme/live/m/m;->b()J

    move-result-wide v0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->r:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_12

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/n/d;->a(J)J

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_12
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/h;->l:Z

    if-nez p1, :cond_13

    const-wide/32 v0, 0x989680

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/m/h;->b(J)V

    goto/16 :goto_5

    :cond_13
    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    iget-boolean v0, p1, Lcom/tencent/tme/live/r/a$b;->p:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/tencent/tme/live/m/h;->x:Z

    if-eqz v0, :cond_19

    iget-wide v0, p1, Lcom/tencent/tme/live/r/a$b;->o:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v2, p1, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_19

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    goto :goto_4

    .line 34
    :cond_14
    :pswitch_b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_15
    iput-wide v3, p0, Lcom/tencent/tme/live/m/h;->c:J

    :pswitch_c
    const/4 v3, 0x4

    if-ne v0, v3, :cond_17

    iput-boolean v8, p0, Lcom/tencent/tme/live/m/h;->d:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->d()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    iget-wide v9, v0, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr v3, v9

    iget-wide v9, p0, Lcom/tencent/tme/live/m/h;->e:J

    sub-long/2addr v9, v3

    iput-wide v9, p0, Lcom/tencent/tme/live/m/h;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tme/live/n/d;->b(J)J

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/h;->b()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/tencent/tme/live/m/n;->a(J)V

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/tme/live/m/h;->c:J

    :cond_17
    :pswitch_d
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v6, p0, Lcom/tencent/tme/live/m/h;->d:Z

    iget-boolean p1, p0, Lcom/tencent/tme/live/m/h;->f:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->n:Lcom/tencent/tme/live/r/a$b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/r/a$b;->a()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/tencent/tme/live/m/h;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/m/h;->e:J

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    invoke-virtual {p1, v2, v3}, Lcom/tencent/tme/live/n/d;->b(J)J

    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    invoke-interface {p1}, Lcom/tencent/tme/live/m/n;->start()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/h;->c()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p1, :cond_19

    invoke-interface {p1, v8}, Lcom/tencent/tme/live/m/n;->a(I)V

    goto :goto_5

    :cond_18
    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
