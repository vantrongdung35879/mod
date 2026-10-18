.class final Lcom/tencent/gsdk/l0;
.super Ljava/lang/Object;
.source "LoginEventHub.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/gsdk/k0;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/gsdk/l0;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/gsdk/l0;->b:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/tencent/gsdk/l0;->c:I

    .line 7
    iput v0, p0, Lcom/tencent/gsdk/l0;->d:I

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/gsdk/l0;->b:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/gsdk/l0;->c:I

    .line 3
    iput v0, p0, Lcom/tencent/gsdk/l0;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/k0;",
            ">;"
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/tencent/gsdk/l0;->c:I

    iget v1, p0, Lcom/tencent/gsdk/l0;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget v0, p0, Lcom/tencent/gsdk/l0;->b:I

    :goto_0
    iget v2, p0, Lcom/tencent/gsdk/l0;->c:I

    if-gt v0, v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/tencent/gsdk/l0;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/gsdk/k0;

    if-nez v2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/tencent/gsdk/l0;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 22
    iget v0, p0, Lcom/tencent/gsdk/l0;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/gsdk/l0;->b:I

    return-object v1
.end method

.method public a(Lcom/tencent/gsdk/k0;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Lcom/tencent/gsdk/k0;->a:I

    .line 2
    iget-object v1, p0, Lcom/tencent/gsdk/l0;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget p1, p0, Lcom/tencent/gsdk/l0;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/gsdk/l0;->b:I

    .line 4
    iget p1, p0, Lcom/tencent/gsdk/l0;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/gsdk/l0;->c:I

    .line 5
    iput v0, p0, Lcom/tencent/gsdk/l0;->d:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/k0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/l0;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/tencent/gsdk/l0;->d()V

    return-object v0
.end method

.method public c()Lcom/tencent/gsdk/k0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/l0;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/gsdk/l0;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/gsdk/k0;

    return-object v0
.end method
