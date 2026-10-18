.class public Lcom/tencent/tme/live/p2/f;
.super Lcom/tencent/tme/live/p2/d;


# instance fields
.field public A:I

.field public n:Lcom/tencent/tme/live/p2/o;

.field public o:Lcom/tencent/tme/live/p2/o;

.field public p:Lcom/tencent/tme/live/p2/j;

.field public q:I

.field public r:Lcom/tencent/tme/live/q2/d;

.field public final s:Z

.field public t:J

.field public u:Z

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:J

.field public x:J

.field public y:J

.field public z:Lcom/tencent/tme/live/q2/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tme/live/p2/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/p2/f;->t:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/tme/live/p2/f;->u:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/tencent/tme/live/p2/f;->v:Ljava/util/Set;

    iput-wide v0, p0, Lcom/tencent/tme/live/p2/f;->w:J

    iput-wide v0, p0, Lcom/tencent/tme/live/p2/f;->x:J

    iput-wide v0, p0, Lcom/tencent/tme/live/p2/f;->y:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/tme/live/p2/f;->A:I

    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/f;->s:Z

    new-instance p1, Lcom/tencent/tme/live/q2/a;

    invoke-direct {p1}, Lcom/tencent/tme/live/q2/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/p2/f;->z:Lcom/tencent/tme/live/q2/a;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tme/live/p2/d;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/tme/live/p2/i;
    .locals 8

    new-instance v7, Lcom/tencent/tme/live/p2/n;

    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/f;->s:Z

    .line 1
    iget-object v3, p0, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    .line 2
    iget-object v4, p0, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/tencent/tme/live/p2/n;-><init>(Ljava/lang/String;ZLcom/tencent/tme/live/p2/o;Lcom/tencent/tme/live/p2/j;Ljava/util/zip/Inflater;[B)V

    return-object v7
.end method

.method public a(ILjava/lang/String;J)V
    .locals 4

    .line 24
    const-string v0, "IHDR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "unexpected chunk "

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    goto/16 :goto_2

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-static {v1, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "PLTE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p3, "unexpected chunk here "

    invoke-static {p3, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    if-ltz v0, :cond_5

    if-gt v0, v3, :cond_5

    iput v3, p0, Lcom/tencent/tme/live/p2/f;->q:I

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-static {v1, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v0, "IEND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    if-lt v0, v3, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-static {v1, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    if-gt v0, v2, :cond_9

    iput v2, p0, Lcom/tencent/tme/live/p2/f;->q:I

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    if-gt v0, v1, :cond_a

    iput v1, p0, Lcom/tencent/tme/live/p2/f;->q:I

    goto :goto_2

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    .line 25
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/p2/d;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/p2/c;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/tencent/tme/live/p2/d;->a(Lcom/tencent/tme/live/p2/c;)V

    .line 4
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    const-string v1, "IHDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    new-instance v0, Lcom/tencent/tme/live/q2/p;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/tme/live/q2/p;-><init>(Lcom/tencent/tme/live/p2/o;)V

    .line 6
    iget-object v2, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 7
    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/q2/p;->a(Lcom/tencent/tme/live/q2/c;)V

    .line 8
    iget v4, v0, Lcom/tencent/tme/live/q2/p;->d:I

    if-lt v4, v1, :cond_e

    iget v5, v0, Lcom/tencent/tme/live/q2/p;->e:I

    if-lt v5, v1, :cond_e

    iget v2, v0, Lcom/tencent/tme/live/q2/p;->h:I

    if-nez v2, :cond_e

    iget v2, v0, Lcom/tencent/tme/live/q2/p;->i:I

    if-nez v2, :cond_e

    iget v6, v0, Lcom/tencent/tme/live/q2/p;->f:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    const-string v7, "bad IHDR: bitdepth invalid"

    const/16 v8, 0x10

    const/4 v9, 0x4

    if-eq v6, v1, :cond_1

    if-eq v6, v3, :cond_1

    if-eq v6, v9, :cond_1

    if-eq v6, v2, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-direct {p1, v7}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v10, v0, Lcom/tencent/tme/live/q2/p;->j:I

    if-ltz v10, :cond_d

    if-gt v10, v1, :cond_d

    iget v10, v0, Lcom/tencent/tme/live/q2/p;->g:I

    if-eqz v10, :cond_7

    const/4 v11, 0x6

    if-eq v10, v11, :cond_5

    if-eq v10, v3, :cond_5

    const/4 v3, 0x3

    if-eq v10, v3, :cond_3

    if-ne v10, v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string v0, "bad IHDR: invalid colormodel"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-direct {p1, v7}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-eq v6, v2, :cond_7

    if-ne v6, v8, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-direct {p1, v7}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    and-int/lit8 v2, v10, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    if-eqz v10, :cond_b

    if-ne v10, v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v8, 0x1

    .line 9
    :goto_6
    new-instance v10, Lcom/tencent/tme/live/p2/o;

    move-object v3, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/tencent/tme/live/p2/o;-><init>(IIIZZZ)V

    .line 10
    iput-object v10, p0, Lcom/tencent/tme/live/p2/f;->n:Lcom/tencent/tme/live/p2/o;

    iput-object v10, p0, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    .line 11
    iget v0, v0, Lcom/tencent/tme/live/q2/p;->j:I

    if-ne v0, v1, :cond_c

    .line 12
    new-instance v0, Lcom/tencent/tme/live/p2/j;

    invoke-direct {v0, v10}, Lcom/tencent/tme/live/p2/j;-><init>(Lcom/tencent/tme/live/p2/o;)V

    iput-object v0, p0, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    :cond_c
    new-instance v0, Lcom/tencent/tme/live/q2/d;

    iget-object v2, p0, Lcom/tencent/tme/live/p2/f;->n:Lcom/tencent/tme/live/p2/o;

    invoke-direct {v0, v2}, Lcom/tencent/tme/live/q2/d;-><init>(Lcom/tencent/tme/live/p2/o;)V

    iput-object v0, p0, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    goto :goto_7

    .line 13
    :cond_d
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string v0, "bad IHDR: interlace invalid"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string v0, "bad IHDR: col/row/compmethod/filmethod invalid"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_f
    :goto_7
    iget v0, p1, Lcom/tencent/tme/live/p2/c;->a:I

    if-ne v0, v1, :cond_10

    .line 15
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 16
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/p2/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v2, p0, Lcom/tencent/tme/live/p2/f;->t:J

    .line 17
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 18
    iget v0, v0, Lcom/tencent/tme/live/q2/c;->a:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tme/live/p2/f;->t:J

    :cond_10
    iget v0, p1, Lcom/tencent/tme/live/p2/c;->a:I

    if-eq v0, v1, :cond_11

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->z:Lcom/tencent/tme/live/q2/a;

    .line 19
    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 20
    iget-object v1, p0, Lcom/tencent/tme/live/p2/f;->n:Lcom/tencent/tme/live/p2/o;

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/tencent/tme/live/q2/a;->a(Lcom/tencent/tme/live/q2/c;Lcom/tencent/tme/live/p2/o;)Lcom/tencent/tme/live/q2/e;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v0, v0, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/tencent/tme/live/q2/e;->a:Ljava/lang/String;

    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/tencent/tme/live/p2/f;->u:Z

    return p1
.end method

.method public b()Lcom/tencent/tme/live/p2/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    return-object v0
.end method

.method public b(ILjava/lang/String;)Z
    .locals 9

    iget-wide v0, p0, Lcom/tencent/tme/live/p2/f;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    int-to-long v4, p1

    .line 1
    iget-wide v6, p0, Lcom/tencent/tme/live/p2/d;->h:J

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/tencent/tme/live/p2/x;

    const-string v0, "Maximum total bytes to read exceeeded: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tme/live/p2/f;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-wide v1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->v:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/tencent/tme/live/q2/b;->a:[B

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    .line 6
    :cond_3
    iget-wide v4, p0, Lcom/tencent/tme/live/p2/f;->x:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    int-to-long v6, p1

    cmp-long v8, v6, v4

    if-lez v8, :cond_4

    return v1

    :cond_4
    iget-wide v4, p0, Lcom/tencent/tme/live/p2/f;->y:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    int-to-long v2, p1

    iget-wide v6, p0, Lcom/tencent/tme/live/p2/f;->t:J

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    return v1

    :cond_5
    iget p1, p0, Lcom/tencent/tme/live/p2/f;->A:I

    invoke-static {p1}, Lcom/tencent/tme/live/f0/b;->a(I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    :goto_1
    return v0

    :cond_8
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/tencent/tme/live/p2/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    .line 2
    instance-of v1, v0, Lcom/tencent/tme/live/p2/n;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/p2/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/p2/f;->q:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/tencent/tme/live/p2/f;->q:I

    :cond_0
    invoke-super {p0}, Lcom/tencent/tme/live/p2/d;->close()V

    return-void
.end method

.method public d()Lcom/tencent/tme/live/p2/o;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/f;->n:Lcom/tencent/tme/live/p2/o;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/q2/b;->a:[B

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
