.class public Lcom/tencent/tme/live/e2/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/e2/j;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/tencent/tme/live/e2/j;)V
    .locals 4

    check-cast p1, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getActivationTime()J

    move-result-wide v1

    .line 1
    iget-object v3, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getActivationTime()J

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getActivationTime()J

    move-result-wide v1

    .line 5
    iget-object p1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->o:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 6
    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_2
    move-exception p1

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public b(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    return-void
.end method
