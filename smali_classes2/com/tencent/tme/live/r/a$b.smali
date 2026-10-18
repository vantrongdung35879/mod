.class public Lcom/tencent/tme/live/r/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/tencent/tme/live/n/d;

.field public c:I

.field public d:I

.field public e:Lcom/tencent/tme/live/n/b;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:J

.field public r:J

.field public s:J

.field public t:Lcom/tencent/tme/live/n/j;

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/n/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/n/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/r/a$b;->t:Lcom/tencent/tme/live/n/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/tencent/tme/live/r/a$b;->k:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->k:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->j:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->i:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->h:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->g:I

    iput v0, p0, Lcom/tencent/tme/live/r/a$b;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/tme/live/r/a$b;->m:J

    iput-wide v1, p0, Lcom/tencent/tme/live/r/a$b;->o:J

    iput-wide v1, p0, Lcom/tencent/tme/live/r/a$b;->n:J

    iput-wide v1, p0, Lcom/tencent/tme/live/r/a$b;->q:J

    iput-boolean v0, p0, Lcom/tencent/tme/live/r/a$b;->p:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/r/a$b;->t:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
