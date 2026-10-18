.class public interface abstract Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/f;


# virtual methods
.method public abstract synthetic connect()Lcom/tencent/tme/live/c2/b;
.end method

.method public abstract synthetic connect(Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;)",
            "Lcom/tencent/tme/live/c2/b;"
        }
    .end annotation
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/b;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;)",
            "Lcom/tencent/tme/live/c2/b;"
        }
    .end annotation
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/b;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;)",
            "Lcom/tencent/tme/live/c2/b;"
        }
    .end annotation
.end method

.method public abstract synthetic getConnectTimeout()I
.end method

.method public abstract synthetic getConnectTimeoutMillis()J
.end method

.method public abstract synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getDefaultRemoteAddress()Ljava/net/InetSocketAddress;
.end method

.method public bridge abstract synthetic getDefaultRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;
.end method

.method public abstract synthetic setConnectTimeout(I)V
.end method

.method public abstract synthetic setConnectTimeoutMillis(J)V
.end method

.method public abstract synthetic setDefaultLocalAddress(Ljava/net/SocketAddress;)V
.end method

.method public abstract setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract synthetic setDefaultRemoteAddress(Ljava/net/SocketAddress;)V
.end method
