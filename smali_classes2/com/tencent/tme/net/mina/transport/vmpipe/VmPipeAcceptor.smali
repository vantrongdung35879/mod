.class public final Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;
.super Lcom/tencent/tme/live/e2/a;


# static fields
.field public static final boundHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idleChecker:Lcom/tencent/tme/live/f2/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/e2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/tencent/tme/live/f2/g;

    invoke-direct {p1}, Lcom/tencent/tme/live/f2/g;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lcom/tencent/tme/live/f2/g;

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/g;->a()Lcom/tencent/tme/live/f2/g$a;

    move-result-object p1

    const-string v0, "idleStatusChecker"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    check-cast v2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v3

    if-ltz v3, :cond_2

    sget-object v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address already bound: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bind port number must be 0 or above."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/16 v2, 0x2710

    :goto_2
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_5

    new-instance v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    invoke-direct {v3, v2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    sget-object v4, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No port available."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    move-object v3, v2

    check-cast v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    sget-object v4, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v6

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;-><init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;Lcom/tencent/tme/live/e2/g;Lcom/tencent/tme/live/e2/l;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    sget-object v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate local address: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose0()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lcom/tencent/tme/live/f2/g;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/g;->b:Lcom/tencent/tme/live/f2/g$a;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/tencent/tme/live/f2/g$a;->a:Z

    iget-object v0, v0, Lcom/tencent/tme/live/f2/g$a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/a;->unbind()V

    return-void
.end method

.method public doFinishSessionInitialization(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    return-void
.end method

.method public getDefaultLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->getDefaultLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->getLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDefaultLocalAddress(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tme/live/e2/a;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public unbind0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    sget-object v2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
