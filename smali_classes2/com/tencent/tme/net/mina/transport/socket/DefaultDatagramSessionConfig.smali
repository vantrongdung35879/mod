.class public Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;
.super Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;


# static fields
.field private static final DEFAULT_BROADCAST:Z = false

.field private static final DEFAULT_RECEIVE_BUFFER_SIZE:I = -0x1

.field private static final DEFAULT_REUSE_ADDRESS:Z = false

.field private static final DEFAULT_SEND_BUFFER_SIZE:I = -0x1

.field private static final DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private broadcast:Z

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/net/mina/transport/socket/AbstractDatagramSessionConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    iput-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    iput v1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    iput v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    return v0
.end method

.method public isBroadcastChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    return v0
.end method

.method public isReceiveBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

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

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    return v0
.end method

.method public isReuseAddressChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    return v0
.end method

.method public isSendBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrafficClassChanged()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBroadcast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    return-void
.end method
