.class public Lcom/tencent/tme/live/e0/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:Lcom/tencent/tme/live/c0/b;

.field public n:Lcom/tencent/tme/live/y/a;

.field public o:Lcom/tencent/tme/live/b0/a;

.field public p:Lcom/tencent/tme/live/j0/b;

.field public q:Lcom/tencent/tme/live/h0/b;

.field public r:Lcom/tencent/tme/live/e0/c;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->d:Z

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->e:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/tencent/tme/live/e0/e$a;->f:I

    iput v2, p0, Lcom/tencent/tme/live/e0/e$a;->g:I

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->h:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/tencent/tme/live/e0/e$a;->i:I

    iput v1, p0, Lcom/tencent/tme/live/e0/e$a;->j:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tme/live/e0/e$a;->k:J

    iput v1, p0, Lcom/tencent/tme/live/e0/e$a;->l:I

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->s:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/e0/e$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/e0/e$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/tme/live/e0/e$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/e$a;->i:I

    return p0
.end method

.method public static synthetic c(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/y/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/c0/b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    return-object p0
.end method

.method public static synthetic e(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/e0/c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    return-object p0
.end method

.method public static synthetic f(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/j0/b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    return-object p0
.end method

.method public static synthetic g(Lcom/tencent/tme/live/e0/e$a;)Lcom/tencent/tme/live/h0/b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->q:Lcom/tencent/tme/live/h0/b;

    return-object p0
.end method

.method public static synthetic h(Lcom/tencent/tme/live/e0/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/e$a;->d:Z

    return p0
.end method

.method public static synthetic i(Lcom/tencent/tme/live/e0/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/e$a;->e:Z

    return p0
.end method

.method public static synthetic j(Lcom/tencent/tme/live/e0/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tme/live/e0/e$a;->s:Z

    return p0
.end method

.method public static synthetic k(Lcom/tencent/tme/live/e0/e$a;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic l(Lcom/tencent/tme/live/e0/e$a;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic m(Lcom/tencent/tme/live/e0/e$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/e$a;->f:I

    return p0
.end method

.method public static synthetic n(Lcom/tencent/tme/live/e0/e$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/e0/e$a;->g:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/tencent/tme/live/e0/e$a;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 30
    const-string v3, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    iput p1, p0, Lcom/tencent/tme/live/e0/e$a;->l:I

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxFileCount must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/c0/b;)Lcom/tencent/tme/live/e0/e$a;
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/e0/e$a;->j:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 32
    const-string v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x5

    invoke-static {v3, v1, v2, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    return-object p0
.end method

.method public a()Lcom/tencent/tme/live/e0/e;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/e0/e$a;->f:I

    iget v2, p0, Lcom/tencent/tme/live/e0/e$a;->g:I

    iget v3, p0, Lcom/tencent/tme/live/e0/e$a;->i:I

    invoke-static {v0, v2, v3}, Lcom/tencent/tme/live/e0/a;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->d:Z

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/e0/e$a;->f:I

    iget v2, p0, Lcom/tencent/tme/live/e0/e$a;->g:I

    iget v3, p0, Lcom/tencent/tme/live/e0/e$a;->i:I

    invoke-static {v0, v2, v3}, Lcom/tencent/tme/live/e0/a;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/tme/live/e0/e$a;->e:Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/tencent/tme/live/b0/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/b0/b;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    iget-wide v6, p0, Lcom/tencent/tme/live/e0/e$a;->k:J

    iget v8, p0, Lcom/tencent/tme/live/e0/e$a;->l:I

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/tencent/tme/live/n0/e;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "uil-images"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v10, v2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v10, v3

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v5, v6, v2

    if-gtz v5, :cond_5

    if-lez v8, :cond_7

    .line 5
    :cond_5
    invoke-static {v0, v1}, Lcom/tencent/tme/live/n0/e;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v3, v2

    .line 7
    :cond_6
    :try_start_0
    new-instance v11, Lcom/tencent/tme/live/a0/b;

    move-object v2, v11

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tme/live/a0/b;-><init>(Ljava/io/File;Ljava/io/File;Lcom/tencent/tme/live/b0/a;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_7
    invoke-static {v0, v1}, Lcom/tencent/tme/live/n0/e;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 9
    new-instance v11, Lcom/tencent/tme/live/z/b;

    invoke-direct {v11, v0, v10, v9}, Lcom/tencent/tme/live/z/b;-><init>(Ljava/io/File;Ljava/io/File;Lcom/tencent/tme/live/b0/a;)V

    .line 10
    :goto_4
    iput-object v11, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    :cond_8
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->a:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/tme/live/e0/e$a;->j:I

    if-nez v1, :cond_a

    .line 11
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 12
    sget v3, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v4, 0xb

    const/high16 v5, 0x100000

    if-lt v3, v4, :cond_9

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    .line 14
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    :cond_9
    mul-int v2, v2, v5

    .line 15
    div-int/lit8 v1, v2, 0x8

    :cond_a
    new-instance v0, Lcom/tencent/tme/live/d0/b;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/d0/b;-><init>(I)V

    .line 16
    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    :cond_b
    iget-boolean v0, p0, Lcom/tencent/tme/live/e0/e$a;->h:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/tencent/tme/live/d0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    .line 17
    new-instance v2, Lcom/tencent/tme/live/n0/d;

    invoke-direct {v2}, Lcom/tencent/tme/live/n0/d;-><init>()V

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/d0/a;-><init>(Lcom/tencent/tme/live/c0/b;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    :cond_c
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->a:Landroid/content/Context;

    .line 19
    new-instance v1, Lcom/tencent/tme/live/j0/a;

    const/16 v2, 0x1388

    const/16 v3, 0x4e20

    .line 20
    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/tme/live/j0/a;-><init>(Landroid/content/Context;II)V

    .line 21
    iput-object v1, p0, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    :cond_d
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->q:Lcom/tencent/tme/live/h0/b;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/tencent/tme/live/e0/e$a;->s:Z

    .line 22
    new-instance v1, Lcom/tencent/tme/live/h0/a;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/h0/a;-><init>(Z)V

    .line 23
    iput-object v1, p0, Lcom/tencent/tme/live/e0/e$a;->q:Lcom/tencent/tme/live/h0/b;

    :cond_e
    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    if-nez v0, :cond_f

    .line 24
    new-instance v0, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    .line 25
    new-instance v1, Lcom/tencent/tme/live/e0/c;

    .line 26
    invoke-direct {v1, v0}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    .line 27
    iput-object v1, p0, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    .line 28
    :cond_f
    new-instance v0, Lcom/tencent/tme/live/e0/e;

    .line 29
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e0/e;-><init>(Lcom/tencent/tme/live/e0/e$a;)V

    return-object v0
.end method

.method public b(I)Lcom/tencent/tme/live/e0/e$a;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    const-string v3, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lcom/tencent/tme/live/e0/e$a;->k:J

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Lcom/tencent/tme/live/e0/e$a;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/e0/e$a;->m:Lcom/tencent/tme/live/c0/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    const-string v3, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :cond_0
    iput p1, p0, Lcom/tencent/tme/live/e0/e$a;->j:I

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "memoryCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
