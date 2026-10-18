.class public Lcom/beetalk/sdk/VKAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "VKAuthRequestHandler.java"


# instance fields
.field private final vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    .line 27
    new-instance v0, Lcom/beetalk/sdk/vk/VKAuthManager;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/vk/VKAuthManager;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;

    .line 29
    new-instance p1, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;)V

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/vk/VKAuthManager;->setCallback(Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method private exchangeToken(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/AuthClient$Result;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$exchangeToken$1$com-beetalk-sdk-VKAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result v0

    .line 113
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p2, v1, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeVkTokenSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 117
    iget p2, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 118
    iget-object p2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/beetalk/sdk/vk/VKUtils;->logout(Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method

.method synthetic lambda$new$0$com-beetalk-sdk-VKAuthRequestHandler(Lcom/garena/android/model/Result;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/api/sdk/auth/VKAccessToken;

    .line 32
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler;->onLoggedIn(Lcom/vk/api/sdk/auth/VKAccessToken;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onError(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    const/4 v0, 0x1

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "vk auth err: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    .line 127
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method public onLoggedIn(Lcom/vk/api/sdk/auth/VKAccessToken;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v0, "vk auth success: %s"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/garena/msdk/R$style;->ProgressDialogTheme:I

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    sget v1, Lcom/garena/msdk/R$layout;->msdk_progress_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    new-instance v1, Lcom/beetalk/sdk/VKAuthRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/VKAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler;->exchangeToken(Ljava/lang/String;)Lbolts/Task;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/VKAuthRequestHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/beetalk/sdk/VKAuthRequestHandler$2;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Landroid/app/Dialog;)V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void

    .line 62
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    .line 63
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    const-string v1, "error"

    const-string/jumbo v2, "vk access token is null"

    invoke-static {v1, v2, v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    .line 41
    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "start VK Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKUtils;->lookUpAppId(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;

    invoke-virtual {p1}, Lcom/beetalk/sdk/vk/VKAuthManager;->login()V

    const/4 p1, 0x1

    return p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Forget add <integer name=\"com_vk_sdk_AppId\">your_app_id</integer> in your values dir?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
