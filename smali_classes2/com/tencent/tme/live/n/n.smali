.class public Lcom/tencent/tme/live/n/n;
.super Lcom/tencent/tme/live/n/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/n/n$a;,
        Lcom/tencent/tme/live/n/n$b;,
        Lcom/tencent/tme/live/n/n$c;
    }
.end annotation


# instance fields
.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:J

.field public N:J

.field public O:Lcom/tencent/tme/live/n/n$c;

.field public P:I

.field public Q:I

.field public R:I

.field public S:[F

.field public T:[Lcom/tencent/tme/live/n/n$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/n/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/n/n;->Q:I

    iput v0, p0, Lcom/tencent/tme/live/n/n;->R:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/tme/live/n/n;->S:[F

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/k;FF)V
    .locals 0

    iget-object p2, p0, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    iget-wide p2, p2, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/n/n;->a(Lcom/tencent/tme/live/n/k;J)[F

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/k;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;Z)V

    iget p2, p0, Lcom/tencent/tme/live/n/n;->Q:I

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/tencent/tme/live/n/n;->R:I

    if-nez p2, :cond_1

    :cond_0
    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 13
    iget p2, p1, Lcom/tencent/tme/live/o/a;->f:I

    .line 14
    iput p2, p0, Lcom/tencent/tme/live/n/n;->Q:I

    .line 15
    iget p1, p1, Lcom/tencent/tme/live/o/a;->g:I

    .line 16
    iput p1, p0, Lcom/tencent/tme/live/n/n;->R:I

    :cond_1
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/k;J)[F
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/n/n;->O:Lcom/tencent/tme/live/n/n$c;

    iget v3, v0, Lcom/tencent/tme/live/n/n;->P:I

    iget v4, v0, Lcom/tencent/tme/live/n/n;->Q:I

    iget v5, v0, Lcom/tencent/tme/live/n/n;->R:I

    .line 1
    iget v6, v1, Lcom/tencent/tme/live/n/n$c;->a:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v3, :cond_8

    iget v3, v1, Lcom/tencent/tme/live/n/n$c;->d:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/tencent/tme/live/n/n$c;->e:I

    if-eq v3, v5, :cond_8

    .line 2
    :cond_1
    iget v3, v1, Lcom/tencent/tme/live/n/n$c;->b:F

    iget v1, v1, Lcom/tencent/tme/live/n/n$c;->c:F

    iget v4, v0, Lcom/tencent/tme/live/n/n;->G:F

    mul-float v4, v4, v3

    iget v5, v0, Lcom/tencent/tme/live/n/n;->H:F

    mul-float v5, v5, v1

    iget v6, v0, Lcom/tencent/tme/live/n/n;->I:F

    mul-float v6, v6, v3

    iget v13, v0, Lcom/tencent/tme/live/n/n;->J:F

    mul-float v13, v13, v1

    iget-wide v14, v0, Lcom/tencent/tme/live/n/n;->M:J

    iget-wide v7, v0, Lcom/tencent/tme/live/n/n;->N:J

    .line 3
    iput v4, v0, Lcom/tencent/tme/live/n/n;->G:F

    iput v5, v0, Lcom/tencent/tme/live/n/n;->H:F

    iput v6, v0, Lcom/tencent/tme/live/n/n;->I:F

    iput v13, v0, Lcom/tencent/tme/live/n/n;->J:F

    sub-float/2addr v6, v4

    iput v6, v0, Lcom/tencent/tme/live/n/n;->K:F

    sub-float/2addr v13, v5

    iput v13, v0, Lcom/tencent/tme/live/n/n;->L:F

    iput-wide v14, v0, Lcom/tencent/tme/live/n/n;->M:J

    iput-wide v7, v0, Lcom/tencent/tme/live/n/n;->N:J

    .line 4
    iget-object v4, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    if-eqz v4, :cond_7

    array-length v5, v4

    if-lez v5, :cond_7

    array-length v4, v4

    add-int/lit8 v5, v4, 0x1

    new-array v6, v10, [I

    aput v10, v6, v12

    aput v5, v6, v11

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    iget-object v7, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    aget-object v8, v7, v6

    .line 5
    iget-object v8, v8, Lcom/tencent/tme/live/n/n$a;->a:Lcom/tencent/tme/live/n/n$b;

    iget v13, v8, Lcom/tencent/tme/live/n/n$b;->a:F

    iget v8, v8, Lcom/tencent/tme/live/n/n$b;->b:F

    new-array v14, v10, [F

    aput v13, v14, v11

    aput v8, v14, v12

    .line 6
    aput-object v14, v5, v6

    add-int/lit8 v8, v6, 0x1

    aget-object v6, v7, v6

    .line 7
    iget-object v6, v6, Lcom/tencent/tme/live/n/n$a;->b:Lcom/tencent/tme/live/n/n$b;

    iget v7, v6, Lcom/tencent/tme/live/n/n$b;->a:F

    iget v6, v6, Lcom/tencent/tme/live/n/n$b;->b:F

    new-array v13, v10, [F

    aput v7, v13, v11

    aput v6, v13, v12

    .line 8
    aput-object v13, v5, v8

    move v6, v8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v6, v5, v4

    aget v7, v6, v11

    mul-float v7, v7, v3

    aput v7, v6, v11

    aget v7, v6, v12

    mul-float v7, v7, v1

    aput v7, v6, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_3
    array-length v1, v5

    aget-object v3, v5, v11

    aget v4, v3, v11

    iput v4, v0, Lcom/tencent/tme/live/n/n;->G:F

    aget v3, v3, v12

    iput v3, v0, Lcom/tencent/tme/live/n/n;->H:F

    sub-int/2addr v1, v12

    aget-object v1, v5, v1

    aget v3, v1, v11

    iput v3, v0, Lcom/tencent/tme/live/n/n;->I:F

    aget v1, v1, v12

    iput v1, v0, Lcom/tencent/tme/live/n/n;->J:F

    array-length v1, v5

    if-le v1, v12, :cond_7

    array-length v1, v5

    sub-int/2addr v1, v12

    new-array v1, v1, [Lcom/tencent/tme/live/n/n$a;

    iput-object v1, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    const/4 v1, 0x0

    :goto_2
    iget-object v3, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    new-instance v4, Lcom/tencent/tme/live/n/n$a;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/n/n$a;-><init>(Lcom/tencent/tme/live/n/n;)V

    aput-object v4, v3, v1

    new-instance v3, Lcom/tencent/tme/live/n/n$b;

    aget-object v6, v5, v1

    aget v7, v6, v11

    aget v6, v6, v12

    invoke-direct {v3, v0, v7, v6}, Lcom/tencent/tme/live/n/n$b;-><init>(Lcom/tencent/tme/live/n/n;FF)V

    new-instance v8, Lcom/tencent/tme/live/n/n$b;

    add-int/lit8 v1, v1, 0x1

    aget-object v13, v5, v1

    aget v14, v13, v11

    aget v13, v13, v12

    invoke-direct {v8, v0, v14, v13}, Lcom/tencent/tme/live/n/n$b;-><init>(Lcom/tencent/tme/live/n/n;FF)V

    .line 10
    iput-object v3, v4, Lcom/tencent/tme/live/n/n$a;->a:Lcom/tencent/tme/live/n/n$b;

    iput-object v8, v4, Lcom/tencent/tme/live/n/n$a;->b:Lcom/tencent/tme/live/n/n$b;

    sub-float/2addr v14, v7

    iput v14, v4, Lcom/tencent/tme/live/n/n$a;->f:F

    sub-float/2addr v13, v6

    iput v13, v4, Lcom/tencent/tme/live/n/n$a;->g:F

    goto :goto_2

    .line 11
    :cond_4
    array-length v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/tencent/tme/live/n/n$a;->a()F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    array-length v3, v1

    move-object v6, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_7

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/tencent/tme/live/n/n$a;->a()F

    move-result v8

    div-float/2addr v8, v5

    iget-wide v13, v0, Lcom/tencent/tme/live/n/n;->M:J

    long-to-float v13, v13

    mul-float v8, v8, v13

    float-to-long v13, v8

    iput-wide v13, v7, Lcom/tencent/tme/live/n/n$a;->c:J

    move v8, v3

    if-nez v6, :cond_6

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_6
    iget-wide v2, v6, Lcom/tencent/tme/live/n/n$a;->e:J

    :goto_5
    iput-wide v2, v7, Lcom/tencent/tme/live/n/n$a;->d:J

    add-long/2addr v2, v13

    iput-wide v2, v7, Lcom/tencent/tme/live/n/n$a;->e:J

    add-int/lit8 v4, v4, 0x1

    move-object v6, v7

    move v3, v8

    const/4 v2, 0x0

    goto :goto_4

    .line 12
    :cond_7
    iget-object v1, v0, Lcom/tencent/tme/live/n/n;->O:Lcom/tencent/tme/live/n/n$c;

    iget v2, v1, Lcom/tencent/tme/live/n/n$c;->a:I

    iput v2, v0, Lcom/tencent/tme/live/n/n;->P:I

    iget v2, v1, Lcom/tencent/tme/live/n/n$c;->d:I

    iput v2, v0, Lcom/tencent/tme/live/n/n;->Q:I

    iget v1, v1, Lcom/tencent/tme/live/n/n$c;->e:I

    iput v1, v0, Lcom/tencent/tme/live/n/n;->R:I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget v3, v0, Lcom/tencent/tme/live/n/n;->G:F

    iget v4, v0, Lcom/tencent/tme/live/n/n;->H:F

    iget-wide v5, v0, Lcom/tencent/tme/live/n/n;->N:J

    sub-long v5, v1, v5

    iget-wide v7, v0, Lcom/tencent/tme/live/n/n;->M:J

    const-wide/16 v13, 0x0

    cmp-long v15, v7, v13

    if-lez v15, :cond_e

    cmp-long v15, v5, v13

    if-ltz v15, :cond_e

    cmp-long v13, v5, v7

    if-gtz v13, :cond_e

    iget-object v13, v0, Lcom/tencent/tme/live/n/n;->T:[Lcom/tencent/tme/live/n/n$a;

    if-eqz v13, :cond_c

    array-length v7, v13

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_a

    aget-object v14, v13, v8

    move-object/from16 v16, v13

    iget-wide v12, v14, Lcom/tencent/tme/live/n/n$a;->d:J

    cmp-long v17, v5, v12

    if-ltz v17, :cond_9

    iget-wide v12, v14, Lcom/tencent/tme/live/n/n$a;->e:J

    cmp-long v17, v5, v12

    if-gez v17, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, v14, Lcom/tencent/tme/live/n/n$a;->b:Lcom/tencent/tme/live/n/n$b;

    iget v4, v3, Lcom/tencent/tme/live/n/n$b;->a:F

    iget v3, v3, Lcom/tencent/tme/live/n/n$b;->b:F

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, v16

    const/4 v12, 0x1

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_f

    iget v5, v14, Lcom/tencent/tme/live/n/n$a;->f:F

    iget v6, v14, Lcom/tencent/tme/live/n/n$a;->g:F

    iget-wide v7, v14, Lcom/tencent/tme/live/n/n$a;->d:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    iget-wide v7, v14, Lcom/tencent/tme/live/n/n$a;->c:J

    long-to-float v2, v7

    div-float/2addr v1, v2

    iget-object v2, v14, Lcom/tencent/tme/live/n/n$a;->a:Lcom/tencent/tme/live/n/n$b;

    iget v7, v2, Lcom/tencent/tme/live/n/n$b;->a:F

    iget v2, v2, Lcom/tencent/tme/live/n/n$b;->b:F

    cmpl-float v8, v5, v9

    if-eqz v8, :cond_b

    mul-float v5, v5, v1

    add-float/2addr v5, v7

    move v3, v5

    :cond_b
    cmpl-float v5, v6, v9

    if-eqz v5, :cond_f

    mul-float v6, v6, v1

    add-float v4, v6, v2

    goto :goto_8

    :cond_c
    long-to-float v1, v5

    long-to-float v2, v7

    div-float/2addr v1, v2

    iget v2, v0, Lcom/tencent/tme/live/n/n;->K:F

    cmpl-float v5, v2, v9

    if-eqz v5, :cond_d

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    :cond_d
    iget v2, v0, Lcom/tencent/tme/live/n/n;->L:F

    cmpl-float v5, v2, v9

    if-eqz v5, :cond_f

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    goto :goto_8

    :cond_e
    cmp-long v1, v5, v7

    if-lez v1, :cond_f

    iget v3, v0, Lcom/tencent/tme/live/n/n;->I:F

    iget v4, v0, Lcom/tencent/tme/live/n/n;->J:F

    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/tencent/tme/live/n/n;->S:[F

    aput v3, v1, v11

    const/4 v2, 0x1

    aput v4, v1, v2

    iget v5, v0, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v3, v5

    aput v3, v1, v10

    iget v3, v0, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr v4, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/n/b;->a(Z)V

    iget-object v1, v0, Lcom/tencent/tme/live/n/n;->S:[F

    return-object v1
.end method

.method public b()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/n/n;->S:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public c()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/n/n;->S:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/n/n;->S:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public e()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/n/n;->S:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
