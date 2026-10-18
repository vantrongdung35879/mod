.class public Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;
.super Lcom/tencent/tme/net/mina/transport/socket/AbstractSocketSessionConfig;


# static fields
.field private static final DEFAULT_KEEP_ALIVE:Z = false

.field private static final DEFAULT_OOB_INLINE:Z = false

.field private static final DEFAULT_REUSE_ADDRESS:Z = false

.field private static final DEFAULT_SO_LINGER:I = -0x1

.field private static final DEFAULT_TCP_NO_DELAY:Z = false

.field private static final DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private defaultReuseAddress:Z

.field private keepAlive:Z

.field private oobInline:Z

.field public parent:Lcom/tencent/tme/live/e2/j;

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private soLinger:I

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    iput v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    iput-boolean v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    iput-boolean v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    iput v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    iput-boolean v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return v0
.end method

.method public init(Lcom/tencent/tme/live/e2/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->parent:Lcom/tencent/tme/live/e2/j;

    instance-of p1, p1, Lcom/tencent/tme/net/mina/transport/socket/SocketAcceptor;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    iget-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method public isKeepAliveChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method public isOobInline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method public isOobInlineChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method public isReceiveBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return v0
.end method

.method public isReuseAddressChanged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    iget-boolean v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSendBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoLingerChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method public isTcpNoDelayChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method public isTrafficClassChanged()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return-void
.end method

.method public setOobInline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return-void
.end method

.method public setSoLinger(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return-void
.end method
