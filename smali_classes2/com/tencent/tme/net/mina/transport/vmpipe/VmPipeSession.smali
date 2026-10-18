.class Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;
.super Lcom/tencent/tme/live/f2/a;


# static fields
.field public static final METADATA:Lcom/tencent/tme/live/e2/o;


# instance fields
.field private final filterChain:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

.field private final localAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field public final receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

.field private final remoteSession:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

.field private final serviceAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

.field private final serviceListeners:Lcom/tencent/tme/live/e2/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/tencent/tme/live/e2/d;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const-class v5, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    const-class v6, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    const-string v1, "mina"

    const-string v2, "vmpipe"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tme/live/e2/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/e2/j;Lcom/tencent/tme/live/e2/l;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;Lcom/tencent/tme/live/e2/g;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/f2/a;-><init>(Lcom/tencent/tme/live/e2/j;)V

    new-instance p1, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lcom/tencent/tme/live/e2/l;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->localAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    invoke-virtual {p5}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->getAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    new-instance p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p1, p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;-><init>(Lcom/tencent/tme/live/f2/a;)V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->filterChain:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-direct {p1, p0, p5}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;-><init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;)V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;)V
    .locals 1

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->getAcceptor()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/f2/a;-><init>(Lcom/tencent/tme/live/e2/j;)V

    new-instance v0, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lcom/tencent/tme/live/e2/l;

    iget-object p2, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    iget-object p2, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->localAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iget-object p2, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->localAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    new-instance p2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p2, p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;-><init>(Lcom/tencent/tme/live/f2/a;)V

    iput-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->filterChain:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lcom/tencent/tme/live/b2/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->filterChain:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    return-object v0
.end method

.method public getLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->localAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public getProcessor()Lcom/tencent/tme/live/e2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->filterChain:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getRemoteAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSession()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    return-object v0
.end method

.method public getServiceAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getServiceAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceListeners()Lcom/tencent/tme/live/e2/l;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lcom/tencent/tme/live/e2/l;

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method

.method public getWriteRequestQueue0()Lcom/tencent/tme/live/g2/e;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    return-object v0
.end method

.method public increaseWrittenBytes0(IJ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tme/live/f2/a;->increaseWrittenBytes(IJ)V

    return-void
.end method
