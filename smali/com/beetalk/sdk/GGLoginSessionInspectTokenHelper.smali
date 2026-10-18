.class public final Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;
.super Ljava/lang/Object;
.source "GGLoginSessionInspectTokenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGGLoginSessionInspectTokenHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GGLoginSessionInspectTokenHelper.kt\ncom/beetalk/sdk/GGLoginSessionInspectTokenHelper\n+ 2 TimeExts.kt\ncom/beetalk/sdk/exts/TimeExtsKt\n*L\n1#1,205:1\n42#2:206\n*S KotlinDebug\n*F\n+ 1 GGLoginSessionInspectTokenHelper.kt\ncom/beetalk/sdk/GGLoginSessionInspectTokenHelper\n*L\n33#1:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\u001a\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0002\u001a\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0002H\u0002\u001a\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0002\u001a\u001e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a\u0018\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0002H\u0002\u001a,\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a\u0014\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0002\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "hasExpired",
        "",
        "Lcom/beetalk/sdk/data/AuthToken;",
        "getHasExpired",
        "(Lcom/beetalk/sdk/data/AuthToken;)Z",
        "handleInspectTokenResult",
        "Lcom/facebook/bolts/Task;",
        "json",
        "Lorg/json/JSONObject;",
        "tokenValue",
        "inspectToken",
        "session",
        "Lcom/beetalk/sdk/GGLoginSession;",
        "authRequest",
        "Lcom/beetalk/sdk/AuthRequest;",
        "migrateGuestUserData",
        "",
        "performInspectToken",
        "refreshToken",
        "secondRoundRefreshToken",
        "stillInInspectionInterval",
        "trySecondRoundRefresh",
        "it",
        "expiresIn",
        "thresholdTimeInSeconds",
        "",
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
.method public static synthetic $r8$lambda$e9dWP-L704lrqiM-YICCaoqanTA(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->secondRoundRefreshToken$lambda$3(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mBkUtCmc7e5_NWg24izvmhdW_jU(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->inspectToken$lambda$1(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mi-P_dO3sAtZF8u5c35nH_lgQcE(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->inspectToken$lambda$2(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$thr8UQoOVs08aToNsBChRNvMN7I(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->performInspectToken$lambda$4(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vEMN-gNyrI0u9xD9nEOwN_xeSF4(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->performInspectToken$lambda$5(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wSOzNi7F0feN_RucTHslYurDnso(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->inspectToken$lambda$0(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final expiresIn(Lcom/beetalk/sdk/data/AuthToken;J)Z
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result p0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v0

    sub-int/2addr p0, v0

    const/4 v0, 0x1

    if-gez p0, :cond_0

    return v0

    :cond_0
    int-to-long v1, p0

    cmp-long p0, v1, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final getHasExpired(Lcom/beetalk/sdk/data/AuthToken;)Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result p0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final handleInspectTokenResult(Lorg/json/JSONObject;Lcom/beetalk/sdk/data/AuthToken;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    .line 155
    const-string v0, "error"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 158
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 159
    invoke-static {v0, v2, v1, v2}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    .line 158
    invoke-direct {p1, v1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    .line 157
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_0
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 167
    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/data/AuthToken;->cloneFrom(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    .line 164
    invoke-virtual {v0, p0}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final inspectToken(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/facebook/bolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGLoginSession;",
            "Lcom/beetalk/sdk/AuthRequest;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 24
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    const-string/jumbo v1, "tokenValue is null"

    invoke-direct {p1, v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    .line 23
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->migrateGuestUserData(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 29
    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->stillInInspectionInterval(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->expiresIn(Lcom/beetalk/sdk/data/AuthToken;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-static {p1, p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->refreshToken(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_2
    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v1}, Lcom/facebook/bolts/Task$Companion;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object v1

    .line 39
    :goto_0
    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p1

    .line 52
    new-instance v1, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda4;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-virtual {p1, v1}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final inspectToken$lambda$0(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/beetalk/sdk/exts/BoltsExtKt;->isSucceeded(Lcom/facebook/bolts/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->performInspectToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/facebook/bolts/Task;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final inspectToken$lambda$1(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 1

    const-string v0, "$authRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->trySecondRoundRefresh(Lcom/facebook/bolts/Task;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static final inspectToken$lambda$2(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 2

    const-string v0, "$session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Lcom/beetalk/sdk/exts/BoltsExtKt;->isSucceeded(Lcom/facebook/bolts/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/beetalk/sdk/data/AuthToken;

    .line 55
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->getHasExpired(Lcom/beetalk/sdk/data/AuthToken;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    goto :goto_0

    .line 61
    :cond_1
    instance-of p1, v0, Lcom/garena/pay/android/exception/GGException;

    if-eqz p1, :cond_3

    .line 62
    check-cast v0, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {v0}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    if-eq p1, v1, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    if-ne p1, v0, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    :cond_3
    :goto_0
    return-object p2
.end method

.method private static final migrateGuestUserData(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 191
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object p0

    .line 192
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 194
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v0

    .line 196
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    :try_start_0
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static final performInspectToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 125
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 126
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 127
    const-string v2, "access token is empty"

    .line 125
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 124
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final performInspectToken$lambda$4(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/AuthService;->inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static final performInspectToken$lambda$5(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 2

    const-string v0, "$tokenValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 136
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 137
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 136
    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 135
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p0}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->handleInspectTokenResult(Lorg/json/JSONObject;Lcom/beetalk/sdk/data/AuthToken;)Lcom/facebook/bolts/Task;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static final refreshToken(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 5
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

    .line 90
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, p0

    .line 93
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 98
    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->refreshGarenaOrGuestToken(Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 100
    :cond_1
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {p0}, Lcom/facebook/bolts/Task$Companion;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 92
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->refreshFacebook(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final secondRoundRefreshToken(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 0
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

    .line 107
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->refreshToken(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final secondRoundRefreshToken$lambda$3(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Lcom/beetalk/sdk/exts/BoltsExtKt;->isSucceeded(Lcom/facebook/bolts/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 113
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 114
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    .line 113
    invoke-direct {v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast v0, Ljava/lang/Exception;

    .line 112
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final stillInInspectionInterval(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/beetalk/sdk/GGLoginSession;->forceInspectToken:Z

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v0

    iget p0, p0, Lcom/beetalk/sdk/GGLoginSession;->inspectIntervalInSeconds:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getLastInspectTime()I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final trySecondRoundRefresh(Lcom/facebook/bolts/Task;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;",
            "Lcom/beetalk/sdk/AuthRequest;",
            "Lcom/beetalk/sdk/GGLoginSession;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lcom/garena/pay/android/exception/GGException;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {v0}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {p1, p2}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->secondRoundRefreshToken(Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object p0

    :cond_0
    return-object p0
.end method
