.class public Lcom/tencent/tme/live/e2/m;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e2/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/e2/m;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 22

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v4, v1, Lcom/tencent/tme/live/e2/m;->o:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 1
    iget-object v4, v1, Lcom/tencent/tme/live/e2/m;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    int-to-long v6, v0

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v4, v1, Lcom/tencent/tme/live/e2/m;->e:J

    iget-wide v6, v1, Lcom/tencent/tme/live/e2/m;->f:J

    iget-wide v8, v1, Lcom/tencent/tme/live/e2/m;->g:J

    iget-wide v10, v1, Lcom/tencent/tme/live/e2/m;->h:J

    iget-wide v12, v1, Lcom/tencent/tme/live/e2/m;->k:J

    sub-long v12, v4, v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v14

    int-to-double v14, v0

    div-double/2addr v12, v14

    iget-wide v2, v1, Lcom/tencent/tme/live/e2/m;->l:J

    sub-long v2, v6, v2

    long-to-double v2, v2

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v16

    div-double/2addr v2, v14

    move-wide/from16 v18, v6

    iget-wide v6, v1, Lcom/tencent/tme/live/e2/m;->m:J

    sub-long v6, v8, v6

    long-to-double v6, v6

    mul-double v6, v6, v16

    div-double/2addr v6, v14

    move-wide/from16 v20, v8

    iget-wide v8, v1, Lcom/tencent/tme/live/e2/m;->n:J

    sub-long v8, v10, v8

    long-to-double v8, v8

    mul-double v8, v8, v16

    div-double/2addr v8, v14

    iget-wide v14, v1, Lcom/tencent/tme/live/e2/m;->a:D

    cmpl-double v0, v12, v14

    if-lez v0, :cond_1

    iput-wide v12, v1, Lcom/tencent/tme/live/e2/m;->a:D

    :cond_1
    iget-wide v12, v1, Lcom/tencent/tme/live/e2/m;->b:D

    cmpl-double v0, v2, v12

    if-lez v0, :cond_2

    iput-wide v2, v1, Lcom/tencent/tme/live/e2/m;->b:D

    :cond_2
    iget-wide v2, v1, Lcom/tencent/tme/live/e2/m;->c:D

    cmpl-double v0, v6, v2

    if-lez v0, :cond_3

    iput-wide v6, v1, Lcom/tencent/tme/live/e2/m;->c:D

    :cond_3
    iget-wide v2, v1, Lcom/tencent/tme/live/e2/m;->d:D

    cmpl-double v0, v8, v2

    if-lez v0, :cond_4

    iput-wide v8, v1, Lcom/tencent/tme/live/e2/m;->d:D

    :cond_4
    iput-wide v4, v1, Lcom/tencent/tme/live/e2/m;->k:J

    move-wide/from16 v2, v18

    iput-wide v2, v1, Lcom/tencent/tme/live/e2/m;->l:J

    move-wide/from16 v2, v20

    iput-wide v2, v1, Lcom/tencent/tme/live/e2/m;->m:J

    iput-wide v10, v1, Lcom/tencent/tme/live/e2/m;->n:J

    move-wide/from16 v2, p1

    iput-wide v2, v1, Lcom/tencent/tme/live/e2/m;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
