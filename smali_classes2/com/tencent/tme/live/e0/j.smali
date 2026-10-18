.class public Lcom/tencent/tme/live/e0/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lcom/tencent/tme/live/e0/l;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/l;ILjava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e0/j;->c:Lcom/tencent/tme/live/e0/l;

    iput p2, p0, Lcom/tencent/tme/live/e0/j;->a:I

    iput-object p3, p0, Lcom/tencent/tme/live/e0/j;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/e0/j;->c:Lcom/tencent/tme/live/e0/l;

    iget-object v1, v0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 1
    iget-object v2, v1, Lcom/tencent/tme/live/e0/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget v3, v1, Lcom/tencent/tme/live/e0/c;->c:I

    if-eqz v3, :cond_2

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    .line 5
    iget v1, v1, Lcom/tencent/tme/live/e0/c;->c:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    :cond_1
    invoke-interface {v3, v2}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/drawable/Drawable;)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/e0/j;->c:Lcom/tencent/tme/live/e0/l;

    iget-object v1, v0, Lcom/tencent/tme/live/e0/l;->n:Lcom/tencent/tme/live/l0/a;

    iget-object v2, v0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/tencent/tme/live/f0/c;

    iget v4, p0, Lcom/tencent/tme/live/e0/j;->a:I

    iget-object v5, p0, Lcom/tencent/tme/live/e0/j;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/tencent/tme/live/f0/c;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V

    return-void
.end method
