.class public interface abstract Lcom/tencent/tme/net/mina/transport/socket/SocketAcceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/e;


# virtual methods
.method public abstract synthetic bind()V
.end method

.method public abstract synthetic bind(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;)V
.end method

.method public varargs abstract synthetic bind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
.end method

.method public varargs abstract synthetic bind([Ljava/net/SocketAddress;)V
.end method

.method public abstract getBacklog()I
.end method

.method public abstract getDefaultLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public bridge abstract synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract synthetic getDefaultLocalAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract synthetic getLocalAddresses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;
.end method

.method public abstract synthetic isCloseOnDeactivation()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract synthetic newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/f2/j;
.end method

.method public abstract setBacklog(I)V
.end method

.method public abstract synthetic setCloseOnDeactivation(Z)V
.end method

.method public abstract setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract synthetic setDefaultLocalAddress(Ljava/net/SocketAddress;)V
.end method

.method public abstract synthetic setDefaultLocalAddresses(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract synthetic setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
.end method

.method public abstract synthetic setDefaultLocalAddresses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setReuseAddress(Z)V
.end method

.method public abstract synthetic unbind()V
.end method

.method public abstract synthetic unbind(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic unbind(Ljava/net/SocketAddress;)V
.end method

.method public varargs abstract synthetic unbind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
.end method
