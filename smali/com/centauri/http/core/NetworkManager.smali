.class public Lcom/centauri/http/core/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/core/INetworkManager;


# instance fields
.field private final allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/centauri/http/core/ExecutableCall;",
            ">;"
        }
    .end annotation
.end field

.field private final builtinInterceptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public defaultConnectTimeout:I

.field private defaultMaxRetryTimes:I

.field public defaultReadTimeout:I

.field private delivery:Lcom/centauri/http/core/Delivery;

.field private final endInterceptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final frontInterceptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private httpInterceptor:Lcom/centauri/http/core/HttpInterceptor;

.field private mDispatcher:Lcom/centauri/http/core/Dispatcher;


# direct methods
.method public constructor <init>(Lcom/centauri/http/core/IHttpLog;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/http/core/NetworkManager;->frontInterceptors:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/http/core/NetworkManager;->builtinInterceptors:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/centauri/http/core/NetworkManager;->endInterceptors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 27
    iput v1, p0, Lcom/centauri/http/core/NetworkManager;->defaultMaxRetryTimes:I

    const/16 v1, 0x3a98

    .line 32
    iput v1, p0, Lcom/centauri/http/core/NetworkManager;->defaultConnectTimeout:I

    .line 33
    iput v1, p0, Lcom/centauri/http/core/NetworkManager;->defaultReadTimeout:I

    .line 36
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/centauri/http/core/NetworkManager;->allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    sput-object p1, Lcom/centauri/http/core/HttpLog;->httpLogInterface:Lcom/centauri/http/core/IHttpLog;

    .line 42
    new-instance p1, Lcom/centauri/http/core/HttpInterceptor;

    invoke-direct {p1, p0}, Lcom/centauri/http/core/HttpInterceptor;-><init>(Lcom/centauri/http/core/NetworkManager;)V

    iput-object p1, p0, Lcom/centauri/http/core/NetworkManager;->httpInterceptor:Lcom/centauri/http/core/HttpInterceptor;

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p1, Lcom/centauri/http/core/Dispatcher;

    invoke-direct {p1}, Lcom/centauri/http/core/Dispatcher;-><init>()V

    iput-object p1, p0, Lcom/centauri/http/core/NetworkManager;->mDispatcher:Lcom/centauri/http/core/Dispatcher;

    .line 47
    new-instance p1, Lcom/centauri/http/core/MainThreadDelivery;

    invoke-direct {p1}, Lcom/centauri/http/core/MainThreadDelivery;-><init>()V

    iput-object p1, p0, Lcom/centauri/http/core/NetworkManager;->delivery:Lcom/centauri/http/core/Delivery;

    return-void
.end method


# virtual methods
.method public declared-synchronized addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->frontInterceptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->httpInterceptor:Lcom/centauri/http/core/HttpInterceptor;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/HttpInterceptor;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->endInterceptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public cancelAllRequest()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/ExecutableCall;

    .line 108
    invoke-interface {v1}, Lcom/centauri/http/core/ExecutableCall;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelRequestByName(Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/ExecutableCall;

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v1}, Lcom/centauri/http/core/ExecutableCall;->getRequestName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v1}, Lcom/centauri/http/core/ExecutableCall;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public delivery()Lcom/centauri/http/core/Delivery;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->delivery:Lcom/centauri/http/core/Delivery;

    return-object v0
.end method

.method public dispatcher()Lcom/centauri/http/core/Dispatcher;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->mDispatcher:Lcom/centauri/http/core/Dispatcher;

    return-object v0
.end method

.method public getAllInterceptors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/centauri/http/core/NetworkManager;->frontInterceptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v1, p0, Lcom/centauri/http/core/NetworkManager;->builtinInterceptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v1, p0, Lcom/centauri/http/core/NetworkManager;->endInterceptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBuiltinInterceptors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/centauri/http/core/NetworkManager;->builtinInterceptors:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultMaxRetryTimes()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/centauri/http/core/NetworkManager;->defaultMaxRetryTimes:I

    return v0
.end method

.method public newCall(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Call;
    .locals 1

    .line 190
    new-instance v0, Lcom/centauri/http/core/HttpCall;

    invoke-direct {v0, p0, p1}, Lcom/centauri/http/core/HttpCall;-><init>(Lcom/centauri/http/core/NetworkManager;Lcom/centauri/http/core/Request;)V

    return-object v0
.end method

.method public registerAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDefaultMaxRetryTimes(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/centauri/http/core/NetworkManager;->defaultMaxRetryTimes:I

    return-void
.end method

.method public setDelivery(Lcom/centauri/http/core/Delivery;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lcom/centauri/http/core/NetworkManager;->delivery:Lcom/centauri/http/core/Delivery;

    :cond_0
    return-void
.end method

.method public unregisterAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/centauri/http/core/NetworkManager;->allAsyncHttpCall:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
