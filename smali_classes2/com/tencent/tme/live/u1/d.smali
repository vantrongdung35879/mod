.class public Lcom/tencent/tme/live/u1/d;
.super Lcom/tencent/tme/live/u1/b;


# instance fields
.field public c:Z

.field public d:Lcom/tencent/tme/live/u1/c;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/v1/a;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/tme/live/u1/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/u1/d;->c:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/u1/d;->f:Z

    const/16 v1, 0x2000

    iput v1, p0, Lcom/tencent/tme/live/u1/d;->g:I

    iput-object p1, p0, Lcom/tencent/tme/live/u1/b;->a:Lcom/tencent/tme/live/v1/a;

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/tencent/tme/live/u1/d;->a(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;ZZI)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/u1/b;->a:Lcom/tencent/tme/live/v1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FilterWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :catch_0
    :cond_0
    :try_start_3
    monitor-exit p0

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 15
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :try_start_6
    iget-object v1, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    :cond_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0

    .line 17
    iput-object v0, p0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_b
    monitor-exit p0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit p0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit p0

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method public b(Lcom/tencent/tme/live/t1/d;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/u1/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/u1/f;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3
    :try_start_2
    iget-object v1, v0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    iget-object v2, v0, Lcom/tencent/tme/live/u1/b;->a:Lcom/tencent/tme/live/v1/a;

    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/v1/a;->a(Lcom/tencent/tme/live/t1/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/u1/c;->write(Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/tencent/tme/live/u1/d;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    invoke-virtual {p1}, Lcom/tencent/tme/live/u1/c;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    monitor-exit v0

    .line 4
    iget-object p1, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    if-eqz p1, :cond_a

    .line 5
    iget-wide v1, p1, Lcom/tencent/tme/live/u1/c;->a:J

    .line 6
    iget-wide v3, v0, Lcom/tencent/tme/live/u1/f;->h:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_a

    iget-wide v3, v0, Lcom/tencent/tme/live/u1/f;->j:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_a

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 7
    :try_start_5
    iget-object p1, v0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;

    if-eqz p1, :cond_2

    .line 8
    iget-wide v1, p1, Lcom/tencent/tme/live/u1/c;->a:J

    .line 9
    iget-wide v3, v0, Lcom/tencent/tme/live/u1/f;->h:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tme/live/u1/f;->j:J

    :cond_2
    iget p1, v0, Lcom/tencent/tme/live/u1/f;->i:I

    const/4 v1, 0x1

    if-lez p1, :cond_8

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/tme/live/u1/f;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    iget v2, v0, Lcom/tencent/tme/live/u1/f;->i:I

    sub-int/2addr v2, v1

    :goto_1
    if-lt v2, v1, :cond_5

    if-eqz p1, :cond_5

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance p1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_7

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10
    :try_start_6
    iget-object v2, v0, Lcom/tencent/tme/live/u1/d;->d:Lcom/tencent/tme/live/u1/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FilterWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_0
    :cond_6
    :try_start_8
    monitor-exit v0

    .line 11
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez p1, :cond_7

    :try_start_9
    iget-object v2, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/tencent/tme/live/u1/d;->f:Z

    iget v4, v0, Lcom/tencent/tme/live/u1/d;->g:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/tencent/tme/live/u1/f;->a(Ljava/lang/String;ZZI)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_a
    monitor-exit v0

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_7
    :goto_2
    move v1, p1

    :cond_8
    if-eqz v1, :cond_9

    :try_start_b
    iget-object p1, v0, Lcom/tencent/tme/live/u1/d;->e:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/tencent/tme/live/u1/d;->f:Z

    iget v2, v0, Lcom/tencent/tme/live/u1/d;->g:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/tencent/tme/live/u1/f;->a(Ljava/lang/String;ZZI)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/tme/live/u1/f;->j:J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_2
    :cond_9
    :try_start_c
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_a
    :goto_3
    monitor-exit v0

    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 12
    :try_start_d
    monitor-exit v0

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_e
    monitor-exit v0

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/tencent/tme/live/u1/b;->b:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/u1/d;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
