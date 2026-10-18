.class Lcom/centauri/http/core/HttpCall;
.super Ljava/lang/Object;
.source "HttpCall.java"

# interfaces
.implements Lcom/centauri/http/core/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/core/HttpCall$AsyncHttpCall;
    }
.end annotation


# instance fields
.field private final mNetMgr:Lcom/centauri/http/core/NetworkManager;

.field private final mRequest:Lcom/centauri/http/core/Request;


# direct methods
.method constructor <init>(Lcom/centauri/http/core/NetworkManager;Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/centauri/http/core/HttpCall;->mRequest:Lcom/centauri/http/core/Request;

    .line 18
    iput-object p1, p0, Lcom/centauri/http/core/HttpCall;->mNetMgr:Lcom/centauri/http/core/NetworkManager;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/centauri/http/core/HttpCall;->mRequest:Lcom/centauri/http/core/Request;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/centauri/http/core/HttpCall;->mNetMgr:Lcom/centauri/http/core/NetworkManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/http/core/HttpCall;Z)Lcom/centauri/http/core/Response;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/centauri/http/core/HttpCall;->getResponseWithInterceptorChain(Z)Lcom/centauri/http/core/Response;

    move-result-object p0

    return-object p0
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/centauri/http/core/Response;
    .locals 3

    .line 208
    new-instance v0, Lcom/centauri/http/core/Response;

    invoke-direct {v0}, Lcom/centauri/http/core/Response;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/centauri/http/core/HttpCall;->mRequest:Lcom/centauri/http/core/Request;

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/Response;->setRequest(Lcom/centauri/http/core/Request;)V

    .line 211
    iget-object v1, p0, Lcom/centauri/http/core/HttpCall;->mNetMgr:Lcom/centauri/http/core/NetworkManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {v1}, Lcom/centauri/http/core/NetworkManager;->getBuiltinInterceptors()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v1}, Lcom/centauri/http/core/NetworkManager;->getAllInterceptors()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 227
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/Interceptor;

    .line 229
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall;->mRequest:Lcom/centauri/http/core/Request;

    invoke-interface {v1, v2, v0}, Lcom/centauri/http/core/Interceptor;->intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    iget-boolean v1, v0, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/centauri/http/core/Response;->resetNeedBreakOtherInterceptors()V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall;->mRequest:Lcom/centauri/http/core/Request;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/centauri/http/core/Request;->stopRequest()V

    :cond_0
    return-void
.end method

.method public enqueue(Lcom/centauri/http/core/Callback;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall;->mNetMgr:Lcom/centauri/http/core/NetworkManager;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/http/core/NetworkManager;->dispatcher()Lcom/centauri/http/core/Dispatcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 50
    :cond_1
    new-instance v1, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;-><init>(Lcom/centauri/http/core/HttpCall;Lcom/centauri/http/core/Callback;Z)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/centauri/http/core/Dispatcher;->enqueue(Lcom/centauri/http/core/ExecutableCall;)V

    return-void
.end method

.method public enqueueWithNoCustomInterceptor(Lcom/centauri/http/core/Callback;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall;->mNetMgr:Lcom/centauri/http/core/NetworkManager;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/http/core/NetworkManager;->dispatcher()Lcom/centauri/http/core/Dispatcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    new-instance v1, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;-><init>(Lcom/centauri/http/core/HttpCall;Lcom/centauri/http/core/Callback;Z)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/centauri/http/core/Dispatcher;->enqueue(Lcom/centauri/http/core/ExecutableCall;)V

    return-void
.end method

.method public execute()Lcom/centauri/http/core/Response;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/centauri/http/core/HttpCall;->getResponseWithInterceptorChain(Z)Lcom/centauri/http/core/Response;

    move-result-object v0

    return-object v0
.end method

.method public executeWithAllCustomInterceptor()Lcom/centauri/http/core/Response;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/centauri/http/core/HttpCall;->getResponseWithInterceptorChain(Z)Lcom/centauri/http/core/Response;

    move-result-object v0

    return-object v0
.end method

.method public executeWithNoCustomInterceptor()Lcom/centauri/http/core/Response;
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, v0}, Lcom/centauri/http/core/HttpCall;->getResponseWithInterceptorChain(Z)Lcom/centauri/http/core/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
