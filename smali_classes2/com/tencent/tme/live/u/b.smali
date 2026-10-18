.class public Lcom/tencent/tme/live/u/b;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lcom/tencent/tme/live/n/j;

.field public final synthetic d:Lcom/tencent/tme/live/u/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/u/a;FFLcom/tencent/tme/live/n/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/u/b;->d:Lcom/tencent/tme/live/u/a;

    iput p2, p0, Lcom/tencent/tme/live/u/b;->a:F

    iput p3, p0, Lcom/tencent/tme/live/u/b;->b:F

    iput-object p4, p0, Lcom/tencent/tme/live/u/b;->c:Lcom/tencent/tme/live/n/j;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/tencent/tme/live/n/b;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/u/b;->d:Lcom/tencent/tme/live/u/a;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/u/a;->c:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->c()F

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->b()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/tencent/tme/live/u/b;->d:Lcom/tencent/tme/live/u/a;

    .line 4
    iget-object v1, v0, Lcom/tencent/tme/live/u/a;->c:Landroid/graphics/RectF;

    .line 5
    iget v2, p0, Lcom/tencent/tme/live/u/b;->a:F

    .line 6
    iget v3, v0, Lcom/tencent/tme/live/u/a;->d:F

    sub-float v4, v2, v3

    .line 7
    iget v5, p0, Lcom/tencent/tme/live/u/b;->b:F

    .line 8
    iget v0, v0, Lcom/tencent/tme/live/u/a;->e:F

    sub-float v6, v5, v0

    add-float/2addr v2, v3

    add-float/2addr v5, v0

    .line 9
    invoke-virtual {v1, v4, v6, v2, v5}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/u/b;->c:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
