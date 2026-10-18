.class public Lcom/tencent/tme/live/m/c;
.super Lcom/tencent/tme/live/n/j$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$b<",
        "Lcom/tencent/tme/live/n/b;",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/tme/live/n/b;

.field public final synthetic c:I

.field public final synthetic d:Lcom/tencent/tme/live/n/b;

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b;ILcom/tencent/tme/live/n/b;ZI)V
    .locals 0

    iput p2, p0, Lcom/tencent/tme/live/m/c;->c:I

    iput-object p3, p0, Lcom/tencent/tme/live/m/c;->d:Lcom/tencent/tme/live/n/b;

    iput-boolean p4, p0, Lcom/tencent/tme/live/m/c;->e:Z

    iput p5, p0, Lcom/tencent/tme/live/m/c;->f:I

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$b;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/m/c;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/m/c;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/tme/live/m/c;->a:I

    iget v1, p0, Lcom/tencent/tme/live/m/c;->c:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v1, p1, Lcom/tencent/tme/live/n/b;->m:F

    iget-object v3, p0, Lcom/tencent/tme/live/m/c;->d:Lcom/tencent/tme/live/n/b;

    iget v4, v3, Lcom/tencent/tme/live/n/b;->m:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget v1, p1, Lcom/tencent/tme/live/n/b;->n:F

    iget v4, v3, Lcom/tencent/tme/live/n/b;->n:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget v1, p1, Lcom/tencent/tme/live/n/b;->i:I

    iget v4, v3, Lcom/tencent/tme/live/n/b;->i:I

    if-ne v1, v4, :cond_2

    iget v1, p1, Lcom/tencent/tme/live/n/b;->f:I

    iget v4, v3, Lcom/tencent/tme/live/n/b;->f:I

    if-ne v1, v4, :cond_2

    iget-object v1, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    iget-object v3, v3, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/tencent/tme/live/n/b;->z:I

    iget-object v3, p0, Lcom/tencent/tme/live/m/c;->d:Lcom/tencent/tme/live/n/b;

    iget v3, v3, Lcom/tencent/tme/live/n/b;->z:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/tme/live/m/c;->e:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    iget-object v0, v0, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    iget v1, v0, Lcom/tencent/tme/live/o/h;->d:I

    int-to-float v1, v1

    .line 5
    iget-object v3, p0, Lcom/tencent/tme/live/m/c;->d:Lcom/tencent/tme/live/n/b;

    iget v4, v3, Lcom/tencent/tme/live/n/b;->m:F

    sub-float/2addr v1, v4

    .line 6
    iget v0, v0, Lcom/tencent/tme/live/o/h;->e:I

    int-to-float v0, v0

    .line 7
    iget v3, v3, Lcom/tencent/tme/live/n/b;->n:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/tencent/tme/live/m/c;->f:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_6

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_6

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/live/m/c;->b:Lcom/tencent/tme/live/n/b;

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return v2
.end method
