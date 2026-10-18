.class public final Lcom/beetalk/sdk/helper/TaskUtil;
.super Ljava/lang/Object;
.source "TaskUtil.java"


# static fields
.field public static final SUCCESS:Ljava/lang/String; = "Success"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;",
            "Lbolts/Task<",
            "TT;>;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 40
    new-instance p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2, p3, p1}, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;-><init>(Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V

    sget-object p3, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 58
    invoke-virtual {p1}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object p1

    .line 40
    invoke-virtual {p2, p0, p3, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method private static checkResponse(Ljava/lang/Object;)Lcom/garena/android/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/garena/android/model/Result<",
            "TT;>;"
        }
    .end annotation

    .line 69
    instance-of v0, p0, Lcom/beetalk/sdk/networking/model/BaseResp;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/networking/model/BaseResp;

    .line 72
    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/BaseResp;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance p0, Lcom/garena/android/model/Result$Failure;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/BaseResp;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lcom/garena/android/model/Result$Success;

    invoke-direct {v0, p0}, Lcom/garena/android/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 77
    :cond_1
    instance-of v0, p0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    if-eqz v0, :cond_3

    .line 78
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    .line 79
    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->isSuccessResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    new-instance v0, Lcom/garena/android/model/Result$Success;

    invoke-direct {v0, p0}, Lcom/garena/android/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 82
    :cond_2
    new-instance p0, Lcom/garena/android/model/Result$Failure;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object p0

    .line 85
    :cond_3
    new-instance v0, Lcom/garena/android/model/Result$Success;

    invoke-direct {v0, p0}, Lcom/garena/android/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)V"
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p2, v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p2

    .line 36
    invoke-static {p0, v0, p2, p1}, Lcom/beetalk/sdk/helper/TaskUtil;->awaitAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method static synthetic lambda$awaitAndNotifyCallback$0(Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance p0, Lcom/garena/android/model/Result$Failure;

    sget-object p3, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Task Cancelled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/TaskUtil;->parseError(Ljava/lang/Exception;)Lcom/garena/android/model/Result;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 49
    new-instance p0, Lcom/garena/android/model/Result$Failure;

    sget-object p3, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown error, no result"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p0}, Lcom/beetalk/sdk/helper/TaskUtil;->checkResponse(Ljava/lang/Object;)Lcom/garena/android/model/Result;

    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p1, p0}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p2}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->tryRelease()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$awaitAndNotifyCallback$1(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseError(Ljava/lang/Exception;)Lcom/garena/android/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/garena/android/model/Result<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 91
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "request error"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    :cond_0
    instance-of v0, p0, Lcom/garena/pay/android/exception/GGException;

    if-eqz v0, :cond_1

    .line 95
    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {v0}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/garena/android/model/Result$Failure;

    invoke-direct {v1, v0, p0}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object v1

    .line 99
    :cond_1
    new-instance v0, Lcom/garena/android/model/Result$Failure;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {v0, v1, p0}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static parseJson(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 119
    :catch_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method

.method public static requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p0
.end method

.method public static requireTrue(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p0
.end method
