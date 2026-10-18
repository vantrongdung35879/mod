.class public final Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;
.super Lcom/tencent/tme/live/d2/b;

# interfaces
.implements Lcom/tencent/tme/net/mina/transport/socket/DatagramConnector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/d2/b<",
        "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/DatagramChannel;",
        ">;",
        "Lcom/tencent/tme/net/mina/transport/socket/DatagramConnector;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;I)V

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

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Lcom/tencent/tme/live/e2/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;>;I)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/live/d2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public allHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->close(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    return-void
.end method

.method public bridge synthetic connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .locals 0

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method public connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public bridge synthetic finishConnect(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->finishConnect(Ljava/nio/channels/DatagramChannel;)Z

    move-result p1

    return p1
.end method

.method public finishConnect(Ljava/nio/channels/DatagramChannel;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getConnectionRequest(Ljava/lang/Object;)Lcom/tencent/tme/live/d2/b$a;
    .locals 0

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lcom/tencent/tme/live/d2/b$a;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lcom/tencent/tme/live/d2/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lcom/tencent/tme/live/d2/b<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.a;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDefaultRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e2/b;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->getDefaultRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 4

    const-string v0, "Error while binding on "

    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/e2/b;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_1
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

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->close()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->close()V

    throw p1

    :cond_0
    :goto_1
    return-object v1
.end method

.method public bridge synthetic newSession(Lcom/tencent/tme/live/e2/i;Ljava/lang/Object;)Lcom/tencent/tme/live/f2/a;
    .locals 0

    check-cast p2, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->newSession(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/DatagramChannel;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public newSession(Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/DatagramChannel;)Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;-><init>(Lcom/tencent/tme/live/e2/j;Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/e2/i;)V

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramSession;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/f2/l;->setAll(Lcom/tencent/tme/live/f2/l;)V

    return-object v0
.end method

.method public bridge synthetic register(Ljava/lang/Object;Lcom/tencent/tme/live/d2/b$a;)V
    .locals 0

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioDatagramConnector;->register(Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/d2/b$a;)V

    return-void
.end method

.method public register(Ljava/nio/channels/DatagramChannel;Lcom/tencent/tme/live/d2/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            "Lcom/tencent/tme/live/d2/b<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.a;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public select(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tme/live/e2/b;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public wakeup()V
    .locals 0

    return-void
.end method
