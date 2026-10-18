.class Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VmPipeIoProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/e2/i<",
        "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;


# direct methods
.method private constructor <init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V

    return-void
.end method

.method private getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->m()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    move-object p1, v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic add(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->add(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public add(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public bridge synthetic flush(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public flush(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 8

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue0()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_2
    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v3, p1}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    new-instance v6, Lcom/tencent/tme/live/f2/h;

    sget-object v7, Lcom/tencent/tme/live/f2/i;->e:Lcom/tencent/tme/live/f2/i;

    invoke-direct {v6, v7, p1, v3}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v5, v6, v3}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$100(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;Lcom/tencent/tme/live/f2/h;Z)V

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/tencent/tme/live/b2/e;->fireMessageReceived(Ljava/lang/Object;)V

    instance-of v3, v4, Lcom/tencent/tme/live/z1/b;

    if-eqz v3, :cond_2

    check-cast v4, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v4}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v3

    invoke-virtual {p1, v3, v1, v2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->increaseWrittenBytes0(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$400(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;)V

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/tencent/tme/live/g2/h;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/g2/h;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v2}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic remove(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->remove(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public remove(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getServiceListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e2/l;->b(Lcom/tencent/tme/live/f2/j;)V

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public bridge synthetic updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->updateTrafficControl(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public updateTrafficControl(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->write(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public write(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;)V

    :cond_0
    return-void
.end method
