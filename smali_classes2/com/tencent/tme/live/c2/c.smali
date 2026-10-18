.class public Lcom/tencent/tme/live/c2/c;
.super Lcom/tencent/tme/live/c2/e;

# interfaces
.implements Lcom/tencent/tme/live/c2/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/c2/a;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/a;

    return-object v0
.end method

.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/c2/i<",
            "*>;)",
            "Lcom/tencent/tme/live/c2/a;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/a;

    return-object p1
.end method

.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/a;

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lcom/tencent/tme/live/c2/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/a;

    return-object v0
.end method
