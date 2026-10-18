.class Lcom/ihoc/mgpa/gradish/o0$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field c:Z

.field d:Ljava/util/List;

.field final synthetic e:Lcom/ihoc/mgpa/gradish/o0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->e:Lcom/ihoc/mgpa/gradish/o0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->c:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/ihoc/mgpa/gradish/n0;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->e:Lcom/ihoc/mgpa/gradish/o0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/n0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/gradish/o0;->a(Lcom/ihoc/mgpa/gradish/o0;Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/n0;->c()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/ihoc/mgpa/gradish/n0;->a(I)V

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p1, Lcom/ihoc/mgpa/gradish/n0;->f:J

    .line 7
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/n0;

    .line 14
    iput-boolean v3, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/n0;

    .line 3
    iget-boolean v2, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 7
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/n0;

    .line 8
    iget-boolean v4, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    if-eqz v4, :cond_1

    .line 9
    iput-boolean v3, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    .line 11
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 16
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method public run()V
    .locals 10

    .line 1
    const-string v0, "PatternPlayer"

    const-string v1, "pattern thread start!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->c:Z

    if-nez v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/o0$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/o0$a;->a()J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/gradish/n0;

    .line 22
    iget-boolean v4, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    if-nez v4, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    iget-wide v4, v2, Lcom/ihoc/mgpa/gradish/n0;->f:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    sub-long/2addr v4, v0

    .line 27
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 34
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    iget v0, v2, Lcom/ihoc/mgpa/gradish/n0;->i:I

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->d()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 41
    iput-boolean v3, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    goto :goto_0

    .line 42
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 51
    :cond_3
    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/o0$a;->e:Lcom/ihoc/mgpa/gradish/o0;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->d()I

    move-result v6

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->c()I

    move-result v7

    .line 52
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->a()I

    move-result v8

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->b()I

    move-result v9

    .line 53
    invoke-static/range {v4 .. v9}, Lcom/ihoc/mgpa/gradish/o0;->a(Lcom/ihoc/mgpa/gradish/o0;Ljava/lang/String;IIII)V

    .line 55
    iget v0, v2, Lcom/ihoc/mgpa/gradish/n0;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/ihoc/mgpa/gradish/n0;->i:I

    .line 59
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->d()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 63
    iput-boolean v3, v2, Lcom/ihoc/mgpa/gradish/n0;->g:Z

    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/o0$a;->a()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/n0;->f()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/ihoc/mgpa/gradish/n0;->f:J

    goto :goto_0

    .line 66
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    :try_start_4
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/o0$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 70
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :try_start_5
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/o0$a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    .line 76
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 83
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    monitor-exit v0

    goto/16 :goto_0

    .line 86
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 136
    :cond_6
    const-string v0, "PatternPlayer"

    const-string v1, "pattern thread quit!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
