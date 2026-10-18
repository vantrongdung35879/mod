.class public Lcom/tencent/tme/live/c2/f;
.super Lcom/tencent/tme/live/c2/e;

# interfaces
.implements Lcom/tencent/tme/live/c2/j;


# static fields
.field public static final h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/c2/f;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/j;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/c2/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/c2/e;->f:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/tencent/tme/live/c2/f;->h:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/c2/f;->h:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lcom/tencent/tme/live/c2/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/j;

    return-object v0
.end method
