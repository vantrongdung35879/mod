.class Lcom/tencent/gsdk/v0;
.super Ljava/lang/Object;
.source "SpeedTestStatHelper.java"

# interfaces
.implements Lcom/tencent/gsdk/e0;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private d:I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field g:J

.field h:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/gsdk/v0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gsdk/v0;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/tencent/gsdk/v0;->g:J

    .line 19
    iput-wide v0, p0, Lcom/tencent/gsdk/v0;->h:J

    .line 22
    iput p1, p0, Lcom/tencent/gsdk/v0;->d:I

    return-void
.end method


# virtual methods
.method public a(S)V
    .locals 6

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 1
    iget p1, p0, Lcom/tencent/gsdk/v0;->d:I

    int-to-short p1, p1

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/tencent/gsdk/v0;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 7
    iget-object v2, p0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-wide v2, p0, Lcom/tencent/gsdk/v0;->g:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/gsdk/v0;->g:J

    if-eq p1, v0, :cond_3

    .line 12
    iget v0, p0, Lcom/tencent/gsdk/v0;->d:I

    if-ge p1, v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-wide v0, p0, Lcom/tencent/gsdk/v0;->h:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/gsdk/v0;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/tencent/gsdk/v0;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/gsdk/v0;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 21
    throw p1
.end method
