.class public Lcom/tencent/tme/live/n/g;
.super Lcom/tencent/tme/live/n/b;


# instance fields
.field public G:F

.field public H:F

.field public I:[F

.field public J:F

.field public K:F

.field public L:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/n/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/n/g;->G:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/tme/live/n/g;->H:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/n/g;->I:[F

    iput-object p1, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/k;)F
    .locals 3

    iget v0, p0, Lcom/tencent/tme/live/n/g;->L:I

    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 1
    iget v1, p1, Lcom/tencent/tme/live/o/a;->f:I

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/tencent/tme/live/n/g;->K:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p0, Lcom/tencent/tme/live/n/g;->J:F

    return p1

    .line 3
    :cond_0
    iget p1, p1, Lcom/tencent/tme/live/o/a;->f:I

    int-to-float v0, p1

    .line 4
    iget v1, p0, Lcom/tencent/tme/live/n/b;->m:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput p1, p0, Lcom/tencent/tme/live/n/g;->L:I

    iput v1, p0, Lcom/tencent/tme/live/n/g;->K:F

    iput v0, p0, Lcom/tencent/tme/live/n/g;->J:F

    return v0
.end method

.method public a(Lcom/tencent/tme/live/n/k;FF)V
    .locals 4

    iget-object p2, p0, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v2, p2, Lcom/tencent/tme/live/n/e;->c:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n/g;->a(Lcom/tencent/tme/live/n/k;)F

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/n/g;->G:F

    iput p3, p0, Lcom/tencent/tme/live/n/g;->H:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n/b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/n/b;->a(Z)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/tencent/tme/live/n/g;->H:F

    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 5
    iget p1, p1, Lcom/tencent/tme/live/o/a;->f:I

    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/tencent/tme/live/n/g;->G:F

    :cond_2
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/k;J)[F
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n/g;->a(Lcom/tencent/tme/live/n/k;)F

    move-result p1

    iget-object p2, p0, Lcom/tencent/tme/live/n/g;->I:[F

    if-nez p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/tencent/tme/live/n/g;->I:[F

    :cond_1
    iget-object p2, p0, Lcom/tencent/tme/live/n/g;->I:[F

    const/4 p3, 0x0

    aput p1, p2, p3

    iget p3, p0, Lcom/tencent/tme/live/n/g;->H:F

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

    iget v0, p0, Lcom/tencent/tme/live/n/g;->H:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr v0, v1

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/g;->G:F

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/g;->G:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->m:F

    add-float/2addr v0, v1

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/g;->H:F

    return v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
