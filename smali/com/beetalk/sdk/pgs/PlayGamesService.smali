.class public final Lcom/beetalk/sdk/pgs/PlayGamesService;
.super Ljava/lang/Object;
.source "PlayGamesService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHasSignedIn(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/beetalk/sdk/pgs/PgsController;->checkIsSignIn(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    .line 40
    invoke-static {p0, v0, v1, p1}, Lcom/beetalk/sdk/helper/TaskUtil;->awaitAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static recall(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/beetalk/sdk/pgs/PgsController;->recallToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    .line 34
    invoke-static {p0, v0, v1, p1}, Lcom/beetalk/sdk/helper/TaskUtil;->awaitAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static restoreToken(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 4

    .line 44
    new-instance v0, Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getLoginPlatform()I

    move-result v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPlatform()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 45
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getExpiryTime()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 47
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    .line 48
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPrimaryPlatform()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setPrimaryPlatform(Ljava/lang/Integer;)V

    .line 50
    new-instance p1, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 53
    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :cond_0
    return-void
.end method

.method public static save(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/beetalk/sdk/pgs/PgsController;->saveToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    .line 28
    invoke-static {p0, v0, v1, p1}, Lcom/beetalk/sdk/helper/TaskUtil;->awaitAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method
