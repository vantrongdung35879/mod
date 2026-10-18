.class public abstract Lcom/tencent/tme/live/n/b;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/tencent/tme/live/n/h;

.field public D:I

.field public E:I

.field public F:I

.field public a:J

.field public b:J

.field public c:Ljava/lang/CharSequence;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:B

.field public m:F

.field public n:F

.field public o:Lcom/tencent/tme/live/n/e;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Lcom/tencent/tme/live/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/o/g;"
        }
    .end annotation
.end field

.field public x:Z

.field public y:Lcom/tencent/tme/live/n/d;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/tme/live/n/b;->h:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/n/b;->i:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->j:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->k:I

    iput-byte v1, p0, Lcom/tencent/tme/live/n/b;->l:B

    iput v0, p0, Lcom/tencent/tme/live/n/b;->m:F

    iput v0, p0, Lcom/tencent/tme/live/n/b;->n:F

    iput v1, p0, Lcom/tencent/tme/live/n/b;->s:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->t:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->u:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/n/b;->v:I

    const/16 v2, 0xff

    iput v2, p0, Lcom/tencent/tme/live/n/b;->z:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->A:I

    iput v0, p0, Lcom/tencent/tme/live/n/b;->B:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iput v1, p0, Lcom/tencent/tme/live/n/b;->D:I

    iput v1, p0, Lcom/tencent/tme/live/n/b;->E:I

    iput v0, p0, Lcom/tencent/tme/live/n/b;->F:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/tme/live/n/h;->e:I

    iget v1, p0, Lcom/tencent/tme/live/n/b;->u:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/tme/live/n/b;->a:J

    iget-wide v2, p0, Lcom/tencent/tme/live/n/b;->b:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/n/b;->b:J

    iget-wide v0, p0, Lcom/tencent/tme/live/n/b;->a:J

    return-wide v0
.end method

.method public abstract a(Lcom/tencent/tme/live/n/k;FF)V
.end method

.method public a(Lcom/tencent/tme/live/n/k;Z)V
    .locals 5

    check-cast p1, Lcom/tencent/tme/live/o/a;

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    invoke-virtual {v0, p0, p2}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Z)Landroid/text/TextPaint;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 3
    iget-object v1, p1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 4
    iget-boolean v2, v1, Lcom/tencent/tme/live/o/a$a;->q:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    invoke-virtual {v1, p0, v0, p2}, Lcom/tencent/tme/live/o/b;->a(Lcom/tencent/tme/live/n/b;Landroid/text/TextPaint;Z)V

    iget p2, p0, Lcom/tencent/tme/live/n/b;->m:F

    iget v1, p0, Lcom/tencent/tme/live/n/b;->n:F

    .line 7
    iget v2, p0, Lcom/tencent/tme/live/n/b;->j:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iget v2, p0, Lcom/tencent/tme/live/n/b;->k:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/tme/live/n/b;->i:I

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    int-to-float v2, v2

    add-float/2addr p2, v2

    add-float/2addr v1, v2

    .line 8
    :cond_1
    iget-object v2, p1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 9
    iget-boolean v3, v2, Lcom/tencent/tme/live/o/a$a;->o:Z

    if-eqz v3, :cond_2

    iget-boolean v4, v2, Lcom/tencent/tme/live/o/a$a;->q:Z

    if-eqz v4, :cond_2

    iget v3, v2, Lcom/tencent/tme/live/o/a$a;->i:F

    iget v2, v2, Lcom/tencent/tme/live/o/a$a;->j:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget v2, v2, Lcom/tencent/tme/live/o/a$a;->i:F

    goto :goto_0

    :cond_3
    iget-boolean v3, v2, Lcom/tencent/tme/live/o/a$a;->q:Z

    if-eqz v3, :cond_4

    iget v2, v2, Lcom/tencent/tme/live/o/a$a;->j:F

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    add-float/2addr p2, v2

    .line 10
    iput p2, p0, Lcom/tencent/tme/live/n/b;->m:F

    iput v1, p0, Lcom/tencent/tme/live/n/b;->n:F

    .line 11
    iget-object p1, p1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 12
    iget-boolean p2, p1, Lcom/tencent/tme/live/o/a$a;->q:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p0, v0, p2}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget p1, p1, Lcom/tencent/tme/live/n/h;->a:I

    iput p1, p0, Lcom/tencent/tme/live/n/b;->t:I

    return-void

    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1

    throw p2
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget p1, p1, Lcom/tencent/tme/live/n/h;->b:I

    iput p1, p0, Lcom/tencent/tme/live/n/b;->s:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/tencent/tme/live/n/b;->r:I

    return-void
.end method

.method public abstract a(Lcom/tencent/tme/live/n/k;J)[F
.end method

.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method

.method public abstract f()I
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/b;->B:I

    iget-object v1, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/n/b;->A:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/b;->B:I

    iget-object v1, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/n/b;->A:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/n/b;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/n/b;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/n/b;->t:I

    iget-object v1, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/tencent/tme/live/n/d;->a:J

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v2, v2, Lcom/tencent/tme/live/n/e;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 3

    iget v0, p0, Lcom/tencent/tme/live/n/b;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/n/b;->s:I

    iget-object v2, p0, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v2, v2, Lcom/tencent/tme/live/n/h;->b:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/tencent/tme/live/n/d;->a:J

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide v2, v2, Lcom/tencent/tme/live/n/e;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
