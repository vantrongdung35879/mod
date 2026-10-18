.class public final Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;
.super Lcom/tencent/tme/live/d2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/d2/c<",
        "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# instance fields
.field private selector:Ljava/nio/channels/Selector;

.field private selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/tencent/tme/live/y1/a;

    const-string v1, "Failed to open a selector."

    invoke-direct {v0, v1, p1}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/d2/c;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/tencent/tme/live/y1/a;

    const-string v0, "Failed to open a selector."

    invoke-direct {p2, v0, p1}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public allSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method public bridge synthetic destroy(Lcom/tencent/tme/live/f2/a;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->destroy(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public destroy(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1
    return-void
.end method

.method public doDispose()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public bridge synthetic getState(Lcom/tencent/tme/live/f2/a;)Lcom/tencent/tme/live/f2/q;
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->getState(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Lcom/tencent/tme/live/f2/q;

    move-result-object p1

    return-object p1
.end method

.method public getState(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Lcom/tencent/tme/live/f2/q;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tme/live/f2/q;->a:Lcom/tencent/tme/live/f2/q;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tencent/tme/live/f2/q;->b:Lcom/tencent/tme/live/f2/q;

    return-object p1

    :cond_1
    sget-object p1, Lcom/tencent/tme/live/f2/q;->c:Lcom/tencent/tme/live/f2/q;

    return-object p1
.end method

.method public bridge synthetic init(Lcom/tencent/tme/live/f2/a;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->init(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public init(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method public isBrokenConnection()Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    instance-of v5, v4, Ljava/nio/channels/DatagramChannel;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    instance-of v5, v4, Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic isInterestedInRead(Lcom/tencent/tme/live/f2/a;)Z
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->isInterestedInRead(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isInterestedInRead(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isInterestedInWrite(Lcom/tencent/tme/live/f2/a;)Z
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->isInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isReadable(Lcom/tencent/tme/live/f2/a;)Z
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->isReadable(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isReadable(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSelectorEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWritable(Lcom/tencent/tme/live/f2/a;)Z
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->isWritable(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isWritable(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic read(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;)I
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->read(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;)I

    move-result p1

    return p1
.end method

.method public read(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;)I
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public registerNewSelector()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public select()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method public selectedSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method public bridge synthetic setInterestedInRead(Lcom/tencent/tme/live/f2/a;Z)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->setInterestedInRead(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method public setInterestedInRead(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x2

    :goto_0
    if-eq v0, p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic setInterestedInWrite(Lcom/tencent/tme/live/f2/a;Z)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method public setInterestedInWrite(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x5

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic transferFile(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/a2/b;I)I
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->transferFile(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/a2/b;I)I

    move-result p1

    return p1
.end method

.method public transferFile(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/a2/b;I)I
    .locals 6

    :try_start_0
    invoke-interface {p2}, Lcom/tencent/tme/live/a2/b;->b()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-interface {p2}, Lcom/tencent/tme/live/a2/b;->c()J

    move-result-wide v1

    int-to-long v3, p3

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p2, p1

    return p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "temporarily unavailable"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    throw p1
.end method

.method public wakeup()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/d2/c;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic write(Lcom/tencent/tme/live/f2/a;Lcom/tencent/tme/live/z1/b;I)I
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;->write(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;I)I

    move-result p1

    return p1
.end method

.method public write(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;Lcom/tencent/tme/live/z1/b;I)I
    .locals 2

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v0

    if-gt v0, p3, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->l()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/z1/b;->d(I)Lcom/tencent/tme/live/z1/b;

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/z1/b;->d(I)Lcom/tencent/tme/live/z1/b;

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/z1/b;->d(I)Lcom/tencent/tme/live/z1/b;

    throw p1
.end method
