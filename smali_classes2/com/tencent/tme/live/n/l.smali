.class public Lcom/tencent/tme/live/n/l;
.super Lcom/tencent/tme/live/n/m;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/n/m;-><init>(Lcom/tencent/tme/live/n/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/k;FF)V
    .locals 6

    iget-object p2, p0, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v4, p2, Lcom/tencent/tme/live/n/e;->c:J

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tme/live/n/l;->b(Lcom/tencent/tme/live/n/k;J)F

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/n/m;->G:F

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result p1

    if-nez p1, :cond_0

    iput p3, p0, Lcom/tencent/tme/live/n/m;->H:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n/b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n/b;->a(Z)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/k;J)[F
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/n/l;->b(Lcom/tencent/tme/live/n/k;J)F

    move-result p1

    iget-object p2, p0, Lcom/tencent/tme/live/n/m;->I:[F

    if-nez p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/tencent/tme/live/n/m;->I:[F

    :cond_1
    iget-object p2, p0, Lcom/tencent/tme/live/n/m;->I:[F

    const/4 p3, 0x0

    aput p1, p2, p3

    iget p3, p0, Lcom/tencent/tme/live/n/m;->H:F

    const/4 v0, 0x1

    aput p3, p2, v0

    iget v0, p0, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr p1, v0

    const/4 v0, 0x2

    aput p1, p2, v0

    iget p1, p0, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p3, p1

    const/4 p1, 0x3

    aput p3, p2, p1

    return-object p2
.end method

.method public b()F
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/m;->H:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr v0, v1

    return v0
.end method

.method public b(Lcom/tencent/tme/live/n/k;J)F
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    sub-long/2addr p2, v0

    iget-object v0, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v0, v0, Lcom/tencent/tme/live/n/e;->c:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 1
    iget p1, p1, Lcom/tencent/tme/live/o/a;->f:I

    int-to-float p1, p1

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lcom/tencent/tme/live/n/m;->J:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/tencent/tme/live/n/b;->m:F

    sub-float/2addr p1, p2

    return p1
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/m;->G:F

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/m;->G:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v0, v1

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/m;->H:F

    return v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
