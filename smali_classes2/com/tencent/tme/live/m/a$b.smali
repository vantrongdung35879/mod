.class public Lcom/tencent/tme/live/m/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/n/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/m/a$b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Lcom/tencent/tme/live/o/f;

.field public c:Lcom/tencent/tme/live/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/p/a;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/tencent/tme/live/m/a$b$a;

.field public h:Z

.field public final synthetic i:Lcom/tencent/tme/live/m/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a;II)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/tencent/tme/live/o/f;

    invoke-direct {p1}, Lcom/tencent/tme/live/o/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    new-instance p1, Lcom/tencent/tme/live/o/i;

    invoke-direct {p1}, Lcom/tencent/tme/live/o/i;-><init>()V

    const/16 v0, 0x320

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p/c;->a(Lcom/tencent/tme/live/o/i;I)Lcom/tencent/tme/live/p/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/m/a$b;->h:Z

    iput p1, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    iput p2, p0, Lcom/tencent/tme/live/m/a$b;->d:I

    iput p3, p0, Lcom/tencent/tme/live/m/a$b;->f:I

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;ZI)Lcom/tencent/tme/live/n/b;
    .locals 8

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    check-cast v0, Lcom/tencent/tme/live/o/a;

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/o/a;->l:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v1, v1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v1, v1, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v1, v1, Lcom/tencent/tme/live/o/c;->e:I

    add-int v7, v0, v1

    new-instance v0, Lcom/tencent/tme/live/m/c;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tme/live/m/c;-><init>(Lcom/tencent/tme/live/m/a$b;ILcom/tencent/tme/live/n/b;ZI)V

    iget-object p0, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    .line 4
    iget-object p0, v0, Lcom/tencent/tme/live/m/c;->b:Lcom/tencent/tme/live/n/b;

    return-object p0
.end method

.method public static a(Lcom/tencent/tme/live/m/a$b;)V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    if-eqz v0, :cond_5

    .line 6
    iget-object v1, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/n/b;

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/n/b;)V

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object p0, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;IZ)Z
    .locals 2

    if-lez p2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    new-instance v1, Lcom/tencent/tme/live/m/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/tencent/tme/live/m/d;-><init>(Lcom/tencent/tme/live/m/a$b;IZ)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    .line 10
    :cond_0
    iget-object p3, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    invoke-virtual {p3, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    iget p1, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/tencent/tme/live/m/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/n/b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/n/b;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tme/live/n/b;)J
    .locals 5

    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    monitor-enter v0

    .line 12
    :try_start_0
    iget v3, v0, Lcom/tencent/tme/live/o/g;->e:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/tencent/tme/live/o/g;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 13
    iput-object v4, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    .line 15
    iget v1, v1, Lcom/tencent/tme/live/o/g;->b:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    int-to-long v1, v1

    .line 16
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->b()V

    iput-object v4, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    return-wide v1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/a$b;->h:Z

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/m/a$b$a;

    iget-object v1, p0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/m/a$b$a;-><init>(Lcom/tencent/tme/live/m/a$b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v1, v1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v1, v1, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v1, v1, Lcom/tencent/tme/live/o/e;->f:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(J)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/tme/live/m/a$b$a;->c:Z

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 18
    iget-object v3, v2, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 19
    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v4, v2, Lcom/tencent/tme/live/n/d;->a:J

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/tme/live/n/d;->b(J)J

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/tencent/tme/live/m/a$b$a;->d:Z

    const/4 v1, 0x7

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/tencent/tme/live/m/a$b$a;->d:Z

    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/n/b;)V
    .locals 5

    .line 5
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/n/b;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v3, v3, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    .line 7
    iget-object v3, v3, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    .line 8
    invoke-virtual {v3}, Lcom/tencent/tme/live/n/a;->b()Lcom/tencent/tme/live/o/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/tme/live/o/b;->a(Lcom/tencent/tme/live/n/b;)V

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    int-to-long v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    iput p1, p0, Lcom/tencent/tme/live/m/a$b;->e:I

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/p/a;->a(Lcom/tencent/tme/live/p/b;)V

    :cond_2
    return-void
.end method
