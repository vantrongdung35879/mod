.class public final Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;
.super Ljava/lang/Object;
.source "GGLoginSessionRefreshFacebookTokenHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001H\u0002\u001a\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "exchangeFacebookToken",
        "Lcom/facebook/bolts/Task;",
        "Lcom/beetalk/sdk/data/AuthToken;",
        "token",
        "Lcom/facebook/AccessToken;",
        "authRequest",
        "Lcom/beetalk/sdk/AuthRequest;",
        "session",
        "Lcom/beetalk/sdk/GGLoginSession;",
        "performFacebookTokenRefresh",
        "refreshFacebook",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$UMFx2a5bS52IBudsFxCVQOuzjeg(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->refreshFacebook$lambda$1(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UR0WkHB6PTiPwrhCmoWKKYS-LDk(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->exchangeFacebookToken$lambda$2(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j63tSw21DX-Q9cj-XjGi3XbD0gw(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->refreshFacebook$lambda$0(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final exchangeFacebookToken(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/beetalk/sdk/AuthRequest;",
            "Lcom/beetalk/sdk/GGLoginSession;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 75
    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object p0

    .line 84
    new-instance p1, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;

    invoke-direct {p1, v0}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;-><init>(Lcom/facebook/bolts/TaskCompletionSource;)V

    check-cast p1, Lcom/facebook/bolts/Continuation;

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    .line 106
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final exchangeFacebookToken$lambda$2(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 7

    const-string v0, "$token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$authRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gop"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://auth/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 82
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeFacebookTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method private static final performFacebookTokenRefresh()Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "Lcom/facebook/AccessToken;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 29
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;

    invoke-direct {v2, v0}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;-><init>(Lcom/facebook/bolts/TaskCompletionSource;)V

    check-cast v2, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/AccessToken$Companion;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static final refreshFacebook(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/AuthRequest;",
            "Lcom/beetalk/sdk/GGLoginSession;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    const-string v0, "authRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->performFacebookTokenRefresh()Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda2;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final refreshFacebook$lambda$0(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 1

    const-string v0, "$authRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/facebook/AccessToken;

    invoke-static {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->exchangeFacebookToken(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final refreshFacebook$lambda$1(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken$Companion;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    :cond_0
    return-object p0
.end method
