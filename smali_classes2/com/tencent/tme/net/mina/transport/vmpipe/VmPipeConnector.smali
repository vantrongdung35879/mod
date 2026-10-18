.class public final Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;
.super Lcom/tencent/tme/live/e2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
    }
.end annotation


# static fields
.field private static final LOCAL_ADDRESS_RECLAIMER:Lcom/tencent/tme/live/c2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c2/i<",
            "Lcom/tencent/tme/live/c2/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static nextLocalPort:I


# instance fields
.field private idleChecker:Lcom/tencent/tme/live/f2/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    new-instance v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector$1;)V

    sput-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lcom/tencent/tme/live/c2/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lcom/tencent/tme/net/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/e2/b;-><init>(Lcom/tencent/tme/live/f2/l;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/tencent/tme/live/f2/g;

    invoke-direct {p1}, Lcom/tencent/tme/live/f2/g;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lcom/tencent/tme/live/f2/g;

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/g;->a()Lcom/tencent/tme/live/f2/g$a;

    move-result-object p1

    const-string v0, "idleStatusChecker"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/e2/c;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    return-object v0
.end method

.method private static nextLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
    .locals 5

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    if-ltz v1, :cond_0

    const/4 v1, -0x1

    sput v1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_2

    new-instance v2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    sget v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    invoke-direct {v2, v3}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    sget-object v3, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t assign a local VM pipe port."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/tencent/tme/live/f2/o;)Lcom/tencent/tme/live/c2/b;
    .locals 7
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

    sget-object p2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Endpoint unavailable: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/tme/live/c2/d;->b(Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/c2/d;

    invoke-direct {p1}, Lcom/tencent/tme/live/c2/d;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->nextLocalAddress()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v6, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;-><init>(Lcom/tencent/tme/live/e2/j;Lcom/tencent/tme/live/e2/l;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;Lcom/tencent/tme/live/e2/g;Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;)V

    invoke-virtual {p0, v6, p1, p3}, Lcom/tencent/tme/live/e2/c;->initSession(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;Lcom/tencent/tme/live/f2/o;)V

    invoke-virtual {v6}, Lcom/tencent/tme/live/f2/a;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object p3

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lcom/tencent/tme/live/c2/i;

    invoke-interface {p3, v0}, Lcom/tencent/tme/live/c2/a;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;

    :try_start_1
    invoke-virtual {v6}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p3

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/b2/b;

    invoke-virtual {v0, p3}, Lcom/tencent/tme/live/b2/b;->a(Lcom/tencent/tme/live/b2/e;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e2/c;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/tencent/tme/live/e2/l;->a(Lcom/tencent/tme/live/f2/j;)V

    iget-object p3, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lcom/tencent/tme/live/f2/g;

    .line 1
    iget-object v0, p3, Lcom/tencent/tme/live/f2/g;->a:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/tencent/tme/live/f2/a;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v0

    iget-object p3, p3, Lcom/tencent/tme/live/f2/g;->c:Lcom/tencent/tme/live/c2/i;

    invoke-interface {v0, p3}, Lcom/tencent/tme/live/c2/a;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    invoke-virtual {v6}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;->doFinishSessionInitialization(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V

    :try_start_2
    invoke-virtual {p3}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->getAcceptor()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tme/live/e2/c;->getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/b2/b;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/b2/b;->a(Lcom/tencent/tme/live/b2/e;)V

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipe;->getListeners()Lcom/tencent/tme/live/e2/l;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/e2/l;->a(Lcom/tencent/tme/live/f2/j;)V

    iget-object p2, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lcom/tencent/tme/live/f2/g;

    .line 3
    iget-object v0, p2, Lcom/tencent/tme/live/f2/g;->a:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/tencent/tme/live/f2/a;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v0

    iget-object p2, p2, Lcom/tencent/tme/live/f2/g;->c:Lcom/tencent/tme/live/c2/i;

    invoke-interface {v0, p2}, Lcom/tencent/tme/live/c2/a;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 5
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p3}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;

    :goto_0
    invoke-virtual {v6}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    invoke-virtual {p3}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {p2}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    return-object p1

    :catch_1
    move-exception p2

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/c2/d;->a(Ljava/lang/Throwable;)V

    return-object p1

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/tencent/tme/live/c2/d;->b(Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/b;

    move-result-object p1

    return-object p1
.end method

.method public dispose0()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lcom/tencent/tme/live/f2/g;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/g;->b:Lcom/tencent/tme/live/f2/g$a;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/tencent/tme/live/f2/g$a;->a:Z

    iget-object v0, v0, Lcom/tencent/tme/live/f2/g$a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getSessionConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeConnector;->getSessionConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/c;->sessionConfig:Lcom/tencent/tme/live/f2/l;

    check-cast v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lcom/tencent/tme/live/e2/o;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeSession;->METADATA:Lcom/tencent/tme/live/e2/o;

    return-object v0
.end method
