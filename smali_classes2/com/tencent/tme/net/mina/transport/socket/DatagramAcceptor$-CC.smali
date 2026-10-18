.class public final synthetic Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor$-CC;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic $default$getDefaultLocalAddress(Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "_this"    # Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;

    .line 0
    invoke-interface {p0}, Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$getLocalAddress(Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "_this"    # Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;

    .line 0
    invoke-interface {p0}, Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$getSessionConfig(Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;)Lcom/tencent/tme/live/f2/l;
    .locals 1
    .param p0, "_this"    # Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;

    .line 0
    invoke-interface {p0}, Lcom/tencent/tme/net/mina/transport/socket/DatagramAcceptor;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method
