.class public final Lcom/beetalk/sdk/account/ParentalController;
.super Ljava/lang/Object;
.source "ParentalController.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBindInfoOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/GetOTPResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method static synthetic lambda$getBindInfoOTP$0(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/GetOTPResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "The \"phoneNum\" param cannot be empty"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "The \"region\" param cannot be empty"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/beetalk/sdk/account/ParentalController;->obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/ParentalService;->requestBindInfoOTP(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/GetOTPResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$removeBoundPhoneNum$3(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    const-string v0, "The \"phoneNum\" cannot be empty"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "The \"otpCode\" cannot be empty"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/beetalk/sdk/account/ParentalController;->obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    .line 89
    invoke-static {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/ParentalService;->unBindPhoneNum(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$retrievePhoneNum$4()Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/beetalk/sdk/account/ParentalController;->obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/ParentalService;->retrieveBoundPhoneNumber(Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$updateParentPhoneNum$2(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-string v0, "The \"phoneNum\" cannot be empty"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "The \"otpCode\" cannot be empty"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/beetalk/sdk/account/ParentalController;->obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    .line 76
    invoke-static {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/ParentalService;->updatePhoneNum(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$verifyBindInfoOTP$1(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-string v0, "The \"phoneNum\" cannot be empty"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "The \"otpCode\" cannot be empty"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/beetalk/sdk/account/ParentalController;->obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    .line 63
    invoke-static {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/ParentalService;->verifyBindInfoOTP(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;

    move-result-object p0

    return-object p0
.end method

.method private static obtainLoginSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw v0
.end method

.method public static removeBoundPhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static retrievePhoneNum(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static updateParentPhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static verifyBindInfoOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/account/ParentalController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method
