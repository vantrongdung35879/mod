.class Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;
.super Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
    }
.end annotation


# static fields
.field public static final METADATA:Lcom/tencent/tme/live/e2/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/tencent/tme/live/e2/d;

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Class;

    const-class v0, Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const-class v0, Lcom/tencent/tme/live/a2/b;

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    const-string v1, "nio"

    const-string v2, "socket"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tme/live/e2/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/e2/j;Lcom/tencent/tme/live/e2/i;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/j;",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1, p3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;-><init>(Lcom/tencent/tme/live/e2/i;Lcom/tencent/tme/live/e2/j;Ljava/nio/channels/Channel;)V

    new-instance p2, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession$1;)V

    iput-object p2, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    invoke-interface {p1}, Lcom/tencent/tme/live/e2/j;->getSessionConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tencent/tme/live/f2/l;->setAll(Lcom/tencent/tme/live/f2/l;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy(Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    return-void
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/f2/a;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public final isSecured()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    const-class v1, Lcom/tencent/tme/live/i2/a;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->get(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/i2/a;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/f2/j;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
