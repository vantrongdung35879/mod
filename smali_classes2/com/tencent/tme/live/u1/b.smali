.class public abstract Lcom/tencent/tme/live/u1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/u1/a;


# instance fields
.field public a:Lcom/tencent/tme/live/v1/a;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/tme/live/t1/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/u1/b;->b(Lcom/tencent/tme/live/t1/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tencent/tme/live/v1/a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tme/live/u1/b;->a:Lcom/tencent/tme/live/v1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public abstract b(Lcom/tencent/tme/live/t1/d;)V
.end method

.method public finalize()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/tencent/tme/live/u1/a;->close()V

    return-void
.end method
