.class public Lcom/tencent/tme/live/a0/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/y/a;


# static fields
.field public static final d:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Lcom/tencent/tme/live/a0/a;

.field public final b:Lcom/tencent/tme/live/b0/a;

.field public c:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/tencent/tme/live/a0/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/tencent/tme/live/b0/a;JI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tme/live/a0/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/tencent/tme/live/a0/b;->c:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_4

    if-ltz p6, :cond_3

    if-eqz p3, :cond_2

    if-nez v2, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    move-wide v3, p4

    if-nez p6, :cond_1

    const p6, 0x7fffffff

    const v5, 0x7fffffff

    goto :goto_0

    :cond_1
    move v5, p6

    :goto_0
    iput-object p3, p0, Lcom/tencent/tme/live/a0/b;->b:Lcom/tencent/tme/live/b0/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/a0/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;JI)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/tencent/tme/live/a0/a;->a(Ljava/io/File;IIJI)Lcom/tencent/tme/live/a0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/a0/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;Lcom/tencent/tme/live/n0/b$a;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/a0/b;->b:Lcom/tencent/tme/live/b0/a;

    invoke-interface {v1, p1}, Lcom/tencent/tme/live/b0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/a0/a;->a(Ljava/lang/String;)Lcom/tencent/tme/live/a0/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/a0/a$c;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    const v2, 0x8000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    invoke-static {p2, v1, p3, v2}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tencent/tme/live/n0/b$a;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$c;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$c;->a()V

    throw p2
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/a0/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/a0/b;->a:Lcom/tencent/tme/live/a0/a;

    .line 1
    iget-object v2, p0, Lcom/tencent/tme/live/a0/b;->b:Lcom/tencent/tme/live/b0/a;

    invoke-interface {v2, p1}, Lcom/tencent/tme/live/b0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/a0/a;->b(Ljava/lang/String;)Lcom/tencent/tme/live/a0/a$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/a0/a$e;->a(I)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$e;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$e;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/a0/a$e;->close()V

    :cond_3
    throw v0
.end method
