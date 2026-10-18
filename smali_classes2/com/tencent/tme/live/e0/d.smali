.class public Lcom/tencent/tme/live/e0/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e0/d$a;
    }
.end annotation


# static fields
.field public static volatile d:Lcom/tencent/tme/live/e0/d;


# instance fields
.field public a:Lcom/tencent/tme/live/e0/e;

.field public b:Lcom/tencent/tme/live/e0/g;

.field public c:Lcom/tencent/tme/live/l0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/l0/c;

    invoke-direct {v0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e0/d;->c:Lcom/tencent/tme/live/l0/a;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/e0/c;)Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/c;->r:Landroid/os/Handler;

    .line 2
    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/c;->s:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static c()Lcom/tencent/tme/live/e0/d;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/e0/d;->d:Lcom/tencent/tme/live/e0/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/e0/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/e0/d;->d:Lcom/tencent/tme/live/e0/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/e0/d;

    invoke-direct {v1}, Lcom/tencent/tme/live/e0/d;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/e0/d;->d:Lcom/tencent/tme/live/e0/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/e0/d;->d:Lcom/tencent/tme/live/e0/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/tme/live/e0/c;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object p2, p2, Lcom/tencent/tme/live/e0/e;->m:Lcom/tencent/tme/live/e0/c;

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/e0/c$a;->a(Lcom/tencent/tme/live/e0/c;)Lcom/tencent/tme/live/e0/c$a;

    move-result-object p2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p2, Lcom/tencent/tme/live/e0/c$a;->s:Z

    .line 44
    new-instance v4, Lcom/tencent/tme/live/e0/c;

    .line 45
    invoke-direct {v4, p2}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    .line 46
    new-instance p2, Lcom/tencent/tme/live/e0/d$a;

    .line 47
    invoke-direct {p2}, Lcom/tencent/tme/live/e0/d$a;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/d;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    .line 49
    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Lcom/tencent/tme/live/f0/e;

    invoke-direct {v2, v1, v0}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    .line 50
    new-instance v3, Lcom/tencent/tme/live/k0/c;

    const/4 v0, 0x2

    invoke-direct {v3, p1, v2, v0}, Lcom/tencent/tme/live/k0/c;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/f0/e;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V

    .line 51
    iget-object p1, p2, Lcom/tencent/tme/live/e0/d$a;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Lcom/tencent/tme/live/e0/e;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Initialize ImageLoader with configuration"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/tme/live/e0/g;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/e0/g;-><init>(Lcom/tencent/tme/live/e0/e;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 41
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V
    .locals 10

    .line 4
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/d;->a()V

    if-eqz p2, :cond_12

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/tencent/tme/live/e0/d;->c:Lcom/tencent/tme/live/l0/a;

    :cond_0
    move-object v6, p4

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object p3, p3, Lcom/tencent/tme/live/e0/e;->m:Lcom/tencent/tme/live/e0/c;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 5
    iget-object p4, p4, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/tencent/tme/live/l0/a;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 7
    iget-object p4, p3, Lcom/tencent/tme/live/e0/c;->e:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_3

    iget p5, p3, Lcom/tencent/tme/live/e0/c;->b:I

    if-eqz p5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p2, v0}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-object p5, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object p5, p5, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    .line 9
    iget p3, p3, Lcom/tencent/tme/live/e0/c;->b:I

    if-eqz p3, :cond_4

    invoke-virtual {p5, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 10
    :cond_4
    invoke-interface {p2, p4}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/drawable/Drawable;)Z

    :goto_1
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, v0}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_5
    iget-object p4, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    .line 11
    iget-object p4, p4, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    sget-object v2, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 13
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->d()I

    move-result v2

    if-gtz v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->e()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    move p4, v2

    :goto_3
    new-instance v3, Lcom/tencent/tme/live/f0/e;

    invoke-direct {v3, v1, p4}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object p4, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 16
    iget-object p4, p4, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/tencent/tme/live/l0/a;->b(Ljava/lang/String;Landroid/view/View;)V

    iget-object p4, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object p4, p4, Lcom/tencent/tme/live/e0/e;->i:Lcom/tencent/tme/live/c0/b;

    invoke-interface {p4, v4}, Lcom/tencent/tme/live/c0/b;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const-string v1, "Load image from memory cache [%s]"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p3, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    if-eqz v0, :cond_a

    .line 19
    new-instance v9, Lcom/tencent/tme/live/e0/h;

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 20
    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object v8, v1

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/tencent/tme/live/e0/h;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/f0/e;Ljava/lang/String;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance p1, Lcom/tencent/tme/live/e0/m;

    iget-object p2, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    invoke-static {p3}, Lcom/tencent/tme/live/e0/d;->a(Lcom/tencent/tme/live/e0/c;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p1, p2, p4, v9, p5}, Lcom/tencent/tme/live/e0/m;-><init>(Lcom/tencent/tme/live/e0/g;Landroid/graphics/Bitmap;Lcom/tencent/tme/live/e0/h;Landroid/os/Handler;)V

    .line 22
    iget-boolean p2, p3, Lcom/tencent/tme/live/e0/c;->s:Z

    if-eqz p2, :cond_9

    .line 23
    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/m;->run()V

    goto/16 :goto_6

    :cond_9
    iget-object p2, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 24
    invoke-virtual {p2}, Lcom/tencent/tme/live/e0/g;->a()V

    iget-object p2, p2, Lcom/tencent/tme/live/e0/g;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 25
    :cond_a
    iget-object p3, p3, Lcom/tencent/tme/live/e0/c;->q:Lcom/tencent/tme/live/i0/a;

    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-interface {p2, p4}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/Bitmap;)Z

    .line 28
    invoke-interface {p2}, Lcom/tencent/tme/live/k0/a;->b()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, p4}, Lcom/tencent/tme/live/l0/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 29
    :cond_b
    iget-object p4, p3, Lcom/tencent/tme/live/e0/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_d

    iget v1, p3, Lcom/tencent/tme/live/e0/c;->a:I

    if-eqz v1, :cond_c

    goto :goto_4

    .line 33
    :cond_c
    iget-boolean p4, p3, Lcom/tencent/tme/live/e0/c;->g:Z

    if-eqz p4, :cond_f

    .line 34
    invoke-interface {p2, v0}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_5

    .line 30
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->a:Landroid/content/res/Resources;

    .line 31
    iget v1, p3, Lcom/tencent/tme/live/e0/c;->a:I

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 32
    :cond_e
    invoke-interface {p2, p4}, Lcom/tencent/tme/live/k0/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 34
    :cond_f
    :goto_5
    new-instance p4, Lcom/tencent/tme/live/e0/h;

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 35
    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object v8, v1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    .line 36
    invoke-direct/range {v0 .. v8}, Lcom/tencent/tme/live/e0/h;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/f0/e;Ljava/lang/String;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance p1, Lcom/tencent/tme/live/e0/l;

    iget-object p2, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    invoke-static {p3}, Lcom/tencent/tme/live/e0/d;->a(Lcom/tencent/tme/live/e0/c;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p1, p2, p4, p5}, Lcom/tencent/tme/live/e0/l;-><init>(Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/e0/h;Landroid/os/Handler;)V

    .line 37
    iget-boolean p2, p3, Lcom/tencent/tme/live/e0/c;->s:Z

    if-eqz p2, :cond_11

    .line 38
    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/l;->run()V

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    .line 39
    iget-object p3, p2, Lcom/tencent/tme/live/e0/g;->d:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/tencent/tme/live/e0/f;

    invoke-direct {p4, p2, p1}, Lcom/tencent/tme/live/e0/f;-><init>(Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/e0/l;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_6
    return-void

    .line 40
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Destroy ImageLoader"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->a:Lcom/tencent/tme/live/e0/e;

    iget-boolean v1, v1, Lcom/tencent/tme/live/e0/e;->d:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->b:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->a:Lcom/tencent/tme/live/e0/e;

    iget-boolean v1, v1, Lcom/tencent/tme/live/e0/e;->e:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->c:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    iget-object v1, v0, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/tencent/tme/live/y/a;->close()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/d;->b:Lcom/tencent/tme/live/e0/g;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    return-void
.end method

.method public d()Lcom/tencent/tme/live/c0/b;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/d;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->i:Lcom/tencent/tme/live/c0/b;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
