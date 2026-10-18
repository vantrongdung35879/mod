.class public Lcom/tencent/tme/live/u/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/GestureDetector;

.field public b:Lcom/tencent/tme/live/m/l;

.field public c:Landroid/graphics/RectF;

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/u/a$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/u/a$a;-><init>(Lcom/tencent/tme/live/u/a;)V

    iput-object p1, p0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/u/a;->c:Landroid/graphics/RectF;

    new-instance v1, Landroid/view/GestureDetector;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/tencent/tme/live/u/a;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/u/a;FF)Lcom/tencent/tme/live/n/j;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/f;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/live/u/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v1, p0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    invoke-interface {v1}, Lcom/tencent/tme/live/m/l;->getCurrentVisibleDanmakus()Lcom/tencent/tme/live/n/j;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/tme/live/u/b;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/tencent/tme/live/u/b;-><init>(Lcom/tencent/tme/live/u/a;FFLcom/tencent/tme/live/n/j;)V

    .line 2
    iget-object p0, v1, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/tencent/tme/live/u/a;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    invoke-interface {v0}, Lcom/tencent/tme/live/m/l;->getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/m/l$a;->a(Lcom/tencent/tme/live/m/l;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/tencent/tme/live/u/a;Lcom/tencent/tme/live/n/j;Z)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    invoke-interface {p0}, Lcom/tencent/tme/live/m/l;->getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Lcom/tencent/tme/live/m/l$a;->a(Lcom/tencent/tme/live/n/j;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/tencent/tme/live/m/l$a;->b(Lcom/tencent/tme/live/n/j;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
