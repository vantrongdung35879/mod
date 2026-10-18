.class public Lcom/tencent/tme/live/u1/f;
.super Lcom/tencent/tme/live/u1/d;


# instance fields
.field public h:J

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/v1/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/u1/d;-><init>(Lcom/tencent/tme/live/v1/a;Ljava/lang/String;Z)V

    const-wide/32 p1, 0x100000

    iput-wide p1, p0, Lcom/tencent/tme/live/u1/f;->h:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/u1/f;->i:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tencent/tme/live/u1/f;->j:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;ZZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/tencent/tme/live/u1/d;->f:Z

    iget p4, p0, Lcom/tencent/tme/live/u1/d;->g:I

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p3, :cond_0

    .line 1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    .line 2
    :try_start_3
    iput-boolean v0, p0, Lcom/tencent/tme/live/u1/d;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/u1/d;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    :goto_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    if-eqz p3, :cond_1

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v0

    :cond_1
    new-instance v0, Lcom/tencent/tme/live/u1/c;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/u1/c;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    iput-object p1, p0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/tme/live/u1/d;->f:Z

    iput p4, p0, Lcom/tencent/tme/live/u1/d;->g:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit p0

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    .line 5
    iput-wide p2, p1, Lcom/tencent/tme/live/u1/c;->a:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_2
    monitor-exit p0

    return-void

    .line 6
    :cond_3
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_c
    monitor-exit p0

    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p1
.end method
