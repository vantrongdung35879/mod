.class final Lcom/tencent/gsdk/s0;
.super Ljava/lang/Object;
.source "ReporterFactory.java"


# static fields
.field private static final a:[I

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/gsdk/f0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 1
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/tencent/gsdk/s0;->a:[I

    .line 6
    new-instance v3, Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v3, Lcom/tencent/gsdk/s0;->b:Landroid/util/SparseArray;

    .line 9
    new-instance v4, Lcom/tencent/gsdk/l;

    invoke-direct {v4}, Lcom/tencent/gsdk/l;-><init>()V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/tencent/gsdk/a1;

    invoke-direct {v0}, Lcom/tencent/gsdk/a1;-><init>()V

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/tencent/gsdk/v;

    invoke-direct {v0}, Lcom/tencent/gsdk/v;-><init>()V

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/f0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/gsdk/s0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    and-int v5, v4, p0

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    sget-object v5, Lcom/tencent/gsdk/s0;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2
.end method
