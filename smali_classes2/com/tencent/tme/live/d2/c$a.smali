.class public Lcom/tencent/tme/live/d2/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/d2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:Z


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/d2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/d2/c;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tme/live/d2/c$a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/d2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    sget-boolean v0, Lcom/tencent/tme/live/d2/c$a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/d2/c;->access$202(Lcom/tencent/tme/live/d2/c;J)J

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :cond_2
    :goto_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v8, v4, v5}, Lcom/tencent/tme/live/d2/c;->select(J)I

    move-result v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    iget-object v6, v6, Lcom/tencent/tme/live/d2/c;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v8, :cond_5

    const-wide/16 v6, 0x64

    cmp-long v11, v9, v6

    if-gez v11, :cond_5

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->isBrokenConnection()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/tencent/tme/live/d2/c;->access$300()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v6

    const-string v7, "Broken connection"

    invoke-interface {v6, v7}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lcom/tencent/tme/live/d2/c;->access$300()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create a new selector. Selected is 0, delta = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->registerNewSelector()V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v2, 0xa

    :goto_3
    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$400(Lcom/tencent/tme/live/d2/c;)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$500(Lcom/tencent/tme/live/d2/c;)V

    if-lez v8, :cond_6

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$600(Lcom/tencent/tme/live/d2/c;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v8, v6, v7}, Lcom/tencent/tme/live/d2/c;->access$700(Lcom/tencent/tme/live/d2/c;J)V

    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v8}, Lcom/tencent/tme/live/d2/c;->access$800(Lcom/tencent/tme/live/d2/c;)I

    move-result v8

    sub-int/2addr v3, v8

    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v8, v6, v7}, Lcom/tencent/tme/live/d2/c;->access$900(Lcom/tencent/tme/live/d2/c;J)V

    if-nez v3, :cond_e

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$1000(Lcom/tencent/tme/live/d2/c;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->isSelectorEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/tencent/tme/live/d2/c$a;->b:Z

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_7

    goto/16 :goto_7

    :cond_7
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_8
    sget-boolean v6, Lcom/tencent/tme/live/d2/c$a;->b:Z

    if-nez v6, :cond_a

    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v8}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p0, :cond_9

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_a
    :goto_4
    iget-object v8, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v8}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    invoke-static {v8, v7, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_b

    goto :goto_7

    :cond_b
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_c
    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v6}, Lcom/tencent/tme/live/d2/c;->access$100(Lcom/tencent/tme/live/d2/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_d

    goto :goto_5

    :cond_d
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_e
    :goto_5
    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->allSessions()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_f
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/tme/live/f2/j;

    invoke-interface {v8}, Lcom/tencent/tme/live/f2/j;->isActive()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v7, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    check-cast v8, Lcom/tencent/tme/live/f2/a;

    invoke-static {v7, v8}, Lcom/tencent/tme/live/d2/c;->access$1100(Lcom/tencent/tme/live/d2/c;Lcom/tencent/tme/live/f2/a;)V

    const/4 v7, 0x1

    goto :goto_6

    :cond_10
    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v6}, Lcom/tencent/tme/live/d2/c;->wakeup()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .line 1
    sget-object v7, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v7, v6}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    .line 3
    sget-object v5, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v5, v4}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 5
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 6
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_11
    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/c;->access$1200(Lcom/tencent/tme/live/d2/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/c;->access$1300(Lcom/tencent/tme/live/d2/c;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-virtual {v1}, Lcom/tencent/tme/live/d2/c;->doDispose()V

    :cond_12
    monitor-exit v0

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    .line 7
    :try_start_5
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 8
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_8
    iget-object v0, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/c;->access$1400(Lcom/tencent/tme/live/d2/c;)Lcom/tencent/tme/live/c2/e;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void

    :goto_9
    iget-object v1, p0, Lcom/tencent/tme/live/d2/c$a;->a:Lcom/tencent/tme/live/d2/c;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/c;->access$1400(Lcom/tencent/tme/live/d2/c;)Lcom/tencent/tme/live/c2/e;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    throw v0
.end method
