.class public Lcom/tencent/tme/live/d2/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/d2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final synthetic b:Z


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/d2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/d2/b;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tme/live/d2/b$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/d2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-boolean v0, Lcom/tencent/tme/live/d2/b$b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

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
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v2}, Lcom/tencent/tme/live/d2/b;->access$400(Lcom/tencent/tme/live/d2/b;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v4}, Lcom/tencent/tme/live/e2/b;->getConnectTimeoutMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v4, v5}, Lcom/tencent/tme/live/d2/b;->select(I)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v5}, Lcom/tencent/tme/live/d2/b;->access$500(Lcom/tencent/tme/live/d2/b;)I

    move-result v5

    add-int/2addr v1, v5

    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v5}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v5}, Lcom/tencent/tme/live/d2/b;->access$600(Lcom/tencent/tme/live/d2/b;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v4, Lcom/tencent/tme/live/d2/b$b;->b:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v4}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3
    iget-object v5, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v5}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-static {v5, v6, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v4, Lcom/tencent/tme/live/d2/b$b;->b:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v4}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_5
    sget-boolean v5, Lcom/tencent/tme/live/d2/b$b;->b:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v5}, Lcom/tencent/tme/live/d2/b;->access$300(Lcom/tencent/tme/live/d2/b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_7
    :goto_2
    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v4}, Lcom/tencent/tme/live/d2/b;->selectedHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tme/live/d2/b;->access$700(Lcom/tencent/tme/live/d2/b;Ljava/util/Iterator;)I

    move-result v4

    sub-int/2addr v1, v4

    :cond_8
    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v4}, Lcom/tencent/tme/live/d2/b;->allHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tme/live/d2/b;->access$800(Lcom/tencent/tme/live/d2/b;Ljava/util/Iterator;)V

    iget-object v4, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v4}, Lcom/tencent/tme/live/d2/b;->access$900(Lcom/tencent/tme/live/d2/b;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    .line 1
    sget-object v5, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v5, v4}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    .line 3
    sget-object v3, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v3, v2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    .line 5
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 6
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/b;->access$400(Lcom/tencent/tme/live/d2/b;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1, v0}, Lcom/tencent/tme/live/d2/b;->access$402(Lcom/tencent/tme/live/d2/b;Z)Z

    :try_start_2
    iget-object v0, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/b;->access$1000(Lcom/tencent/tme/live/d2/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/b;->access$1100(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/i;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/b;->access$1200(Lcom/tencent/tme/live/d2/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/d2/b;->destroy()V

    :cond_b
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 9
    :try_start_6
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 10
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6
    :goto_4
    iget-object v0, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v0}, Lcom/tencent/tme/live/d2/b;->access$1300(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    goto :goto_8

    .line 10
    :goto_5
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/b;->access$1300(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v1

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    .line 12
    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/b;->access$1200(Lcom/tencent/tme/live/d2/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v2, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/d2/b;->destroy()V

    :cond_c
    monitor-exit v1

    goto :goto_6

    :catchall_3
    move-exception v2

    .line 14
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    .line 15
    :try_start_a
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 16
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 12
    :goto_6
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/b;->access$1300(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v1

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    .line 16
    throw v0

    :goto_7
    iget-object v1, p0, Lcom/tencent/tme/live/d2/b$b;->a:Lcom/tencent/tme/live/d2/b;

    invoke-static {v1}, Lcom/tencent/tme/live/d2/b;->access$1300(Lcom/tencent/tme/live/d2/b;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v1

    .line 17
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    .line 18
    throw v0

    :cond_d
    :goto_8
    return-void
.end method
