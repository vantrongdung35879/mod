.class public Lcom/tencent/mna/u0;
.super Ljava/lang/Object;
.source "GameValueUploader.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:I

.field private c:I

.field private d:I

.field private volatile e:Z


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/u0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-boolean v1, p0, Lcom/tencent/mna/u0;->e:Z

    .line 13
    iput p1, p0, Lcom/tencent/mna/u0;->d:I

    .line 14
    iput p2, p0, Lcom/tencent/mna/u0;->b:I

    .line 15
    iput p3, p0, Lcom/tencent/mna/u0;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mna/u0;-><init>(III)V

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 2

    const-string v0, "GameValueUploader checkIfRebuildReqFd fd broken, errCode:"

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mna/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 8
    iget-boolean p1, p0, Lcom/tencent/mna/u0;->e:Z

    if-nez p1, :cond_0

    .line 9
    iget p1, p0, Lcom/tencent/mna/u0;->d:I

    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/16 p1, 0x12c

    .line 10
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/mna/u0;->d:I
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


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/tencent/mna/u0;->d:I

    iget v1, p0, Lcom/tencent/mna/u0;->b:I

    iget v2, p0, Lcom/tencent/mna/u0;->c:I

    iget-object v3, p0, Lcom/tencent/mna/u0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(IIIILjava/lang/String;I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/mna/u0;->a(I)V

    return p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mna/u0;->e:Z

    .line 4
    iget v0, p0, Lcom/tencent/mna/u0;->d:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/mna/u0;->d:I
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
