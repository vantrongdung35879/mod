.class public final synthetic Lcom/tencent/tme/net/mina/transport/socket/SocketConnector$-CC;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic $default$getDefaultRemoteAddress(Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "_this"    # Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;

    .line 0
    invoke-interface {p0}, Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;->getDefaultRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$getSessionConfig(Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;)Lcom/tencent/tme/live/f2/l;
    .locals 1
    .param p0, "_this"    # Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;

    .line 0
    invoke-interface {p0}, Lcom/tencent/tme/net/mina/transport/socket/SocketConnector;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method
