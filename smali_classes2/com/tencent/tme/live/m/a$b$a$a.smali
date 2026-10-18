.class public Lcom/tencent/tme/live/m/a$b$a$a;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/m/a$b$a;->a(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/tencent/tme/live/n/b;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:Lcom/tencent/tme/live/m/a$b$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b$a;Lcom/tencent/tme/live/n/b;ZIJJJ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iput-object p2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->c:Lcom/tencent/tme/live/n/b;

    iput-boolean p3, p0, Lcom/tencent/tme/live/m/a$b$a$a;->d:Z

    iput p4, p0, Lcom/tencent/tme/live/m/a$b$a$a;->e:I

    iput-wide p5, p0, Lcom/tencent/tme/live/m/a$b$a$a;->f:J

    iput-wide p7, p0, Lcom/tencent/tme/live/m/a$b$a$a;->g:J

    iput-wide p9, p0, Lcom/tencent/tme/live/m/a$b$a$a;->h:J

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->a:I

    iput p1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/tme/live/m/a$b$a;->a:Z

    const/4 v7, 0x1

    if-nez v1, :cond_a

    .line 3
    iget-boolean v0, v0, Lcom/tencent/tme/live/m/a$b$a;->d:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->c:Lcom/tencent/tme/live/n/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->g:Lcom/tencent/tme/live/n/d;

    iget-wide v2, v2, Lcom/tencent/tme/live/n/d;->a:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v6, v0, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v0, v6, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    iget v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->a:I

    iget v3, p0, Lcom/tencent/tme/live/m/a$b$a$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tme/live/m/f;->a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)V

    :cond_4
    iget-byte v0, p1, Lcom/tencent/tme/live/n/b;->l:B

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v0

    if-ne v0, v7, :cond_7

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-wide v2, v2, Lcom/tencent/tme/live/o/e;->f:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->b:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->a:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->a:I

    goto :goto_0

    :cond_6
    iput v8, p0, Lcom/tencent/tme/live/m/a$b$a$a;->a:I

    iput v1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->b:I

    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->d:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    .line 7
    iget-boolean v1, v0, Lcom/tencent/tme/live/m/a$b$a;->b:Z

    if-nez v1, :cond_8

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    .line 10
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 11
    iget-object v1, v1, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    .line 12
    iget-wide v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    .line 13
    invoke-virtual {v0, p1, v8}, Lcom/tencent/tme/live/m/a$b$a;->a(Lcom/tencent/tme/live/n/b;Z)B

    .line 14
    iget-boolean p1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->d:Z

    if-nez p1, :cond_9

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/tencent/tme/live/m/a$b$a$a;->h:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/tencent/tme/live/m/a$b$a$a;->i:Lcom/tencent/tme/live/m/a$b$a;

    iget-object p1, p1, Lcom/tencent/tme/live/m/a$b$a;->e:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, p1, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    .line 17
    iget p1, p1, Lcom/tencent/tme/live/m/a$b;->f:I

    int-to-long v2, p1

    const-wide/16 v4, 0x2328

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x0

    :cond_a
    :goto_3
    return v7
.end method
