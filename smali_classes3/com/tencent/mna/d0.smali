.class public Lcom/tencent/mna/d0;
.super Ljava/lang/Object;
.source "DirectSpeedTester.java"

# interfaces
.implements Lcom/tencent/mna/d1;


# instance fields
.field protected final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:[B

.field protected h:Lcom/tencent/mna/f1;

.field private volatile i:Z

.field private final j:I

.field private k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x30d40

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/d0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/d0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/d0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    iput v1, p0, Lcom/tencent/mna/d0;->k:I

    const/16 v0, 0x12c

    .line 19
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/d0;->f:I

    .line 20
    iput-object p4, p0, Lcom/tencent/mna/d0;->h:Lcom/tencent/mna/f1;

    if-eqz p4, :cond_0

    .line 23
    invoke-interface {p4, v0}, Lcom/tencent/mna/f1;->a(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 25
    :goto_0
    invoke-static {p1}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/d0;->d:I

    .line 26
    invoke-static {p1}, Lcom/tencent/mna/n1;->h(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mna/d0;->g:[B

    .line 27
    iput p2, p0, Lcom/tencent/mna/d0;->e:I

    .line 28
    iput p3, p0, Lcom/tencent/mna/d0;->j:I

    .line 29
    iput-boolean v1, p0, Lcom/tencent/mna/d0;->i:Z

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", speedAddr:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/mna/d0;->g:[B

    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", maxContiguousLossCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", networkBinding:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bindRes:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 3

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 26
    iget v0, p0, Lcom/tencent/mna/d0;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/d0;->k:I

    .line 27
    iget v2, p0, Lcom/tencent/mna/d0;->j:I

    if-lez v2, :cond_1

    if-lt v0, v2, :cond_1

    .line 29
    iput v1, p0, Lcom/tencent/mna/d0;->k:I

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Direct adjustDelayForContiguousLoss: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mna/d0;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", then delay:-10"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 p1, -0xa

    goto :goto_0

    .line 33
    :cond_0
    iput v1, p0, Lcom/tencent/mna/d0;->k:I

    :cond_1
    :goto_0
    return p1
.end method

.method public a(ILjava/lang/String;)I
    .locals 6

    .line 14
    iget-object v1, p0, Lcom/tencent/mna/d0;->g:[B

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_0
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget-object v3, p0, Lcom/tencent/mna/d0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->b(I[BIILjava/lang/String;I)I

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->a(I)I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    return p1
.end method

.method public a(ILjava/lang/String;Z)I
    .locals 6

    .line 5
    iget-object v1, p0, Lcom/tencent/mna/d0;->g:[B

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 8
    :cond_0
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget-object p3, p0, Lcom/tencent/mna/d0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object v4, p2

    move v5, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(I[BIILjava/lang/String;I)I

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->a(I)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    return p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 20
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mna/d0;->i:Z

    .line 21
    iget-object v0, p0, Lcom/tencent/mna/d0;->h:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_0

    .line 22
    iget v1, p0, Lcom/tencent/mna/d0;->f:I

    invoke-interface {v0, v1}, Lcom/tencent/mna/f1;->b(I)I

    .line 24
    :cond_0
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/tencent/mna/d0;->f:I
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

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/d0;->d:I

    .line 2
    invoke-static {p1}, Lcom/tencent/mna/n1;->h(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/d0;->g:[B

    .line 3
    iput p2, p0, Lcom/tencent/mna/d0;->e:I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DirectSpeedTester reset ip:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", setSpeedIp:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/mna/d0;->g:[B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->a(II)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Direct Speed Tester, fd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mna/d0;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set tos: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)I
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/tencent/mna/d0;->g:[B

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget-object v3, p0, Lcom/tencent/mna/d0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const-string v4, "S::D"

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(I[BIILjava/lang/String;I)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->a(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    return p1
.end method

.method protected declared-synchronized d(I)V
    .locals 2

    const-string v0, "DirectSpeedTester checkIfRebuildReqFd fd broken, errCode:"

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mna/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/tencent/mna/d0;->i:Z

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/tencent/mna/d0;->f:I

    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/16 p1, 0x12c

    .line 5
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/mna/d0;->f:I

    .line 6
    iget-object v0, p0, Lcom/tencent/mna/d0;->h:Lcom/tencent/mna/f1;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/mna/f1;->a(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
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
