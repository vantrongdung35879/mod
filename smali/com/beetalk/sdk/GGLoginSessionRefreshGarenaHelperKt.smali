.class public final Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;
.super Ljava/lang/Object;
.source "GGLoginSessionRefreshGarenaHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "grantGuestToken",
        "Lcom/facebook/bolts/Task;",
        "Lcom/beetalk/sdk/data/AuthToken;",
        "refreshGarenaOrGuestToken",
        "session",
        "Lcom/beetalk/sdk/GGLoginSession;",
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
.method public static synthetic $r8$lambda$osDsN5lrnHTZn56yVeb3ccIzvJk(Lcom/facebook/bolts/TaskCompletionSource;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->grantGuestToken$lambda$5(Lcom/facebook/bolts/TaskCompletionSource;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxdu9mPZrvvRS1bEReG3ebEItfY(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->refreshGarenaOrGuestToken$lambda$1(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    return-object p0
.end method

.method private static final grantGuestToken()Lcom/facebook/bolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v1

    .line 73
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v2, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v2}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 83
    sget-object v3, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-static {v0, v1, v3, v4, v5}, Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    .line 109
    invoke-virtual {v2}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 75
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 76
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 77
    const-string v3, "guest account refresh token is invalid and cannot find uid or password"

    .line 75
    invoke-direct {v1, v2, v3}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    .line 74
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static final grantGuestToken$lambda$5(Lcom/facebook/bolts/TaskCompletionSource;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "$taskCompletion"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 86
    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    .line 89
    invoke-direct {v1, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast v1, Ljava/lang/Exception;

    .line 88
    invoke-virtual {p0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 94
    :cond_1
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 97
    :cond_2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 100
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x4

    .line 98
    invoke-static {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->parseExchangeResponse(ILorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 102
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/beetalk/sdk/data/AuthToken;

    .line 103
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 104
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 105
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final refreshGarenaOrGuestToken(Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGLoginSession;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 18
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 19
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 20
    const-string/jumbo v2, "tokenValue is null"

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 17
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 26
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRefreshToken(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshExpiryTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->isRefreshExpiryTimeExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    :cond_2
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->grantGuestToken()Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 31
    :cond_3
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->isRefreshExpiryTimeExpired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 33
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 34
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    .line 35
    const-string v2, "refresh token has been expired"

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 32
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 40
    :cond_4
    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final refreshGarenaOrGuestToken$lambda$1(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 3

    const-string v0, "$session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tokenValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/networking/service/AuthService;->refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 49
    const-string v0, "error"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 p0, 0x2

    .line 51
    invoke-static {v0, v1, p0, v1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    .line 52
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    .line 53
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-ne p0, v1, :cond_1

    .line 54
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    .line 52
    :cond_1
    invoke-direct {p1, p0, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result p0

    .line 61
    invoke-static {p0, p1}, Lcom/beetalk/sdk/data/AuthToken;->parseExchangeResponse(ILorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    return-object p0

    .line 45
    :cond_3
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    .line 46
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    .line 45
    invoke-direct {p0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method
