.class public Lcom/tencent/tme/live/m/a$b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lcom/tencent/tme/live/m/a$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tme/live/n/b;Z)B
    .locals 8

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;Z)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v3, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v3, v3, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v3, v3, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x14

    invoke-static {v2, p1, v1, v3}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;ZI)Lcom/tencent/tme/live/n/b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :try_start_2
    iget v0, v2, Lcom/tencent/tme/live/o/g;->e:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/tencent/tme/live/o/g;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    .line 6
    iput-object v2, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    .line 8
    invoke-static {v0, p1, v3, p2}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;IZ)Z

    return v3

    :catchall_0
    move-exception p2

    monitor-exit v2

    throw p2

    :cond_2
    iget-object v4, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v5, v4, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v5, v5, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v5, v5, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x96

    invoke-static {v4, p1, v3, v5}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;ZI)Lcom/tencent/tme/live/n/b;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    :cond_3
    if-eqz v2, :cond_4

    iput-object v0, v4, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v4, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v0, v0, Lcom/tencent/tme/live/o/c;->a:I

    invoke-static {p1, v4, v2, v0}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/o/g;I)Lcom/tencent/tme/live/o/g;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iput-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 9
    iget-object v2, v2, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    .line 10
    invoke-static {v2, p1, v3, p2}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;IZ)Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return v3

    :cond_4
    :try_start_5
    iget v0, p1, Lcom/tencent/tme/live/n/b;->m:F

    float-to-int v0, v0

    iget v4, p1, Lcom/tencent/tme/live/n/b;->n:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v6, v5, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v7, v6, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v7, v7, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v7, v7, Lcom/tencent/tme/live/o/c;->a:I

    div-int/lit8 v7, v7, 0x8

    mul-int v0, v0, v4

    mul-int v0, v0, v7

    mul-int/lit8 v4, v0, 0x2

    .line 11
    iget v7, v6, Lcom/tencent/tme/live/m/a;->u:I

    if-le v4, v7, :cond_5

    return v1

    :cond_5
    if-nez p2, :cond_6

    .line 12
    iget v4, v5, Lcom/tencent/tme/live/m/a$b;->e:I

    add-int/2addr v4, v0

    .line 13
    iget v7, v5, Lcom/tencent/tme/live/m/a$b;->d:I

    if-le v4, v7, :cond_6

    .line 14
    iget-object p2, v6, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    .line 15
    iget-object v4, p2, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    new-instance v5, Lcom/tencent/tme/live/m/d;

    invoke-direct {v5, p2, v0, v3}, Lcom/tencent/tme/live/m/d;-><init>(Lcom/tencent/tme/live/m/a$b;IZ)V

    invoke-virtual {v4, v5}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    return v1

    .line 16
    :cond_6
    iget-object v0, v5, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/p/a;->a()Lcom/tencent/tme/live/p/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/o/g;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v4, v2, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v2, v2, Lcom/tencent/tme/live/o/c;->a:I

    invoke-static {p1, v4, v0, v2}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/o/g;I)Lcom/tencent/tme/live/o/g;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 17
    iget-object v2, v2, Lcom/tencent/tme/live/m/a;->v:Lcom/tencent/tme/live/m/a$b;

    .line 18
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    .line 19
    iget v4, v4, Lcom/tencent/tme/live/o/g;->b:I

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 20
    :goto_1
    invoke-static {v2, p1, v4, p2}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;IZ)Z
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return v3

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catch_1
    move-object v0, v2

    goto :goto_3

    :catch_2
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/o/g;)V

    return v1

    :catch_3
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/o/g;)V

    return v1
.end method

.method public final a(Z)J
    .locals 18

    move-object/from16 v11, p0

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, v1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v2, v2, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v4, v1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v4, v4, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v4, v4, Lcom/tencent/tme/live/o/e;->f:J

    const-wide/16 v6, 0x2

    mul-long v6, v6, v4

    add-long/2addr v6, v2

    iget-object v1, v1, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    sub-long/2addr v2, v4

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/tencent/tme/live/o/f;->a(JJ)Lcom/tencent/tme/live/n/j;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/tencent/tme/live/m/e;

    invoke-direct {v2, v11}, Lcom/tencent/tme/live/m/e;-><init>(Lcom/tencent/tme/live/m/a$b$a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    .line 22
    :cond_1
    :goto_1
    iget-object v1, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 23
    iget-object v3, v2, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 24
    iget-wide v3, v3, Lcom/tencent/tme/live/n/d;->a:J

    const-wide/16 v5, 0x1e

    sub-long v7, v3, v5

    iget-object v3, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v3, v3, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v3, v3, Lcom/tencent/tme/live/o/e;->f:J

    .line 25
    iget v1, v1, Lcom/tencent/tme/live/m/a$b;->f:I

    int-to-long v9, v1

    mul-long v3, v3, v9

    add-long v12, v3, v7

    .line 26
    iget-object v1, v2, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, v1, Lcom/tencent/tme/live/n/d;->a:J

    const-wide/16 v3, 0x0

    cmp-long v9, v12, v1

    if-gez v9, :cond_2

    return-wide v3

    .line 27
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    const-wide/16 v9, 0xa

    const/16 v16, 0x1

    .line 28
    :try_start_1
    iget-object v5, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v5, v5, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v5, v5, Lcom/tencent/tme/live/m/k;->c:Lcom/tencent/tme/live/n/j;

    check-cast v5, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v5, v7, v8, v12, v13}, Lcom/tencent/tme/live/o/f;->a(JJ)Lcom/tencent/tme/live/n/j;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 29
    :catch_1
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x3

    if-ge v1, v5, :cond_4

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    const-wide/16 v5, 0x1e

    goto :goto_2

    :cond_4
    :goto_4
    if-nez v0, :cond_5

    .line 30
    iget-object v0, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 31
    iget-object v0, v0, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 32
    invoke-virtual {v0, v12, v13}, Lcom/tencent/tme/live/n/d;->b(J)J

    return-wide v3

    :cond_5
    move-object v5, v0

    check-cast v5, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v5}, Lcom/tencent/tme/live/o/f;->b()Lcom/tencent/tme/live/n/b;

    move-result-object v0

    invoke-virtual {v5}, Lcom/tencent/tme/live/o/f;->d()Lcom/tencent/tme/live/n/b;

    move-result-object v2

    if-eqz v0, :cond_9

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-object v6, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v6, v6, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v9, v6, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v9, v9, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr v0, v9

    cmp-long v9, v0, v3

    if-gez v9, :cond_7

    const-wide/16 v0, 0x1e

    goto :goto_5

    :cond_7
    const-wide/16 v9, 0xa

    mul-long v0, v0, v9

    iget-object v6, v6, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v6, v6, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v9, v6, Lcom/tencent/tme/live/o/e;->f:J

    div-long/2addr v0, v9

    const-wide/16 v9, 0x1e

    add-long/2addr v0, v9

    :goto_5
    const-wide/16 v9, 0x64

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    if-eqz p1, :cond_8

    move-wide v9, v3

    goto :goto_6

    :cond_8
    move-wide v9, v0

    .line 33
    :goto_6
    iget-object v0, v5, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 34
    new-instance v6, Lcom/tencent/tme/live/m/a$b$a$a;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v16, v12

    move-object v12, v5

    move-object v13, v6

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v14

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tme/live/m/a$b$a$a;-><init>(Lcom/tencent/tme/live/m/a$b$a;Lcom/tencent/tme/live/n/b;ZIJJJ)V

    invoke-virtual {v12, v13}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v14

    .line 36
    iget-object v2, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 37
    iget-object v2, v2, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    move-wide/from16 v5, v16

    .line 38
    invoke-virtual {v2, v5, v6}, Lcom/tencent/tme/live/n/d;->b(J)J

    return-wide v0

    :cond_9
    :goto_7
    move-wide v5, v12

    iget-object v0, v11, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 39
    iget-object v0, v0, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 40
    invoke-virtual {v0, v5, v6}, Lcom/tencent/tme/live/n/d;->b(J)J

    return-wide v3
.end method

.method public a()V
    .locals 3

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/m/a$b$a;->a:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v0, v0, Lcom/tencent/tme/live/o/e;->f:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final a(Lcom/tencent/tme/live/n/b;)V
    .locals 7

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 1
    iget-object v3, v2, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 2
    iget-wide v3, v3, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v5, v2, Lcom/tencent/tme/live/o/e;->f:J

    add-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    iget-boolean v0, p1, Lcom/tencent/tme/live/n/b;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-byte v0, p1, Lcom/tencent/tme/live/n/b;->l:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;Z)B

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/o/g;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/tme/live/o/g;->b()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/p/a;->a(Lcom/tencent/tme/live/p/b;)V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/n/b;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v3, v3, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {v3}, Lcom/tencent/tme/live/p/a;->a()Lcom/tencent/tme/live/p/b;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/o/g;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v4, v4, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v5, v4, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object v4, v4, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v4, v4, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v4, v4, Lcom/tencent/tme/live/o/c;->a:I

    invoke-static {p1, v5, v3, v4}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/o/g;I)Lcom/tencent/tme/live/o/g;

    move-result-object v3

    iput-object v3, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catch_2
    nop

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/p/a;->a(Lcom/tencent/tme/live/p/b;)V

    :cond_1
    iput-object v2, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    return v0

    :catch_3
    nop

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/p/a;->a(Lcom/tencent/tme/live/p/b;)V

    :cond_2
    iput-object v2, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_a

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 2
    iget-object v0, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    invoke-virtual {p1}, Lcom/tencent/tme/live/m/k;->c()V

    goto/16 :goto_a

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 4
    iget-object v0, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    goto/16 :goto_a

    :pswitch_2
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/m/a$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 6
    iget-object v0, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 7
    iget-object v1, p1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, v1, Lcom/tencent/tme/live/n/d;->a:J

    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v3, p1, Lcom/tencent/tme/live/o/e;->f:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    iput-boolean v5, p0, Lcom/tencent/tme/live/m/a$b$a;->c:Z

    goto/16 :goto_a

    :pswitch_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/tencent/tme/live/m/a$b$a;->a:Z

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/m/a$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    .line 8
    :goto_0
    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/p/a;->a()Lcom/tencent/tme/live/p/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/o/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->b()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_a

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 10
    iget-object p1, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 11
    iget-wide v6, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {p1, v3, v4}, Lcom/tencent/tme/live/n/d;->b(J)J

    iput-boolean v5, p0, Lcom/tencent/tme/live/m/a$b$a;->c:Z

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    .line 12
    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v0, Lcom/tencent/tme/live/o/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    invoke-virtual {p1}, Lcom/tencent/tme/live/o/f;->b()Lcom/tencent/tme/live/n/b;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v1

    :cond_2
    :goto_1
    cmp-long p1, v3, v6

    if-gtz p1, :cond_4

    sub-long/2addr v1, v3

    .line 15
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v3, v0, Lcom/tencent/tme/live/o/e;->f:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    new-instance v1, Lcom/tencent/tme/live/m/b;

    invoke-direct {v1, p1}, Lcom/tencent/tme/live/m/b;-><init>(Lcom/tencent/tme/live/m/a$b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    goto :goto_3

    .line 17
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;)V

    :goto_3
    invoke-virtual {p0, v5}, Lcom/tencent/tme/live/m/a$b$a;->a(Z)J

    invoke-virtual {p0}, Lcom/tencent/tme/live/m/a$b$a;->a()V

    goto/16 :goto_a

    :pswitch_5
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    .line 18
    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    new-instance v1, Lcom/tencent/tme/live/m/b;

    invoke-direct {v1, p1}, Lcom/tencent/tme/live/m/b;-><init>(Lcom/tencent/tme/live/m/a$b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    goto/16 :goto_a

    .line 19
    :pswitch_6
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, p1, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v0, :cond_5

    iget-boolean p1, p1, Lcom/tencent/tme/live/m/k;->l:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/a$b$a;->c:Z

    if-eqz p1, :cond_7

    :cond_6
    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/a$b$a;->a(Z)J

    if-eqz p1, :cond_8

    iput-boolean v3, p0, Lcom/tencent/tme/live/m/a$b$a;->c:Z

    :cond_8
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v0, p1, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v0, :cond_17

    iget-boolean p1, p1, Lcom/tencent/tme/live/m/k;->l:Z

    if-nez p1, :cond_17

    check-cast v0, Lcom/tencent/tme/live/m/i;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/i;->b()V

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iput-boolean v5, p1, Lcom/tencent/tme/live/m/k;->l:Z

    goto/16 :goto_a

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/tme/live/n/b;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;)V

    goto/16 :goto_a

    :pswitch_8
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;)V

    :goto_5
    const/16 p1, 0x12c

    if-ge v3, p1, :cond_d

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->c:Lcom/tencent/tme/live/p/a;

    new-instance v0, Lcom/tencent/tme/live/o/g;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/p/a;->a(Lcom/tencent/tme/live/p/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 20
    :pswitch_9
    iput-boolean v3, p0, Lcom/tencent/tme/live/m/a$b$a;->d:Z

    goto/16 :goto_a

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/tme/live/n/b;

    if-eqz p1, :cond_17

    .line 21
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    .line 22
    iget v1, p1, Lcom/tencent/tme/live/n/b;->D:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v1, v0, Lcom/tencent/tme/live/m/k;->b:Lcom/tencent/tme/live/n/a;

    iget-object v2, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v0, v0, Lcom/tencent/tme/live/o/c;->a:I

    invoke-static {p1, v1, v2, v0}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/o/g;I)Lcom/tencent/tme/live/o/g;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-static {v0, p1, v3, v5}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;Lcom/tencent/tme/live/n/b;IZ)Z

    return-void

    :cond_a
    :goto_6
    iget-boolean v1, p1, Lcom/tencent/tme/live/n/b;->x:Z

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/n/b;)J

    .line 24
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/a$b$a;->b(Lcom/tencent/tme/live/n/b;)Z

    goto/16 :goto_a

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->b()V

    :cond_c
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/n/b;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;)V

    goto/16 :goto_a

    .line 25
    :cond_d
    :pswitch_b
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 26
    iget-object v3, v0, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 27
    iget-wide v5, v3, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v3, v0, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v7, v3, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v3, v0, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v9, v3, Lcom/tencent/tme/live/o/e;->f:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x2

    cmp-long v3, v5, v7

    if-gtz v3, :cond_f

    iget-object v0, v0, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget-wide v0, v0, Lcom/tencent/tme/live/o/c;->c:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_e

    invoke-static {p1}, Lcom/tencent/tme/live/m/a$b;->a(Lcom/tencent/tme/live/m/a$b;)V

    :cond_e
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 28
    iget-object v0, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 29
    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 30
    :cond_f
    iget v0, p1, Lcom/tencent/tme/live/m/a$b;->d:I

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    iget v3, p1, Lcom/tencent/tme/live/m/a$b;->e:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 31
    :goto_7
    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->b:Lcom/tencent/tme/live/o/f;

    invoke-virtual {p1}, Lcom/tencent/tme/live/o/f;->b()Lcom/tencent/tme/live/n/b;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v3, v3, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v3, v3, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v5, v3, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr v1, v5

    :cond_11
    iget-object v3, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v3, v3, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v5, v3, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v5, v5, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v5, v5, Lcom/tencent/tme/live/o/e;->f:J

    mul-long v7, v5, v9

    const v11, 0x3f19999a    # 0.6f

    cmpg-float v11, v0, v11

    if-gez v11, :cond_12

    cmp-long v11, v1, v5

    if-lez v11, :cond_12

    .line 32
    iget-object p1, v3, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 33
    iget-object v0, v3, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v0, v0, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/n/d;->b(J)J

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_12
    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_13

    neg-long v5, v7

    cmp-long v11, v1, v5

    if-gez v11, :cond_13

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_13
    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    goto :goto_9

    .line 34
    :cond_14
    iget-object v0, v3, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 35
    iget-wide v0, v0, Lcom/tencent/tme/live/n/d;->a:J

    iget-object v2, v3, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v2, v2, Lcom/tencent/tme/live/n/d;->a:J

    sub-long/2addr v0, v2

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, p1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v2, v2, Lcom/tencent/tme/live/o/e;->f:J

    neg-long v2, v2

    cmp-long v5, v0, v2

    if-gez v5, :cond_15

    .line 36
    iget-object v0, p1, Lcom/tencent/tme/live/m/a;->w:Lcom/tencent/tme/live/n/d;

    .line 37
    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v1, p1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/n/d;->b(J)J

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_15
    cmp-long p1, v0, v7

    if-lez p1, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_8
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    :goto_9
    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object p1, p1, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object p1, p1, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v0, p1, Lcom/tencent/tme/live/o/e;->f:J

    div-long/2addr v0, v9

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
