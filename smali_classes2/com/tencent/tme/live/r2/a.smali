.class public Lcom/tencent/tme/live/r2/a;
.super Ljava/lang/Object;


# static fields
.field public static volatile b:Lcom/tencent/tme/live/r2/a;


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/r2/a;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/r2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/r2/a;->b:Lcom/tencent/tme/live/r2/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/r2/a;

    invoke-direct {v1}, Lcom/tencent/tme/live/r2/a;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/r2/a;->b:Lcom/tencent/tme/live/r2/a;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/r2/a;->b:Lcom/tencent/tme/live/r2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/r2/a;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r2/a;->a:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/r2/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
