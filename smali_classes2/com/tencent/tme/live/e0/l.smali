.class public final Lcom/tencent/tme/live/e0/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/tme/live/n0/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e0/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/e0/g;

.field public final b:Lcom/tencent/tme/live/e0/h;

.field public final c:Landroid/os/Handler;

.field public final d:Lcom/tencent/tme/live/e0/e;

.field public final e:Lcom/tencent/tme/live/j0/b;

.field public final f:Lcom/tencent/tme/live/j0/b;

.field public final g:Lcom/tencent/tme/live/j0/b;

.field public final h:Lcom/tencent/tme/live/h0/b;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/tencent/tme/live/k0/a;

.field public final l:Lcom/tencent/tme/live/f0/e;

.field public final m:Lcom/tencent/tme/live/e0/c;

.field public final n:Lcom/tencent/tme/live/l0/a;

.field public final o:Lcom/tencent/tme/live/l0/b;

.field public final p:Z

.field public q:Lcom/tencent/tme/live/f0/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/e0/h;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tme/live/f0/f;->a:Lcom/tencent/tme/live/f0/f;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/l;->q:Lcom/tencent/tme/live/f0/f;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    iput-object p2, p0, Lcom/tencent/tme/live/e0/l;->b:Lcom/tencent/tme/live/e0/h;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/l;->c:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/tme/live/e0/g;->a:Lcom/tencent/tme/live/e0/e;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object p3, p1, Lcom/tencent/tme/live/e0/e;->k:Lcom/tencent/tme/live/j0/b;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/l;->e:Lcom/tencent/tme/live/j0/b;

    iget-object p3, p1, Lcom/tencent/tme/live/e0/e;->n:Lcom/tencent/tme/live/j0/b;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/l;->f:Lcom/tencent/tme/live/j0/b;

    iget-object p3, p1, Lcom/tencent/tme/live/e0/e;->o:Lcom/tencent/tme/live/j0/b;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/l;->g:Lcom/tencent/tme/live/j0/b;

    iget-object p1, p1, Lcom/tencent/tme/live/e0/e;->l:Lcom/tencent/tme/live/h0/b;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->h:Lcom/tencent/tme/live/h0/b;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->c:Lcom/tencent/tme/live/k0/a;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->d:Lcom/tencent/tme/live/f0/e;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->l:Lcom/tencent/tme/live/f0/e;

    iget-object p1, p2, Lcom/tencent/tme/live/e0/h;->e:Lcom/tencent/tme/live/e0/c;

    iput-object p1, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    iget-object p3, p2, Lcom/tencent/tme/live/e0/h;->f:Lcom/tencent/tme/live/l0/a;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/l;->n:Lcom/tencent/tme/live/l0/a;

    iget-object p2, p2, Lcom/tencent/tme/live/e0/h;->g:Lcom/tencent/tme/live/l0/b;

    iput-object p2, p0, Lcom/tencent/tme/live/e0/l;->o:Lcom/tencent/tme/live/l0/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/c;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/e0/l;->p:Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget-object p1, p3, Lcom/tencent/tme/live/e0/g;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->c()I

    move-result v6

    new-instance v0, Lcom/tencent/tme/live/h0/c;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/tme/live/e0/l;->l:Lcom/tencent/tme/live/f0/e;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->c()Lcom/tencent/tme/live/j0/b;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/tencent/tme/live/h0/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/f0/e;ILcom/tencent/tme/live/j0/b;Lcom/tencent/tme/live/e0/c;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e0/l;->h:Lcom/tencent/tme/live/h0/b;

    check-cast p1, Lcom/tencent/tme/live/h0/a;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/h0/a;->a(Lcom/tencent/tme/live/h0/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/e0/l$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e0/l$a;-><init>(Lcom/tencent/tme/live/e0/l;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lcom/tencent/tme/live/e0/l$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e0/l$a;-><init>(Lcom/tencent/tme/live/e0/l;)V

    throw v0
.end method

.method public final a(ILjava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/e0/l;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/e0/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tme/live/e0/j;-><init>(Lcom/tencent/tme/live/e0/l;ILjava/lang/Throwable;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e0/l;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->c()Lcom/tencent/tme/live/j0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 1
    iget-object v2, v2, Lcom/tencent/tme/live/e0/c;->n:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/tencent/tme/live/j0/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const/4 v3, 0x0

    .line 3
    const-string v4, "No stream for image [%s]"

    invoke-static {v0, v3, v4, v1}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object v1, v1, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/tencent/tme/live/y/a;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/tencent/tme/live/n0/b$a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final c()Lcom/tencent/tme/live/j0/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->f:Lcom/tencent/tme/live/j0/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->g:Lcom/tencent/tme/live/j0/b;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->e:Lcom/tencent/tme/live/j0/b;

    :goto_0
    return-object v0
.end method

.method public final d()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "Task was interrupted [%s]"

    invoke-static {v0, v3}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/k0/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v0, v3}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->k:Lcom/tencent/tme/live/k0/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Lcom/tencent/tme/live/k0/a;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v0, v3}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cache image on disk [%s]"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public final i()Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object v2, v2, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tencent/tme/live/y/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    iget-object v5, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/tencent/tme/live/f0/f;->b:Lcom/tencent/tme/live/f0/f;

    iput-object v4, p0, Lcom/tencent/tme/live/e0/l;->q:Lcom/tencent/tme/live/f0/f;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->a()V

    sget-object v4, Lcom/tencent/tme/live/j0/b$a;->e:Lcom/tencent/tme/live/j0/b$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tencent/tme/live/j0/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/tencent/tme/live/e0/l$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    iget-object v5, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/tencent/tme/live/f0/f;->a:Lcom/tencent/tme/live/f0/f;

    iput-object v3, p0, Lcom/tencent/tme/live/e0/l;->q:Lcom/tencent/tme/live/f0/f;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 1
    iget-boolean v4, v4, Lcom/tencent/tme/live/e0/c;->i:Z

    if-eqz v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object v4, v4, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    iget-object v5, p0, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/tencent/tme/live/y/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/tencent/tme/live/j0/b$a;->e:Lcom/tencent/tme/live/j0/b$a;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/tme/live/j0/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->a()V

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/tencent/tme/live/e0/l;->a(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/tencent/tme/live/e0/l$a; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x5

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x4

    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/tencent/tme/live/e0/l;->a(ILjava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v2

    :goto_4
    invoke-static {v2}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/tencent/tme/live/e0/l;->a(ILjava/lang/Throwable;)V

    :goto_5
    move-object v2, v1

    goto :goto_6

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-object v2, v1

    :catch_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/e0/l;->a(ILjava/lang/Throwable;)V

    :cond_4
    :goto_6
    return-object v2
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/e0/g;->j:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-static {v0, v7}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    .line 6
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->j:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-static {v0, v7}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v5

    .line 8
    invoke-static {v3, v2, v0, v7}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->e()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 11
    iget v0, v0, Lcom/tencent/tme/live/e0/c;->l:I

    if-lez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v4

    const-string v0, "Delay %d ms before loading...  [%s]"

    invoke-static {v0, v6}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 13
    iget v0, v0, Lcom/tencent/tme/live/e0/c;->l:I

    int-to-long v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->e()Z

    move-result v0

    goto :goto_4

    :catch_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    .line 15
    const-string v0, "Task was interrupted [%s]"

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/tencent/tme/live/e0/l;->b:Lcom/tencent/tme/live/e0/h;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/h;->h:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v1, "Start display image task [%s]"

    invoke-static {v1, v6}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v1, "Image already is loading. Waiting... [%s]"

    invoke-static {v1, v6}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->a()V

    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object v1, v1, Lcom/tencent/tme/live/e0/e;->i:Lcom/tencent/tme/live/c0/b;

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/tencent/tme/live/c0/b;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    sget-object v6, Lcom/tencent/tme/live/f0/f;->c:Lcom/tencent/tme/live/f0/f;

    iput-object v6, p0, Lcom/tencent/tme/live/e0/l;->q:Lcom/tencent/tme/live/f0/f;

    const-string v6, "...Get cached bitmap from memory after waiting. [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v8}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->i()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Lcom/tencent/tme/live/e0/l$a; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->a()V

    .line 17
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->d()Z

    move-result v6

    if-nez v6, :cond_10

    .line 18
    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 19
    iget-object v6, v6, Lcom/tencent/tme/live/e0/c;->o:Lcom/tencent/tme/live/m0/a;

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_b

    .line 20
    const-string v6, "PreProcess image before caching in memory [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v8}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 21
    iget-object v6, v6, Lcom/tencent/tme/live/e0/c;->o:Lcom/tencent/tme/live/m0/a;

    .line 22
    invoke-interface {v6, v1}, Lcom/tencent/tme/live/m0/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v6, "Pre-processor returned null [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    .line 23
    invoke-static {v3, v2, v6, v8}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 24
    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 25
    iget-boolean v6, v6, Lcom/tencent/tme/live/e0/c;->h:Z

    if-eqz v6, :cond_c

    .line 26
    const-string v6, "Cache image in memory [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v8}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->d:Lcom/tencent/tme/live/e0/e;

    iget-object v6, v6, Lcom/tencent/tme/live/e0/e;->i:Lcom/tencent/tme/live/c0/b;

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Lcom/tencent/tme/live/c0/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 27
    iget-object v6, v6, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_e

    .line 28
    const-string v6, "PostProcess image before displaying [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v8}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/tme/live/e0/l;->m:Lcom/tencent/tme/live/e0/c;

    .line 29
    iget-object v6, v6, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    .line 30
    invoke-interface {v6, v1}, Lcom/tencent/tme/live/m0/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v6, "Post-processor returned null [%s]"

    iget-object v7, p0, Lcom/tencent/tme/live/e0/l;->j:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    .line 31
    invoke-static {v3, v2, v6, v4}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_e
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->a()V

    .line 33
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->d()Z

    move-result v2
    :try_end_5
    .catch Lcom/tencent/tme/live/e0/l$a; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_f

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/tencent/tme/live/e0/b;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->b:Lcom/tencent/tme/live/e0/h;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    iget-object v4, p0, Lcom/tencent/tme/live/e0/l;->q:Lcom/tencent/tme/live/f0/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tme/live/e0/b;-><init>(Landroid/graphics/Bitmap;Lcom/tencent/tme/live/e0/h;Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/f0/f;)V

    iget-boolean v1, p0, Lcom/tencent/tme/live/e0/l;->p:Z

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V

    return-void

    .line 35
    :cond_f
    :try_start_6
    new-instance v1, Lcom/tencent/tme/live/e0/l$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e0/l$a;-><init>(Lcom/tencent/tme/live/e0/l;)V

    throw v1

    :cond_10
    new-instance v1, Lcom/tencent/tme/live/e0/l$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e0/l$a;-><init>(Lcom/tencent/tme/live/e0/l;)V

    throw v1
    :try_end_6
    .catch Lcom/tencent/tme/live/e0/l$a; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_a

    .line 36
    :catch_2
    :try_start_7
    iget-boolean v1, p0, Lcom/tencent/tme/live/e0/l;->p:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    new-instance v1, Lcom/tencent/tme/live/e0/k;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e0/k;-><init>(Lcom/tencent/tme/live/e0/l;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e0/l;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    invoke-static {v1, v5, v2, v3}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 37
    :cond_12
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
