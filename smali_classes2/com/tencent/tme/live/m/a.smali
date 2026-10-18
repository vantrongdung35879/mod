.class public Lcom/tencent/tme/live/m/a;
.super Lcom/tencent/tme/live/m/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/m/a$b;
    }
.end annotation


# instance fields
.field public u:I

.field public v:Lcom/tencent/tme/live/m/a$b;

.field public w:Lcom/tencent/tme/live/n/d;

.field public final x:Ljava/lang/Object;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/d;Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/m/n$a;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/m/k;-><init>(Lcom/tencent/tme/live/n/d;Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/m/n$a;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/tencent/tme/live/m/a;->u:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object p2, p2, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget p2, p2, Lcom/tencent/tme/live/o/c;->b:F

    mul-float p1, p1, p2

    const/high16 p2, 0x4a800000    # 4194304.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/tme/live/m/a;->u:I

    new-instance p2, Lcom/tencent/tme/live/m/a$b;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/tme/live/m/a$b;-><init>(Lcom/tencent/tme/live/m/a;II)V

    iput-object p2, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    check-cast p1, Lcom/tencent/tme/live/s/a;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/s/a;->a(Lcom/tencent/tme/live/n/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/a;)Lcom/tencent/tme/live/r/a$b;
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/n/a;)Lcom/tencent/tme/live/r/a$b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/tencent/tme/live/r/a$b;->k:I

    iget v2, p1, Lcom/tencent/tme/live/r/a$b;->l:I

    sub-int/2addr v1, v2

    const/16 v2, -0x14

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v1, v1, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v1, v1, Lcom/tencent/tme/live/o/e;->f:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/m/a$b;->a(J)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/tme/live/m/k;->a()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/k;->d()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    check-cast v0, Lcom/tencent/tme/live/s/a;

    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    .line 12
    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lcom/tencent/tme/live/m/a$b;->h:Z

    iget-object v3, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 14
    iget-object v3, v3, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    .line 15
    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 16
    iget-object v4, v4, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    .line 18
    iput-boolean v2, v3, Lcom/tencent/tme/live/m/a$b$a;->a:Z

    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    iput-object v1, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    :cond_0
    iget-object v2, v0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v2, v0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, v0, Lcom/tencent/tme/live/m/a$b;->a:Landroid/os/HandlerThread;

    .line 20
    :cond_1
    iput-object v1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    .line 10
    iput-boolean p1, v0, Lcom/tencent/tme/live/m/a$b$a;->b:Z

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/m/k;->a(J)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/a;->start()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/m/a$b;->b(J)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/n/b;)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/d;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    new-instance v0, Lcom/tencent/tme/live/n/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/n/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tme/live/m/k;->a(Z)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/m/a$b;->b()V

    :cond_0
    return-void
.end method

.method public varargs a(Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p2, p3}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lcom/tencent/tme/live/o/d$b;->l:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget p2, p2, Lcom/tencent/tme/live/o/d;->a:F

    check-cast p1, Lcom/tencent/tme/live/o/a;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/o/a;->b(F)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/k;->c()V

    goto/16 :goto_3

    .line 4
    :cond_1
    sget-object p1, Lcom/tencent/tme/live/o/d$b;->a:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->b:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->c:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->d:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->e:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->j:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->k:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    sget-object p1, Lcom/tencent/tme/live/o/d$b;->f:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->g:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/tencent/tme/live/o/d$b;->i:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz p1, :cond_a

    .line 6
    iget-object p2, p1, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/m/a$b;->a(J)V

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p1, Lcom/tencent/tme/live/o/d$b;->g:Lcom/tencent/tme/live/o/d$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget p2, p2, Lcom/tencent/tme/live/o/d;->a:F

    check-cast p1, Lcom/tencent/tme/live/o/a;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/o/a;->b(F)V

    :cond_6
    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/tencent/tme/live/m/a$b;->b()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    iget-object p2, p0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p2, p2, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide p2, p2, Lcom/tencent/tme/live/o/e;->f:J

    neg-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/tencent/tme/live/m/a$b;->a(J)V

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz p3, :cond_9

    .line 5
    array-length p1, p3

    if-lez p1, :cond_9

    const/4 p1, 0x0

    aget-object p1, p3, p1

    if-eqz p1, :cond_9

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/m/a$b;->a(J)V

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/tme/live/m/k;->c()V

    .line 7
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz p1, :cond_c

    new-instance p2, Lcom/tencent/tme/live/m/a$a;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/m/a$a;-><init>(Lcom/tencent/tme/live/m/a;)V

    .line 8
    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_4
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->d:Lcom/tencent/tme/live/q/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/m/k;->a(Lcom/tencent/tme/live/q/a;)V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/a$b;->a()V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/n/b;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/tencent/tme/live/m/a;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/m/a;->y:I

    const/4 v1, 0x5

    if-le p1, v1, :cond_3

    .line 1
    iget-object p1, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/tencent/tme/live/m/a;->y:I

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/o/g;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/tencent/tme/live/o/g;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->b()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    :cond_3
    :goto_2
    return-void
.end method

.method public start()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/tme/live/m/k;->start()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/m/a$b;

    iget v1, p0, Lcom/tencent/tme/live/m/a;->u:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/tme/live/m/a$b;-><init>(Lcom/tencent/tme/live/m/a;II)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/a$b;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/k;->f:Lcom/tencent/tme/live/r/a;

    iget-object v1, p0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    check-cast v0, Lcom/tencent/tme/live/s/a;

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/tme/live/m/a$b$a;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/m/a$b;->a()V

    :goto_0
    return-void
.end method
