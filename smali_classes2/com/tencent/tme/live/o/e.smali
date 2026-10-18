.class public Lcom/tencent/tme/live/o/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/tencent/tme/live/n/n$c;

.field public d:F

.field public e:J

.field public f:J

.field public g:Lcom/tencent/tme/live/n/e;

.field public h:Lcom/tencent/tme/live/n/e;

.field public i:Lcom/tencent/tme/live/o/d;

.field public j:I

.field public k:I

.field public l:F

.field public m:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o/e;->a:I

    iput v0, p0, Lcom/tencent/tme/live/o/e;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/o/e;->d:F

    const-wide/16 v0, 0x2328

    iput-wide v0, p0, Lcom/tencent/tme/live/o/e;->e:J

    iput-wide v0, p0, Lcom/tencent/tme/live/o/e;->f:J

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/o/e;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/o/e;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(ILcom/tencent/tme/live/o/d;)Lcom/tencent/tme/live/n/b;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iput-object p2, p0, Lcom/tencent/tme/live/o/e;->i:Lcom/tencent/tme/live/o/d;

    .line 1
    iget-object v1, p2, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    .line 2
    check-cast v1, Lcom/tencent/tme/live/o/a;

    .line 3
    iget v2, v1, Lcom/tencent/tme/live/o/a;->f:I

    .line 4
    iget v1, v1, Lcom/tencent/tme/live/o/a;->g:I

    .line 5
    iget v3, p0, Lcom/tencent/tme/live/o/e;->d:F

    iget p2, p2, Lcom/tencent/tme/live/o/d;->b:F

    int-to-float v2, v2

    int-to-float v1, v1

    .line 6
    iget v4, p0, Lcom/tencent/tme/live/o/e;->a:I

    iput v4, p0, Lcom/tencent/tme/live/o/e;->j:I

    iget v4, p0, Lcom/tencent/tme/live/o/e;->b:I

    iput v4, p0, Lcom/tencent/tme/live/o/e;->k:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/tencent/tme/live/o/e;->a(FFF)Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    if-nez v4, :cond_1

    new-instance v4, Lcom/tencent/tme/live/n/e;

    iget-wide v5, p0, Lcom/tencent/tme/live/o/e;->e:J

    invoke-direct {v4, v5, v6}, Lcom/tencent/tme/live/n/e;-><init>(J)V

    iput-object v4, p0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    .line 7
    iget v5, v4, Lcom/tencent/tme/live/n/e;->b:F

    cmpl-float v5, v5, p2

    if-eqz v5, :cond_2

    iput p2, v4, Lcom/tencent/tme/live/n/e;->b:F

    iget-wide v5, v4, Lcom/tencent/tme/live/n/e;->a:J

    long-to-float v5, v5

    mul-float v5, v5, p2

    float-to-long v5, v5

    iput-wide v5, v4, Lcom/tencent/tme/live/n/e;->c:J

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    iget-wide v5, p0, Lcom/tencent/tme/live/o/e;->e:J

    .line 9
    iput-wide v5, v4, Lcom/tencent/tme/live/n/e;->a:J

    long-to-float p2, v5

    iget v5, v4, Lcom/tencent/tme/live/n/e;->b:F

    mul-float p2, p2, v5

    float-to-long v5, p2

    iput-wide v5, v4, Lcom/tencent/tme/live/n/e;->c:J

    .line 10
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    if-nez p2, :cond_3

    new-instance p2, Lcom/tencent/tme/live/n/e;

    const-wide/16 v4, 0x2328

    invoke-direct {p2, v4, v5}, Lcom/tencent/tme/live/n/e;-><init>(J)V

    iput-object p2, p0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/tencent/tme/live/o/e;->l:F

    iput p2, p0, Lcom/tencent/tme/live/o/e;->m:F

    if-eqz v3, :cond_7

    const/4 p2, 0x0

    cmpl-float v3, v2, p2

    if-lez v3, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tme/live/o/e;->b()V

    iget v3, p0, Lcom/tencent/tme/live/o/e;->j:I

    if-lez v3, :cond_4

    iget v4, p0, Lcom/tencent/tme/live/o/e;->k:I

    if-lez v4, :cond_4

    int-to-float v3, v3

    div-float v3, v2, v3

    iput v3, p0, Lcom/tencent/tme/live/o/e;->l:F

    int-to-float v3, v4

    div-float v3, v1, v3

    iput v3, p0, Lcom/tencent/tme/live/o/e;->m:F

    :cond_4
    float-to-int v3, v2

    float-to-int v4, v1

    iget v5, p0, Lcom/tencent/tme/live/o/e;->l:F

    iget v6, p0, Lcom/tencent/tme/live/o/e;->m:F

    .line 11
    iget-object v7, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    if-nez v7, :cond_5

    new-instance v7, Lcom/tencent/tme/live/n/n$c;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/tencent/tme/live/n/n$c;-><init>(IIFF)V

    iput-object v7, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    :cond_5
    iget-object v7, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/tencent/tme/live/n/n$c;->a(IIFF)V

    cmpl-float p2, v1, p2

    if-lez p2, :cond_7

    .line 12
    iget p2, p0, Lcom/tencent/tme/live/o/e;->l:F

    iget v5, p0, Lcom/tencent/tme/live/o/e;->m:F

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v6, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v3, v4, p2, v5}, Lcom/tencent/tme/live/n/n$c;->a(IIFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_7
    :goto_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_d

    const/4 p2, 0x4

    if-eq p1, p2, :cond_c

    const/4 p2, 0x5

    if-eq p1, p2, :cond_b

    const/4 p2, 0x6

    if-eq p1, p2, :cond_a

    const/4 p2, 0x7

    if-eq p1, p2, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    new-instance v0, Lcom/tencent/tme/live/n/n;

    invoke-direct {v0}, Lcom/tencent/tme/live/n/n;-><init>()V

    float-to-int p1, v2

    float-to-int p2, v1

    iget v1, p0, Lcom/tencent/tme/live/o/e;->l:F

    iget v2, p0, Lcom/tencent/tme/live/o/e;->m:F

    .line 15
    iget-object v3, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    if-nez v3, :cond_9

    new-instance v3, Lcom/tencent/tme/live/n/n$c;

    invoke-direct {v3, p1, p2, v1, v2}, Lcom/tencent/tme/live/n/n$c;-><init>(IIFF)V

    iput-object v3, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    :cond_9
    iget-object v3, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/tencent/tme/live/n/n$c;->a(IIFF)V

    .line 16
    iget-object p1, p0, Lcom/tencent/tme/live/o/e;->c:Lcom/tencent/tme/live/n/n$c;

    .line 17
    iput-object p1, v0, Lcom/tencent/tme/live/n/n;->O:Lcom/tencent/tme/live/n/n$c;

    iget p1, p1, Lcom/tencent/tme/live/n/n$c;->a:I

    iput p1, v0, Lcom/tencent/tme/live/n/n;->P:I

    goto :goto_2

    .line 18
    :cond_a
    new-instance v0, Lcom/tencent/tme/live/n/l;

    iget-object p1, p0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/n/l;-><init>(Lcom/tencent/tme/live/n/e;)V

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/tencent/tme/live/n/g;

    iget-object p1, p0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/n/g;-><init>(Lcom/tencent/tme/live/n/e;)V

    goto :goto_2

    :cond_c
    new-instance v0, Lcom/tencent/tme/live/n/f;

    iget-object p1, p0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/n/f;-><init>(Lcom/tencent/tme/live/n/e;)V

    goto :goto_2

    :cond_d
    new-instance v0, Lcom/tencent/tme/live/n/m;

    iget-object p1, p0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/n/m;-><init>(Lcom/tencent/tme/live/n/e;)V

    :goto_2
    return-object v0
.end method

.method public a(FFF)Z
    .locals 6

    iget v0, p0, Lcom/tencent/tme/live/o/e;->a:I

    float-to-int v1, p1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/o/e;->b:I

    float-to-int v2, p2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/o/e;->d:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    mul-float p1, p1, p3

    const v0, 0x442a8000    # 682.0f

    div-float/2addr p1, v0

    const v0, 0x460ca000    # 9000.0f

    mul-float p1, p1, v0

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/tencent/tme/live/o/e;->e:J

    const-wide/32 v4, 0x3f7a0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tme/live/o/e;->e:J

    const-wide/16 v4, 0x2328

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tme/live/o/e;->e:J

    iput v1, p0, Lcom/tencent/tme/live/o/e;->a:I

    float-to-int p1, p2

    iput p1, p0, Lcom/tencent/tme/live/o/e;->b:I

    iput p3, p0, Lcom/tencent/tme/live/o/e;->d:F

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/tencent/tme/live/n/e;->c:J

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/o/e;->h:Lcom/tencent/tme/live/n/e;

    if-nez v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Lcom/tencent/tme/live/n/e;->c:J

    :goto_1
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/tme/live/o/e;->f:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/o/e;->f:J

    const-wide/16 v2, 0x2328

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/o/e;->f:J

    iget-wide v2, p0, Lcom/tencent/tme/live/o/e;->e:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/o/e;->f:J

    return-void
.end method
