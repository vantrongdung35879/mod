.class public Lcom/tencent/tme/live/e/g;
.super Ljava/lang/Thread;


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Lcom/tencent/tme/live/f2/j;

.field public b:Lcom/tencent/tme/live/e2/f;

.field public c:Lcom/tencent/tme/live/c2/b;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/ExecutorService;

.field public g:Lcom/tencent/tme/live/j/c;

.field public final h:Lcom/tencent/tme/live/h/a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    iput-object v0, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/e/g;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/tencent/tme/live/e/g$a;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/e/g$a;-><init>(Lcom/tencent/tme/live/e/g;)V

    iput-object v2, p0, Lcom/tencent/tme/live/e/g;->h:Lcom/tencent/tme/live/h/a;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/16 p1, 0x1f40

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x1f90

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketConnector;

    invoke-direct {p1}, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSocketConnector;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "release is called"

    const-string v1, "MinaThread"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    iput-object v2, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    const-string v0, "session.close"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/j;->dispose()V

    iput-object v2, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    const-string v0, "connector.dispose"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    iput-object v2, p0, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, "[TME_NET_LINK]socket connect"

    const-string v1, "MinaThread"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/f;->connect()Lcom/tencent/tme/live/c2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e/g;->c:Lcom/tencent/tme/live/c2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/b;->a()Lcom/tencent/tme/live/c2/b;

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->c:Lcom/tencent/tme/live/c2/b;

    if-nez v0, :cond_0

    const-string v0, "future null"

    goto :goto_0

    :cond_0
    const-string v0, "future not null"

    :goto_0
    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->c:Lcom/tencent/tme/live/c2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/b;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    if-nez v0, :cond_1

    const-string v0, "session null"

    goto :goto_1

    :cond_1
    const-string v0, "session not null"

    :goto_1
    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/tencent/tme/live/f2/l;->setUseReadOperation(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "\u5199\u6570\u636e\u5931\u8d25"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :goto_2
    const-string v0, "11"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "[TME_NET_LINK]socket connect exception:"

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/tme/live/f/b;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/tencent/tme/live/f/b;-><init>(I)V

    check-cast v0, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/b;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 10

    const-string v0, "MinaThread"

    const-string v1, "[TME_NET_LINK]socket init"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/x/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/tencent/tme/live/x/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object v3, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    .line 3
    const-string v4, "HttpDnsManager"

    const-string v5, "local dns ***"

    invoke-static {v4, v5, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "HttpDnsManager"

    aget-object v7, v3, v5

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v6, v7, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_1
    move-object v3, v4

    .line 7
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v3, p0, Lcom/tencent/tme/live/e/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 9
    :goto_2
    iget-object v3, p0, Lcom/tencent/tme/live/e/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lcom/tencent/tme/live/e/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tme/live/e/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 10
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const/4 v1, 0x1

    aput-object v5, v6, v1

    const-string v1, "[TME_NET_LINK]connect_ip : %s ; connect_port : %d"

    invoke-static {v4, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MinaThread"

    invoke-static {v4, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/16 v4, 0x7d0

    int-to-long v4, v4

    invoke-interface {v1, v4, v5}, Lcom/tencent/tme/live/e2/f;->setConnectTimeoutMillis(J)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    invoke-interface {v1}, Lcom/tencent/tme/live/e2/j;->getFilterChain()Lcom/tencent/tme/live/b2/b;

    move-result-object v1

    const-string v4, "codec"

    new-instance v5, Lcom/tencent/tme/live/h2/e;

    new-instance v6, Lcom/tencent/tme/live/g/a;

    invoke-direct {v6}, Lcom/tencent/tme/live/g/a;-><init>()V

    invoke-direct {v5, v6}, Lcom/tencent/tme/live/h2/e;-><init>(Lcom/tencent/tme/live/g/a;)V

    monitor-enter v1

    .line 11
    :try_start_2
    iget-object v6, v1, Lcom/tencent/tme/live/b2/b;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Lcom/tencent/tme/live/b2/b$a;

    .line 12
    invoke-direct {v7, v1, v4, v5}, Lcom/tencent/tme/live/b2/b$a;-><init>(Lcom/tencent/tme/live/b2/b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V

    .line 13
    invoke-virtual {v7}, Lcom/tencent/tme/live/b2/b$a;->getName()Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v5, v1, Lcom/tencent/tme/live/b2/b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/tme/live/b2/e$a;

    invoke-interface {v8}, Lcom/tencent/tme/live/b2/e$a;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v2, v8

    :cond_7
    if-nez v2, :cond_8

    .line 15
    iget-object v2, v1, Lcom/tencent/tme/live/b2/b;->a:Ljava/util/List;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 16
    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    new-instance v2, Lcom/tencent/tme/live/h/c;

    iget-object v4, p0, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    invoke-direct {v2, v4}, Lcom/tencent/tme/live/h/c;-><init>(Lcom/tencent/tme/live/j/c;)V

    invoke-interface {v1, v2}, Lcom/tencent/tme/live/e2/j;->setHandler(Lcom/tencent/tme/live/e2/g;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/tencent/tme/live/e2/f;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/g;->b:Lcom/tencent/tme/live/e2/f;

    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->h:Lcom/tencent/tme/live/h/a;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/e2/j;->addListener(Lcom/tencent/tme/live/e2/k;)V

    return-void

    .line 17
    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other filter is using the same name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/tencent/tme/live/b2/b$a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 18
    :cond_9
    :goto_4
    const-string v0, "MinaThread"

    const-string v1, "connect_ip && connect_port \u5f02\u5e38"

    .line 19
    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "MinaThread"

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/e/g;->c()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e/g;->b()V

    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/j;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/j;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/c2/a;->a()Lcom/tencent/tme/live/c2/a;

    const-string v1, "[TME_NET_LINK]socket disconnect..."

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Run error : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
