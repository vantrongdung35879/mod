.class public abstract Lcom/tencent/mna/q0;
.super Ljava/lang/Object;
.source "ForwardSpeedTester.java"

# interfaces
.implements Lcom/tencent/mna/e1;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lcom/tencent/mna/f1;

.field private final d:I

.field private final e:I

.field private volatile f:Z

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:I

.field private final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x30d40

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/q0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/q0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x493e0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/q0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput v1, p0, Lcom/tencent/mna/q0;->j:I

    const/16 v0, 0x12c

    .line 12
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/q0;->a:I

    .line 13
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/q0;->b:I

    .line 14
    invoke-static {p1}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/mna/q0;->d:I

    .line 15
    iput p2, p0, Lcom/tencent/mna/q0;->e:I

    .line 16
    iput p3, p0, Lcom/tencent/mna/q0;->k:I

    .line 17
    iput-object p4, p0, Lcom/tencent/mna/q0;->c:Lcom/tencent/mna/f1;

    .line 18
    iput-boolean v1, p0, Lcom/tencent/mna/q0;->f:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 10
    iget v0, p0, Lcom/tencent/mna/q0;->b:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/tencent/mna/q0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/mna/q0;->a(III)I

    move-result p1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mna/q0;->a(IZ)V

    return p1
.end method

.method protected abstract a(III)I
.end method

.method protected abstract a(IIIII)I
.end method

.method protected abstract a(IIIIILjava/lang/String;)I
.end method

.method public a(ILjava/lang/String;)I
    .locals 7

    .line 1
    iget v2, p0, Lcom/tencent/mna/q0;->d:I

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget v1, p0, Lcom/tencent/mna/q0;->a:I

    iget v3, p0, Lcom/tencent/mna/q0;->e:I

    iget-object v0, p0, Lcom/tencent/mna/q0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mna/q0;->a(IIIIILjava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/mna/q0;->d(I)I

    move-result p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/q0;->a(IZ)V

    return p1
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 16
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mna/q0;->f:Z

    .line 17
    iget-object v0, p0, Lcom/tencent/mna/q0;->c:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_0

    .line 18
    iget v1, p0, Lcom/tencent/mna/q0;->a:I

    invoke-interface {v0, v1}, Lcom/tencent/mna/f1;->b(I)I

    .line 20
    :cond_0
    iget v0, p0, Lcom/tencent/mna/q0;->a:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/tencent/mna/q0;->a:I

    .line 23
    iget-object v1, p0, Lcom/tencent/mna/q0;->c:Lcom/tencent/mna/f1;

    if-eqz v1, :cond_1

    .line 24
    iget v2, p0, Lcom/tencent/mna/q0;->b:I

    invoke-interface {v1, v2}, Lcom/tencent/mna/f1;->b(I)I

    .line 26
    :cond_1
    iget v1, p0, Lcom/tencent/mna/q0;->b:I

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->a(I)V

    .line 27
    iput v0, p0, Lcom/tencent/mna/q0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized a(IZ)V
    .locals 2

    const-string v0, "ForwardSpeedTester checkIfRebuildReqFd fd broken, errCode:"

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mna/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 30
    iget-boolean p1, p0, Lcom/tencent/mna/q0;->f:Z

    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 31
    iget p1, p0, Lcom/tencent/mna/q0;->a:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tencent/mna/q0;->b:I

    .line 32
    :goto_0
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 35
    iput p1, p0, Lcom/tencent/mna/q0;->a:I

    goto :goto_1

    .line 37
    :cond_1
    iput p1, p0, Lcom/tencent/mna/q0;->b:I

    :goto_1
    const/16 p1, 0x12c

    .line 39
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result p1

    .line 40
    iget-object v0, p0, Lcom/tencent/mna/q0;->c:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0, p1}, Lcom/tencent/mna/f1;->a(I)I

    :cond_2
    if-eqz p2, :cond_3

    .line 44
    iput p1, p0, Lcom/tencent/mna/q0;->a:I

    goto :goto_2

    .line 46
    :cond_3
    iput p1, p0, Lcom/tencent/mna/q0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
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

.method public b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/mna/q0;->a:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->a(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/tencent/mna/q0;->b:I

    invoke-static {v1, p1}, Lcom/tencent/mna/base/jni/e;->a(II)I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Forward Speed Tester, forwardFd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mna/q0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", edgeFd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/q0;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", set tos: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", forwardRes:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)I
    .locals 6

    .line 1
    iget v2, p0, Lcom/tencent/mna/q0;->d:I

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget v1, p0, Lcom/tencent/mna/q0;->a:I

    iget v3, p0, Lcom/tencent/mna/q0;->e:I

    iget-object v0, p0, Lcom/tencent/mna/q0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    move-object v0, p0

    move v5, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mna/q0;->a(IIIII)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/mna/q0;->d(I)I

    move-result p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mna/q0;->a(IZ)V

    return p1
.end method

.method protected d(I)I
    .locals 3

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/tencent/mna/q0;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/q0;->j:I

    .line 2
    iget v2, p0, Lcom/tencent/mna/q0;->k:I

    if-lez v2, :cond_1

    if-lt v0, v2, :cond_1

    .line 4
    iput v1, p0, Lcom/tencent/mna/q0;->j:I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Forward adjustDelayForContiguousLoss: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mna/q0;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", then delay:-10"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 p1, -0xa

    goto :goto_0

    .line 8
    :cond_0
    iput v1, p0, Lcom/tencent/mna/q0;->j:I

    :cond_1
    :goto_0
    return p1
.end method
