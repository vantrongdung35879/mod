.class public Lcom/tencent/tme/live/d/b;
.super Lcom/tencent/tme/live/j0/a;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/j0/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tme/live/d/b;->d:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/d/b;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/d/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/d/f;->a(Ljava/io/File;J)V

    iget-object p0, p0, Lcom/tencent/tme/live/d/b;->d:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/tencent/tme/live/s2/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, p1}, Lcom/tencent/tme/live/s2/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 4
    :goto_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Lcom/tencent/tme/live/f0/a;

    new-instance v0, Ljava/io/BufferedInputStream;

    const v1, 0x8000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/f0/a;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p2, p0

    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .line 1
    sget-object p2, Lcom/tencent/tme/live/j0/b$a;->g:Lcom/tencent/tme/live/j0/b$a;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/j0/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/tme/live/j0/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/d/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/tme/live/d/b$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/d/b$b;-><init>(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/j0/a;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/tme/live/d/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/tme/live/d/b$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/d/b$a;-><init>(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/j0/a;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/tme/live/d/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/tme/live/d/b$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/d/b$c;-><init>(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
