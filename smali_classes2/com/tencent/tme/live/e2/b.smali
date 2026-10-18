.class public abstract Lcom/tencent/tme/live/e2/b;
.super Lcom/tencent/tme/live/e2/c;

# interfaces
.implements Lcom/tencent/tme/live/e2/f;


# instance fields
.field private connectTimeoutCheckInterval:J

.field private connectTimeoutInMillis:J

.field private defaultLocalAddress:Ljava/net/SocketAddress;

.field private defaultRemoteAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/e2/c;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    const-wide/16 p1, 0x32

    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutCheckInterval:J

    const-wide/32 p1, 0xea60

    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutInMillis:J

    return-void
.end method


# virtual methods
.method public final connect()Lcom/tencent/tme/live/c2/b;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/b;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/tme/live/e2/b;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "defaultRemoteAddress is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .locals 2
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

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/b;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/tme/live/e2/b;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "defaultRemoteAddress is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect(Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tencent/tme/live/e2/b;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .locals 1
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/tme/live/e2/b;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tme/live/e2/b;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .locals 4
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

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " (expected: "

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "localAddress type: "

    invoke-static {p3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/e2/d;

    .line 5
    iget-object p2, p2, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getSessionConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/tme/live/e2/b$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e2/b$a;-><init>(Lcom/tencent/tme/live/e2/b;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e2/c;->setHandler(Lcom/tencent/tme/live/e2/g;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "handler is not set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/e2/b;->connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "remoteAddress type: "

    invoke-static {p3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/e2/d;

    .line 7
    iget-object p1, p1, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connector is being disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
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

.method public final finishSessionInitialization0(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/e2/b$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tme/live/e2/b$b;-><init>(Lcom/tencent/tme/live/e2/b;Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {p2, v0}, Lcom/tencent/tme/live/c2/h;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    return-void
.end method

.method public final getConnectTimeout()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutInMillis:J

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public getConnectTimeoutCheckInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutCheckInterval:J

    return-wide v0
.end method

.method public final getConnectTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutInMillis:J

    return-wide v0
.end method

.method public final getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/b;->defaultLocalAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/b;->defaultRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final setConnectTimeout(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/e2/b;->setConnectTimeoutMillis(J)V

    return-void
.end method

.method public setConnectTimeoutCheckInterval(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/b;->getConnectTimeoutMillis()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutInMillis:J

    :cond_0
    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutCheckInterval:J

    return-void
.end method

.method public final setConnectTimeoutMillis(J)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutCheckInterval:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutCheckInterval:J

    :cond_0
    iput-wide p1, p0, Lcom/tencent/tme/live/e2/b;->connectTimeoutInMillis:J

    return-void
.end method

.method public final setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e2/b;->defaultLocalAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method public final setDefaultRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/e2/b;->defaultRemoteAddress:Ljava/net/SocketAddress;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultRemoteAddress type: "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/e2/d;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "defaultRemoteAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lcom/tencent/tme/live/e2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/e2/d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e2/d;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " connector: managedSessionCount: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getManagedSessionCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
