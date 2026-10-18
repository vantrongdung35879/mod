.class public Lcom/tencent/tme/live/e0/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/e0/a$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/tencent/tme/live/i0/a;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/i0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/i0/a;-><init>()V

    return-object v0
.end method

.method public static a(III)Ljava/util/concurrent/Executor;
    .locals 8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/tencent/tme/live/g0/a;

    invoke-direct {p2}, Lcom/tencent/tme/live/g0/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    move-object v6, p2

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1
    new-instance v7, Lcom/tencent/tme/live/e0/a$a;

    const-string v0, "uil-pool-"

    invoke-direct {v7, p1, v0}, Lcom/tencent/tme/live/e0/a$a;-><init>(ILjava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object v0, p2

    move v1, p0

    move v2, p0

    .line 2
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

.method public static b()Lcom/tencent/tme/live/b0/a;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/b0/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/b0/b;-><init>()V

    return-object v0
.end method

.method public static c()Ljava/util/concurrent/Executor;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/tme/live/e0/a$a;

    const/4 v1, 0x5

    const-string v2, "uil-pool-d-"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/e0/a$a;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
