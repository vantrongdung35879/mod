.class Lcom/beetalk/sdk/TwitterAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "TwitterAuthRequestHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TwitterAuthRequestHandler"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private final callback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monError(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSuccess(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    .line 33
    new-instance v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;)V

    iput-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->callback:Lcom/twitter/sdk/android/core/Callback;

    .line 56
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->activity:Landroid/app/Activity;

    return-void
.end method

.method private exchangeTokenFromGOP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;)V

    sget-object p3, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 112
    invoke-virtual {p1, p2, p3}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method static synthetic lambda$exchangeTokenFromGOP$0(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p2}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result v1

    .line 112
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p0, p1, v0, v1, p2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeTwitterToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method private onError(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 1

    .line 99
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->exchangeTokenFromGOP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$exchangeTokenFromGOP$1$com-beetalk-sdk-TwitterAuthRequestHandler(Lbolts/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    .line 115
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p4

    invoke-virtual {p4}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result p4

    if-ne p1, p4, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    .line 61
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Start twitter auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->callback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    const/4 p1, 0x1

    return p1
.end method
