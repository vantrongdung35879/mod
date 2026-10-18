.class public Lcom/beetalk/sdk/GGLoginSession;
.super Ljava/lang/Object;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGLoginSession$SessionProvider;,
        Lcom/beetalk/sdk/GGLoginSession$Builder;,
        Lcom/beetalk/sdk/GGLoginSession$SessionCallback;,
        Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;,
        Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;
    }
.end annotation


# static fields
.field private static volatile mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

.field private static volatile mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

.field private static volatile mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

.field private static volatile mSwapSessionInstance:Lcom/beetalk/sdk/GGLoginSession;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private cache:Lcom/beetalk/sdk/cache/StorageCache;

.field private volatile errorCode:I

.field public forceInspectToken:Z

.field private final handler:Landroid/os/Handler;

.field public inspectIntervalInSeconds:I

.field private final lock:Ljava/lang/Object;

.field private final mode:Lcom/beetalk/sdk/AuthMode;

.field private final requestCode:I

.field private final sessionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/GGLoginSession$SessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field private volatile sessionStatus:Lcom/beetalk/sdk/SessionStatus;

.field private tokenValue:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/beetalk/sdk/GGLoginSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionCallbacks(Lcom/beetalk/sdk/GGLoginSession;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtokenValue(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    return-void
.end method

.method static bridge synthetic -$$Nest$smrunThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->lock:Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/beetalk/sdk/GGLoginSession;->forceInspectToken:Z

    const/16 v0, 0xe10

    .line 98
    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->inspectIntervalInSeconds:I

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p7, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p7, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {p7, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p7, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    .line 109
    invoke-virtual {p7}, Lcom/beetalk/sdk/cache/StorageCache;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result p7

    invoke-virtual {p6}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v0

    if-ne p7, v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->hasAllFields()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 115
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    .line 118
    :cond_2
    const-string p1, "applicationId"

    invoke-static {p2, p1}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->mode:Lcom/beetalk/sdk/AuthMode;

    .line 123
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    .line 125
    iput p5, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    .line 126
    iput-object p6, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 127
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    :goto_1
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;Lcom/beetalk/sdk/GGLoginSession-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/beetalk/sdk/GGLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;)V

    return-void
.end method

.method private addCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 656
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkIfLoginWorks(Lcom/beetalk/sdk/AuthRequest;)Z
    .locals 2

    .line 868
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->getLoginActivityIntent(Lcom/beetalk/sdk/AuthRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 869
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->validIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getRequestCode()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static checkSessionValidity()Z
    .locals 1

    .line 511
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v0

    return v0
.end method

.method public static checkSessionValidity(Lcom/beetalk/sdk/GGLoginSession;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static declared-synchronized clearAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 496
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_0

    .line 497
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    const/4 v1, 0x0

    .line 498
    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 501
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearSession()Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    const/4 v1, 0x0

    .line 434
    :try_start_0
    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 3

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 402
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 403
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->logout()V

    .line 404
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 405
    sput-object v2, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 408
    :cond_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 410
    sput-object v2, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 413
    :cond_1
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_2

    .line 414
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 415
    sput-object v2, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 418
    :cond_2
    new-instance v1, Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {v1}, Lcom/beetalk/sdk/cache/RedeemCache;-><init>()V

    .line 419
    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearMsdkTokenSession()V

    .line 420
    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    .line 422
    invoke-static {}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getInstance()Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    .line 424
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 3

    .line 438
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-static {v0}, Lcom/beetalk/sdk/facebook/FBClient;->clearSession(Landroid/content/Context;)V

    .line 445
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    .line 446
    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKUtils;->logout(Landroid/content/Context;)V

    .line 447
    invoke-static {v0}, Lcom/beetalk/sdk/line/LineUtils;->logout(Landroid/content/Context;)V

    .line 448
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v1}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->reset()V

    .line 451
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 456
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    invoke-static {v0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->getGoogleSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 460
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start to sign out Google account."

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GGLoginSession$1;-><init>(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    goto :goto_0

    .line 477
    :cond_1
    invoke-static {v1}, Lcom/garena/pay/android/helper/GMSHelper;->printGMSAvailabilityResult(Lcom/garena/android/model/Result;)V

    if-eqz p0, :cond_2

    .line 479
    invoke-interface {p0}, Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;->onComplete()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized clearSwapSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    const/4 v1, 0x0

    .line 505
    :try_start_0
    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mSwapSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 506
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForSwap()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->clearSession()V

    .line 507
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearThirdPartySession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 487
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_0

    .line 488
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    const/4 v1, 0x0

    .line 489
    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 492
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setApplicationId(Ljava/lang/String;)V

    .line 847
    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setRequestCode(I)V

    .line 848
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setApplicationKey(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->checkIfLoginWorks(Lcom/beetalk/sdk/AuthRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 857
    :try_start_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    iget-object v1, v1, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 858
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v3, v2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 859
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    iget-object p1, p1, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    new-instance v3, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v4, "Failed to Validate the authenticity of the internal package.Did you forget to include the BTLoginActivity in your AndroidManifest.xml"

    invoke-direct {v3, v4}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1, p1, v3}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    .line 863
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static forceOpenSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 7

    .line 373
    new-instance v6, Lcom/beetalk/sdk/AuthRequest;

    const v3, 0xdb9d

    const-string v4, ""

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v6, p0}, Lcom/beetalk/sdk/AuthRequest;->setSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 375
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "[forceOpenSession] Callback Array Size"

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/helper/Validate;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 378
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0, v6}, Lcom/beetalk/sdk/GGLoginSession;->commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V

    .line 379
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    return-object p0
.end method

.method public static declared-synchronized getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getCurrentSwapSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mSwapSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getLoginActivityIntent(Lcom/beetalk/sdk/AuthRequest;)Landroid/content/Intent;
    .locals 3

    .line 904
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 905
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/beetalk/sdk/BTLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 907
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 909
    const-string v2, "request_extra"

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getAuthClientRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 910
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private inspectToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)V
    .locals 1

    .line 607
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->inspectToken(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/facebook/bolts/Task;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$2;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$2;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-virtual {p2, v0}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method private static isRestrictedPlatform(Lcom/beetalk/sdk/GGLoginSession;)Z
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p0

    .line 337
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->HUAWEI:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->APPLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSessionValid(Lcom/beetalk/sdk/GGLoginSession;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$obtainActiveSwapSession$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 0

    .line 262
    invoke-interface {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 265
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/SessionStatus;->isError()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 266
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$obtainActiveSwapSession$1(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 269
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static obtainActiveAppPlatformBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 8

    .line 283
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 286
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 287
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 289
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 291
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "session is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 295
    :cond_1
    new-instance v1, Lcom/beetalk/sdk/AuthRequest;

    const-string v6, ""

    const-string v7, "app_platform_bind"

    const v5, 0xdbed

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForPlatformBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    .line 297
    invoke-static {p1, v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static obtainActiveBindSession(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 7

    .line 222
    new-instance v6, Lcom/beetalk/sdk/AuthRequest;

    const v3, 0xdbec

    const-string v4, ""

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    .line 226
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 227
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 229
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 231
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "session is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForGuestBind()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    .line 236
    invoke-static {p2, v6, p0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static obtainActiveSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 8

    .line 192
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 195
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 196
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 198
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 200
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "session is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getLoginScenario()Ljava/lang/String;

    move-result-object v7

    .line 206
    new-instance v1, Lcom/beetalk/sdk/AuthRequest;

    const v5, 0xdb9d

    const-string v6, ""

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p1, v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method private static obtainActiveSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 2

    .line 305
    invoke-static {p2}, Lcom/beetalk/sdk/GGLoginSession;->isRestrictedPlatform(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 307
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 308
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Huawei Login & Apple Login is not supported"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-static {p2}, Lcom/beetalk/sdk/GGLoginSession;->isSessionValid(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    iget-object v1, p2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v1}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 325
    :cond_2
    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->inspectToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)V

    goto :goto_0

    .line 316
    :cond_3
    new-instance p1, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v0, "Session is awaiting fulfillment. Please destroy before requesting for a new Session"

    invoke-direct {p1, v0}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-interface {p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    .line 330
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession;->performLogin(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    :goto_0
    return-void
.end method

.method public static obtainActiveSwapSession(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 8

    .line 244
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSwapSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 247
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 248
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 250
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 252
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "session is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForSwap()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    .line 258
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 259
    new-instance v1, Lcom/beetalk/sdk/AuthRequest;

    const v5, 0xdbee

    const-string v6, ""

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    .line 269
    new-instance p1, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1, v0}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    return-void
.end method

.method private static performLogin(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 3

    .line 347
    iget-object v0, p2, Lcom/beetalk/sdk/GGLoginSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    if-ne v1, v2, :cond_0

    .line 349
    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    iput-object v1, p2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    :cond_0
    if-eqz p0, :cond_1

    .line 352
    iget-object v1, p2, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_1
    sget-object p0, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v1, v2}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object p0, p2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-ne p0, v0, :cond_2

    .line 358
    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/AuthRequest;->setSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 359
    invoke-direct {p2, p1}, Lcom/beetalk/sdk/GGLoginSession;->commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 355
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    monitor-enter v0

    if-ne p1, p2, :cond_0

    .line 878
    :try_start_0
    monitor-exit v0

    return-void

    .line 879
    :cond_0
    new-instance p1, Lcom/beetalk/sdk/GGLoginSession$10;

    invoke-direct {p1, p0, p3}, Lcom/beetalk/sdk/GGLoginSession$10;-><init>(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 893
    iget-object p2, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    invoke-static {p2, p1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 894
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 771
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 775
    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    .line 778
    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 780
    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 783
    :try_start_0
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setAuthToken(Ljava/lang/String;)V

    .line 784
    const-string v2, "refresh_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 785
    const-string v2, "expiry_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 786
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/data/AuthToken;->updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    .line 789
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 790
    const-string p1, "refresh token successful"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 793
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 795
    :cond_2
    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 798
    const-string v0, "refresh error %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    const-string v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    .line 802
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    .line 803
    :cond_3
    const-string v0, "error_user_ban"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    .line 805
    :cond_4
    const-string/jumbo v0, "ssl_failure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 806
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    .line 808
    :cond_5
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 811
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 814
    :cond_6
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    .line 772
    :cond_7
    :goto_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1
.end method

.method public static removeInvalidToken()V
    .locals 1

    .line 818
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-nez v0, :cond_0

    return-void

    .line 821
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    return-void
.end method

.method public static requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 1

    .line 1195
    invoke-virtual {p0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result p0

    const v0, 0xdbed

    if-eq p0, v0, :cond_1

    const v0, 0xdbee

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 1

    const v0, 0xdbed

    if-ne p0, v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0xdbec

    if-ne p0, v0, :cond_1

    .line 1186
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0xdbee

    if-ne p0, v0, :cond_2

    .line 1188
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSwapSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private static runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setCallback(Landroid/content/Context;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    .line 647
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    .line 651
    :cond_0
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->addCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static declared-synchronized setCurrentAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 174
    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 160
    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 152
    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setCurrentSwapSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    .line 178
    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mSwapSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private validIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 898
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 899
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()Lcom/beetalk/sdk/cache/StorageCache;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return v0
.end method

.method public getLoginScenario()Ljava/lang/String;
    .locals 2

    .line 1201
    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    const v1, 0xdbee

    if-ne v0, v1, :cond_0

    .line 1202
    const-string v0, "account_swap"

    return-object v0

    .line 1204
    :cond_0
    const-string v0, "normal"

    return-object v0
.end method

.method public getMode()Lcom/beetalk/sdk/AuthMode;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->mode:Lcom/beetalk/sdk/AuthMode;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPlatform()Ljava/lang/Integer;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    return v0
.end method

.method public getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object v0
.end method

.method public getSessionStatus()Lcom/beetalk/sdk/SessionStatus;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-object v0
.end method

.method public getTokenValue()Lcom/beetalk/sdk/data/AuthToken;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    return-object v0
.end method

.method inspectGuestToken(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public invalidateCache()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/StorageCache;->clearSession()V

    :cond_0
    return-void
.end method

.method synthetic lambda$inspectGuestToken$3$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result v0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x2a300

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    .line 676
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 678
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne v0, v1, :cond_1

    .line 679
    const-string v1, "refresh guest token ok - no need for inspection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/beetalk/sdk/GGLoginSession$3;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/beetalk/sdk/GGLoginSession$3;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    invoke-static {v1, v3}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v2

    .line 690
    :cond_0
    div-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "%d hours until the token expires"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$4;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v2

    .line 706
    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 709
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    const-string v1, "inspection guest token error %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    const-string v1, "invalid_grant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/beetalk/sdk/GGLoginSession$5;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/beetalk/sdk/GGLoginSession$5;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    invoke-static {v1, v3}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 723
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 724
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$6;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 731
    :cond_3
    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 735
    :try_start_1
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 737
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/beetalk/sdk/GGLoginSession$7;

    invoke-direct {v6, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$7;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v5, v6}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 744
    :cond_4
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/beetalk/sdk/GGLoginSession$8;

    invoke-direct {v6, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$8;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v5, v6}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 751
    :goto_0
    const-string/jumbo v5, "verify the open id %s %s"

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 753
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 755
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$9;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-object v2
.end method

.method synthetic lambda$logout$2$com-beetalk-sdk-GGLoginSession()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 529
    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->logoutSync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public logout()V
    .locals 1

    .line 524
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 525
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    .line 919
    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    const-string p1, "onActivityResult"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    iget p1, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p4, :cond_6

    const/4 p2, -0x1

    if-ne p3, p2, :cond_6

    .line 926
    const-class p2, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter p2

    .line 927
    :try_start_0
    const-string p3, "onActivityResult: success"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    iget-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 929
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-nez p4, :cond_1

    .line 931
    monitor-exit p2

    return-void

    .line 933
    :cond_1
    const-string v0, "auth_result"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lcom/beetalk/sdk/AuthClient$Result;

    if-eqz p4, :cond_5

    .line 934
    iget-object v0, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-nez v0, :cond_2

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    if-nez v0, :cond_3

    .line 941
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object p4, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 943
    invoke-virtual {p4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 941
    invoke-virtual {p0, p1, p4}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 945
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    new-instance p4, Ljava/lang/Exception;

    const-string v0, "Unsupported platform"

    invoke-direct {p4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p4}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    .line 946
    monitor-exit p2

    return-void

    .line 948
    :cond_3
    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 950
    iget-object v0, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    .line 951
    iget-object p4, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p4}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    .line 954
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 955
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p4, v0, :cond_4

    .line 956
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 959
    :cond_4
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    .line 961
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 959
    invoke-virtual {p0, p4, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 963
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p0, p3, p4, p1}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    .line 964
    monitor-exit p2

    goto/16 :goto_4

    .line 935
    :cond_5
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 964
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    if-nez p3, :cond_a

    .line 966
    const-class p2, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter p2

    .line 967
    :try_start_1
    iget-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 973
    :try_start_2
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    .line 974
    const-string v0, "auth_result"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lcom/beetalk/sdk/AuthClient$Result;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p4

    .line 976
    :try_start_3
    invoke-static {p4}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    move-object p4, p1

    :goto_1
    if-eqz p4, :cond_7

    .line 979
    iget v0, p4, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget v1, Lcom/beetalk/sdk/AuthClient$Result;->NO_ERROR:I

    if-ne v0, v1, :cond_7

    .line 980
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    .line 982
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 980
    invoke-virtual {p0, p4, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    goto :goto_3

    :cond_7
    if-nez p4, :cond_8

    .line 985
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_8
    iget p1, p4, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    .line 986
    :goto_2
    sget-object p4, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p1, p4, :cond_9

    .line 987
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    .line 989
    :cond_9
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p0, p4, p1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 993
    new-instance p4, Lcom/garena/pay/android/exception/GGException;

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    move-object p1, p4

    .line 995
    :goto_3
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p0, p3, p4, p1}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    .line 996
    monitor-exit p2

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_a
    :goto_4
    return-void
.end method

.method removeToken()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    .line 826
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setAuthToken(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 828
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    .line 829
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 830
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    if-eqz v0, :cond_1

    .line 833
    const-string v1, "com.garena.msdk.token"

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_1

    .line 835
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/StorageCache;->removeGuestToken()V

    :cond_1
    return-void
.end method

.method public setApplicationKey(Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    return-void
.end method

.method public setCache(Lcom/beetalk/sdk/cache/StorageCache;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-void
.end method

.method public declared-synchronized setErrorCode(I)V
    .locals 0

    monitor-enter p0

    .line 586
    :try_start_0
    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSessionStatus(Lcom/beetalk/sdk/SessionStatus;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method

.method public declared-synchronized setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;
    .locals 0

    monitor-enter p0

    .line 590
    :try_start_0
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    .line 591
    iput p2, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
