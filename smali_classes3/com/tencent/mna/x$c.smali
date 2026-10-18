.class public abstract Lcom/tencent/mna/x$c;
.super Ljava/lang/Object;
.source "ContinuesDelaysInfoFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/tencent/mna/a0;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/tencent/mna/a0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/x$c;->a:Lcom/tencent/mna/a0;

    .line 3
    iput-wide p2, p0, Lcom/tencent/mna/x$c;->b:J

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "mna-continuous-worker"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/tencent/mna/x$c;->b:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 4
    iget-object v2, p0, Lcom/tencent/mna/x$c;->a:Lcom/tencent/mna/a0;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/tencent/mna/x$c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/a0;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContinuousWorker throwable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
