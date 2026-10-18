.class Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Acceptor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;


# direct methods
.method private constructor <init>(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$002(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)J

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-object v4, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->select(J)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$300(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)I

    move-result v5
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v5

    if-nez v1, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$400(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$500(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$602(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    :cond_1
    :goto_1
    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v4}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->selectedHandles()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$700(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v4, v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$800(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)V

    iget-object v6, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$900(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v4, v5}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$1000(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1
    sget-object v5, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 2
    invoke-virtual {v5, v4}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 3
    sget-object v2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1, v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$202(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z

    :try_start_4
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 5
    :try_start_5
    sget-object v1, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 6
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4
    :goto_3
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    goto :goto_5

    .line 6
    :goto_4
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramAcceptor;)Lcom/tencent/tme/live/e2/c$c;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    throw v0

    :cond_4
    :goto_5
    return-void
.end method
