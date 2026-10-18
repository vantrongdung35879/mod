.class Lcom/beetalk/sdk/GoogleAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "GoogleAuthRequestHandler.java"


# static fields
.field private static final RC_SIGN_IN:I = 0x7372


# instance fields
.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method private exchangeTokenFromGOP(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 3

    .line 119
    invoke-static {p2}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result v0

    .line 122
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {p1, v1, v2, v0, p2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeGoogleTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    const/4 p2, 0x1

    .line 127
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "Google login exchange token, result: "

    invoke-static {v0, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget p2, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 130
    iget-object p2, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-object p1
.end method

.method private static getGoogleClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getGoogleClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGoogleSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 3

    .line 152
    invoke-static {p0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->getGoogleClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 154
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Google client ID is not configured."

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method private onError(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onSuccess(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Starting Token Exchange for Google"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/beetalk/sdk/GoogleAuthRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GoogleAuthRequestHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/GoogleAuthRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/GoogleAuthRequestHandler;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-beetalk-sdk-GoogleAuthRequestHandler(Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->exchangeTokenFromGOP(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSuccess$1$com-beetalk-sdk-GoogleAuthRequestHandler(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 1

    const/16 p4, 0x7372

    const/4 v0, 0x0

    if-ne p1, p4, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 68
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 70
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    move-result p2

    if-nez p2, :cond_0

    .line 73
    const-string p2, "Google login success"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    const-string p1, "Google login failed"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "signInResult:failed code="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/beetalk/sdk/helper/BBLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/16 p2, 0x30d5

    if-ne p1, p2, :cond_1

    .line 84
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 86
    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 90
    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    .line 35
    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "start Google Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->getGoogleSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez p1, :cond_1

    return v0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 49
    const-string v1, "already login"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "got token failed"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 57
    const-string/jumbo p1, "starting google sign in page"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v0

    const/16 v1, 0x7372

    invoke-interface {v0, p1, v1}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
