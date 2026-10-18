.class public Lcom/tencent/tme/live/f2/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/f2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public volatile a:Z

.field public volatile b:Ljava/lang/Thread;

.field public final synthetic c:Lcom/tencent/tme/live/f2/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/g$a;->c:Lcom/tencent/tme/live/f2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/f2/g$a;->b:Ljava/lang/Thread;

    :catch_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/f2/g$a;->a:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1
    iget-object v3, p0, Lcom/tencent/tme/live/f2/g$a;->c:Lcom/tencent/tme/live/f2/g;

    .line 2
    iget-object v3, v3, Lcom/tencent/tme/live/f2/g;->a:Ljava/util/Set;

    .line 3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {v4}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4, v1, v2}, Lcom/tencent/tme/live/f2/a;->notifyIdleSession(Lcom/tencent/tme/live/f2/j;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 4
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/tencent/tme/live/f2/g$a;->b:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/tencent/tme/live/f2/g$a;->b:Ljava/lang/Thread;

    throw v1
.end method
