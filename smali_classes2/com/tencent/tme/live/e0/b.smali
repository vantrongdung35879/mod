.class public final Lcom/tencent/tme/live/e0/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/tencent/tme/live/k0/a;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/tencent/tme/live/i0/a;

.field public final f:Lcom/tencent/tme/live/l0/a;

.field public final g:Lcom/tencent/tme/live/e0/g;

.field public final h:Lcom/tencent/tme/live/f0/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/tencent/tme/live/e0/h;Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/f0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->a:Landroid/graphics/Bitmap;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->c:Lcom/tencent/tme/live/k0/a;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->d:Ljava/lang/String;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->e:Lcom/tencent/tme/live/e0/c;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/c;->b()Lcom/tencent/tme/live/i0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->e:Lcom/tencent/tme/live/i0/a;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->f:Lcom/tencent/tme/live/l0/a;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/b;->f:Lcom/tencent/tme/live/l0/a;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/b;->g:Lcom/tencent/tme/live/e0/g;

    iput-object p4, p0, Lcom/tencent/tme/live/e0/b;->h:Lcom/tencent/tme/live/f0/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v0, v2}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->f:Lcom/tencent/tme/live/l0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->g:Lcom/tencent/tme/live/e0/g;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {v3}, Lcom/tencent/tme/live/k0/a;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/tencent/tme/live/e0/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v0, v2}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->f:Lcom/tencent/tme/live/l0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->h:Lcom/tencent/tme/live/f0/f;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/b;->d:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v0, v4}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->e:Lcom/tencent/tme/live/i0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/b;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {v2, v1}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/Bitmap;)Z

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->g:Lcom/tencent/tme/live/e0/g;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Lcom/tencent/tme/live/k0/a;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/tencent/tme/live/e0/b;->f:Lcom/tencent/tme/live/l0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/b;->c:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tme/live/e0/b;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
