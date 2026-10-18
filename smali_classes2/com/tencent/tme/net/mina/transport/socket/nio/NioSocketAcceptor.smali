.class public final Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;
.super Lcom/tencent/tme/live/d2/a;

# interfaces
.implements Lcom/tencent/tme/net/mina/transport/socket/SocketAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/d2/a<",
        "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/ServerSocketChannel;",
        ">;",
        "Lcom/tencent/tme/net/mina/transport/socket/SocketAcceptor;"
    }
.end annotation


# instance fields
.field private volatile selector:Ljava/nio/channels/Selector;

.field private volatile selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->init(Lcom/tencent/tme/live/e2/j;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->init(Lcom/tencent/tme/live/e2/j;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->init(Lcom/tencent/tme/live/e2/j;)V

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/e2/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Lcom/tencent/tme/live/e2/i;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->init(Lcom/tencent/tme/live/e2/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/live/d2/a;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;Lcom/tencent/tme/live/e2/i;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->init(Lcom/tencent/tme/live/e2/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;
    .locals 0

    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->accept(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/ServerSocketChannel;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/ServerSocketChannel;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/ServerSocketChannel;",
            ")",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v1}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;-><init>(Lcom/tencent/tme/live/e2/j;Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/SocketChannel;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/a;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public init(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 0

    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;
    .locals 0

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 4

    const-string v0, "Error while binding on "

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->isReuseAddress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/d2/a;->getBacklog()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v0, 0x10

    invoke-virtual {v1, p1, v0}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\noriginal message : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    throw p1
.end method

.method public select()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;

    iget-object v1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;-><init>(Ljava/util/Collection;Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor$1;)V

    return-object v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/e2/a;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
