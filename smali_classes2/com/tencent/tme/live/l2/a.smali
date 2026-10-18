.class public abstract Lcom/tencent/tme/live/l2/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/Window;)I
.end method

.method public a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/tme/live/m2/b;->a(Landroid/view/Window;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/l2/a;->a(Landroid/view/Window;)I

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/tencent/tme/live/l2/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/l2/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/l2/a;->a(Landroid/view/Window;)I

    move-result v1

    .line 2
    iput v1, v0, Lcom/tencent/tme/live/l2/b;->a:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/l2/a;->b(Landroid/view/Window;)Z

    move-result p1

    .line 4
    iput-boolean p1, v0, Lcom/tencent/tme/live/l2/b;->b:Z

    .line 5
    invoke-interface {p2, v0}, Lcom/tencent/tme/live/l2/c;->a(Lcom/tencent/tme/live/l2/b;)V

    :cond_0
    return-void
.end method

.method public abstract b(Landroid/view/Window;)Z
.end method
