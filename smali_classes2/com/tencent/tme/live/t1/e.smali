.class public Lcom/tencent/tme/live/t1/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tencent/tme/live/t1/c; = null

.field public static b:Z = false

.field public static c:Ljava/lang/String; = null

.field public static d:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/tme/live/t1/b;->a:Lcom/tencent/tme/live/t1/c;

    .line 2
    sput-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 23
    sget-object v0, Lcom/tencent/tme/live/t1/b;->a:Lcom/tencent/tme/live/t1/c;

    .line 24
    sput-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/u1/e;

    new-instance v1, Lcom/tencent/tme/live/v1/b;

    invoke-direct {v1}, Lcom/tencent/tme/live/v1/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/u1/e;-><init>(Lcom/tencent/tme/live/v1/a;)V

    sget-object v1, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/t1/c;->a(Lcom/tencent/tme/live/u1/a;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    const-string v1, "TMELog"

    .line 1
    sget-object v2, Lcom/tencent/tme/live/t1/a;->f:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 3
    sget-object v1, Lcom/tencent/tme/live/t1/a;->f:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/tencent/tme/live/t1/a;->c:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v1, p0, p2, p1}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 6

    sput-boolean p0, Lcom/tencent/tme/live/t1/e;->d:Z

    const-wide/32 v0, 0x3200000

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/tencent/tme/live/t1/a;->g:Lcom/tencent/tme/live/t1/a;

    .line 7
    sget-object v3, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_0
    sget-object v3, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 8
    iput-object p0, v3, Lcom/tencent/tme/live/t1/c;->b:Lcom/tencent/tme/live/t1/a;

    .line 9
    sget-object p0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    invoke-virtual {p0}, Lcom/tencent/tme/live/t1/c;->c()V

    sget-object p0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    new-instance v3, Lcom/tencent/tme/live/u1/e;

    new-instance v4, Lcom/tencent/tme/live/v1/b;

    invoke-direct {v4}, Lcom/tencent/tme/live/v1/b;-><init>()V

    invoke-direct {v3, v4}, Lcom/tencent/tme/live/u1/e;-><init>(Lcom/tencent/tme/live/v1/a;)V

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/t1/c;->a(Lcom/tencent/tme/live/u1/a;)V

    sget-boolean p0, Lcom/tencent/tme/live/t1/e;->b:Z

    if-eqz p0, :cond_3

    :try_start_0
    new-instance p0, Lcom/tencent/tme/live/u1/f;

    new-instance v3, Lcom/tencent/tme/live/v1/c;

    invoke-direct {v3}, Lcom/tencent/tme/live/v1/c;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tencent/tme/live/t1/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 10
    iget-object v5, v5, Lcom/tencent/tme/live/t1/c;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/tencent/tme/live/u1/f;-><init>(Lcom/tencent/tme/live/v1/a;Ljava/lang/String;Z)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iput v2, p0, Lcom/tencent/tme/live/u1/f;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 13
    iput-wide v0, p0, Lcom/tencent/tme/live/u1/f;->h:J

    .line 14
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    sget-object p0, Lcom/tencent/tme/live/t1/a;->e:Lcom/tencent/tme/live/t1/a;

    .line 15
    sget-object v3, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_2
    sget-object v3, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 16
    iput-object p0, v3, Lcom/tencent/tme/live/t1/c;->b:Lcom/tencent/tme/live/t1/a;

    .line 17
    sget-object p0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    invoke-virtual {p0}, Lcom/tencent/tme/live/t1/c;->c()V

    sget-boolean p0, Lcom/tencent/tme/live/t1/e;->b:Z

    if-eqz p0, :cond_3

    :try_start_3
    new-instance p0, Lcom/tencent/tme/live/u1/f;

    new-instance v3, Lcom/tencent/tme/live/v1/c;

    invoke-direct {v3}, Lcom/tencent/tme/live/v1/c;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tencent/tme/live/t1/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 18
    iget-object v5, v5, Lcom/tencent/tme/live/t1/c;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/tencent/tme/live/u1/f;-><init>(Lcom/tencent/tme/live/v1/a;Ljava/lang/String;Z)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 20
    :try_start_4
    iput v2, p0, Lcom/tencent/tme/live/u1/f;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    .line 21
    iput-wide v0, p0, Lcom/tencent/tme/live/u1/f;->h:J

    .line 22
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/t1/c;->a(Lcom/tencent/tme/live/u1/a;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TMELog"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    sget-object v1, Lcom/tencent/tme/live/t1/a;->c:Lcom/tencent/tme/live/t1/a;

    const-string v2, "exception"

    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v3, v2, v1, p0}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    const-string v1, "TMELog"

    .line 1
    sget-object v2, Lcom/tencent/tme/live/t1/a;->e:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 3
    sget-object v1, Lcom/tencent/tme/live/t1/a;->e:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 1
    sget-object v1, Lcom/tencent/tme/live/t1/a;->g:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/t1/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/t1/e;->a()V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/t1/e;->a:Lcom/tencent/tme/live/t1/c;

    .line 1
    sget-object v1, Lcom/tencent/tme/live/t1/a;->d:Lcom/tencent/tme/live/t1/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/t1/c;->a()Lcom/tencent/tme/live/t1/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/t1/a;->a(Lcom/tencent/tme/live/t1/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.tencent.tme.live.t1.c"

    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/tencent/tme/live/t1/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
