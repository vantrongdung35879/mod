.class Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;
.super Ljava/lang/Object;


# instance fields
.field private final acceptor:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

.field private final address:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

.field private final handler:Lcom/tencent/tme/live/e2/g;

.field private final listeners:Lcom/tencent/tme/live/e2/l;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;Lcom/tencent/tme/live/e2/g;Lcom/tencent/tme/live/e2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->acceptor:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->address:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iput-object p3, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->handler:Lcom/tencent/tme/live/e2/g;

    iput-object p4, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->listeners:Lcom/tencent/tme/live/e2/l;

    return-void
.end method


# virtual methods
.method public getAcceptor()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->acceptor:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

    return-object v0
.end method

.method public getAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->address:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public getHandler()Lcom/tencent/tme/live/e2/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->handler:Lcom/tencent/tme/live/e2/g;

    return-object v0
.end method

.method public getListeners()Lcom/tencent/tme/live/e2/l;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->listeners:Lcom/tencent/tme/live/e2/l;

    return-object v0
.end method
