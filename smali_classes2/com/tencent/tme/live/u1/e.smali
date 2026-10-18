.class public Lcom/tencent/tme/live/u1/e;
.super Lcom/tencent/tme/live/u1/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/v1/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/u1/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/u1/b;->a(Lcom/tencent/tme/live/v1/a;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Lcom/tencent/tme/live/t1/d;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/u1/b;->a:Lcom/tencent/tme/live/v1/a;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/v1/a;->a(Lcom/tencent/tme/live/t1/d;)Ljava/lang/String;

    move-result-object v0

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/t1/d;->c:Lcom/tencent/tme/live/t1/a;

    .line 2
    iget v1, v1, Lcom/tencent/tme/live/t1/a;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7530

    if-eq v1, v2, :cond_1

    const v2, 0x9c40

    if-eq v1, v2, :cond_0

    const v2, 0xc350

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/tme/live/t1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method
