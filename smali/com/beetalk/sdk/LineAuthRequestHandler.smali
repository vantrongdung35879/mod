.class public Lcom/beetalk/sdk/LineAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "LineAuthRequestHandler.java"


# static fields
.field private static final REQUEST_CODE:I = 0x8122


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

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

    .line 144
    iget-object v0, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/LineAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private onLoggedIn(Ljava/lang/String;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/garena/msdk/R$style;->ProgressDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 103
    sget v1, Lcom/garena/msdk/R$layout;->msdk_progress_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    new-instance v1, Lcom/beetalk/sdk/LineAuthRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/LineAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/LineAuthRequestHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/LineAuthRequestHandler;->exchangeToken(Ljava/lang/String;)Lbolts/Task;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/LineAuthRequestHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/beetalk/sdk/LineAuthRequestHandler$2;-><init>(Lcom/beetalk/sdk/LineAuthRequestHandler;Landroid/app/Dialog;)V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method


# virtual methods
.method synthetic lambda$exchangeToken$0$com-beetalk-sdk-LineAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result v0

    .line 149
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p2, v1, v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeLineTokenSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    const/4 p2, 0x1

    .line 153
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "response: %s"

    invoke-static {v0, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget p2, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 156
    iget-object p2, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/beetalk/sdk/line/LineUtils;->logout(Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 1

    const p2, 0x8122

    const/4 p4, 0x0

    if-ne p1, p2, :cond_3

    .line 61
    invoke-static {p3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    .line 62
    sget-object p2, Lcom/beetalk/sdk/LineAuthRequestHandler$3;->$SwitchMap$com$linecorp$linesdk$LineApiResponseCode:[I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, p4

    const-string p4, "line login failed: %s"

    invoke-static {p4, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object p2, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object p4, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const-string v0, "error"

    invoke-static {v0, p1, p4}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    .line 86
    :cond_0
    const-string p1, "line login canceled"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineCredential;->getAccessToken()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 69
    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, p4

    const-string p4, "line login success, token: %s"

    invoke-static {p4, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/LineAuthRequestHandler;->onLoggedIn(Ljava/lang/String;)V

    return p3

    .line 75
    :cond_2
    const-string p1, "line access token is null"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    return p3

    :cond_3
    return p4
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 4

    const/4 v0, 0x0

    .line 36
    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "start Line Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/beetalk/sdk/line/LineUtils;->lookUpChannelId(Landroid/content/Context;)I

    move-result p1

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    .line 45
    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    sget-object v3, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    .line 47
    invoke-static {v3}, Lbq/log$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object v2

    .line 44
    invoke-static {v1, p1, v2}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v1

    const v2, 0x8122

    invoke-interface {v1, p1, v2}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    return v0
.end method
