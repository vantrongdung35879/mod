.class public abstract Lcom/tencent/mna/x;
.super Ljava/lang/Object;
.source "ContinuesDelaysInfoFetcher.java"

# interfaces
.implements Lcom/tencent/mna/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/x$c;
    }
.end annotation


# instance fields
.field a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/tencent/mna/x;->a:J

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/mna/x$a;

    iget-wide v2, p0, Lcom/tencent/mna/x;->a:J

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/tencent/mna/x$a;-><init>(Lcom/tencent/mna/x;Lcom/tencent/mna/a0;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    new-instance p1, Lcom/tencent/mna/x$b;

    iget-wide v1, p0, Lcom/tencent/mna/x;->a:J

    invoke-direct {p1, p0, p2, v1, v2}, Lcom/tencent/mna/x$b;-><init>(Lcom/tencent/mna/x;Lcom/tencent/mna/a0;J)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 19
    :try_start_0
    iget-wide p1, p0, Lcom/tencent/mna/x;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract b()I
.end method
