.class public Lcom/tencent/tme/live/d/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/d/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Lcom/tencent/tme/live/d/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/d/b;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d/b$b;->c:Lcom/tencent/tme/live/d/b;

    iput-object p2, p0, Lcom/tencent/tme/live/d/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tme/live/d/b$b;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/d/b$b;->c:Lcom/tencent/tme/live/d/b;

    iget-object v1, p0, Lcom/tencent/tme/live/d/b$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/d/b$b;->b:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/tencent/tme/live/d/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/tencent/tme/live/d/f;->a(Ljava/io/File;J)V

    iget-object v0, v0, Lcom/tencent/tme/live/d/b;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/tencent/tme/live/s2/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5
    :catch_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v1}, Lcom/tencent/tme/live/s2/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 6
    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/tencent/tme/live/f0/a;

    new-instance v3, Ljava/io/BufferedInputStream;

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/tencent/tme/live/f0/a;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    :catch_1
    :cond_2
    :goto_1
    return-object v2
.end method
