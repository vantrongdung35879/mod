.class public Lcom/tencent/mna/p3;
.super Ljava/lang/Object;
.source "ThreadHandler.java"


# instance fields
.field private a:Landroid/os/Looper;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/mna/p3;->c:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/tencent/mna/p3;->a:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tencent/mna/p3;->a:Landroid/os/Looper;

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tencent/mna/p3;->c:Landroid/os/HandlerThread;

    .line 13
    iput-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 4
    new-instance v0, Lcom/tencent/mna/p3$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/p3$a;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/tencent/mna/p3;->a:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mna/p3;->a:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/p3;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/p3;->c:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mna/p3;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    .line 20
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-lez p2, :cond_4

    .line 24
    iget-object v0, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/tencent/mna/p3;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 26
    :cond_4
    iget-object p2, p0, Lcom/tencent/mna/p3;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/tencent/mna/p3;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "postSafely "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/p3;->b(Ljava/lang/Runnable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postSafely "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/p3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
