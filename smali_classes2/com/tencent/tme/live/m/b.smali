.class public Lcom/tencent/tme/live/m/b;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/m/a$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    iget-object v2, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget-wide v2, v2, Lcom/tencent/tme/live/o/c;->c:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/g;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/o/g;->b:I

    int-to-float v0, v0

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 4
    iget v3, v2, Lcom/tencent/tme/live/m/a;->u:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 5
    iget-object v2, v2, Lcom/tencent/tme/live/m/k;->a:Lcom/tencent/tme/live/o/d;

    iget-object v2, v2, Lcom/tencent/tme/live/o/d;->l:Lcom/tencent/tme/live/o/c;

    iget v2, v2, Lcom/tencent/tme/live/o/c;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    .line 6
    iget-boolean v2, v0, Lcom/tencent/tme/live/m/a$b;->h:Z

    if-nez v2, :cond_1

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    iget-object v2, v2, Lcom/tencent/tme/live/m/a$b;->i:Lcom/tencent/tme/live/m/a;

    .line 10
    iget-object v2, v2, Lcom/tencent/tme/live/m/a;->x:Ljava/lang/Object;

    const-wide/16 v3, 0x1e

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v0

    goto :goto_2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/b;->a:Lcom/tencent/tme/live/m/a$b;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/m/a$b;->b(Lcom/tencent/tme/live/n/b;)V

    const/4 v1, 0x2

    :cond_2
    :goto_2
    return v1
.end method
