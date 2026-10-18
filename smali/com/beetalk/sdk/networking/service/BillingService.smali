.class public Lcom/beetalk/sdk/networking/service/BillingService;
.super Ljava/lang/Object;
.source "BillingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPaymentEligibility(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Lcom/garena/pay/android/Product;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/Integer;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/data/AuthToken;",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/Product;",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/lang/Integer;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/PaymentEligibility;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v6, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/Integer;Lcom/garena/pay/android/Product;Lcom/garena/pay/android/GGPayRequest;)V

    invoke-static {v6}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static commitGooglePayment(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/billingclient/api/Purchase;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p1, p2, p3, p4}, Lcom/beetalk/sdk/networking/model/CommitReq;->toParams(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 65
    new-instance p1, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda8;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda9;-><init>()V

    sget-object p2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 68
    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getEventPricing(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventPricingResp;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda11;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 177
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getLessIsMoreEvents(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda17;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda18;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 191
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentAppItems(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/AppItemsResp;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda2;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 107
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentChannels(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda12;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 135
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentRebates(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RebatesResp;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda19;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda20;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 121
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getProductItems(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getApiVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-static {p1, p2}, Lcom/beetalk/sdk/networking/service/BillingService;->getProductItemsV1(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;-><init>(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 222
    invoke-virtual {p2, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getProductItemsV1(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda13;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda14;-><init>(Lcom/garena/pay/android/GGPayRequest;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 205
    invoke-virtual {p1, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getSignatureKey()Ljava/lang/String;
    .locals 1

    .line 299
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkPaymentEligibility$2(Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;Ljava/lang/Integer;Lcom/garena/pay/android/Product;Lcom/garena/pay/android/GGPayRequest;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getMainPlatform()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 84
    invoke-static/range {v0 .. v6}, Lcom/garena/pay/android/data/PaymentEligibilityReqParams;->buildParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Lcom/garena/pay/android/Product;Lcom/garena/pay/android/GGPayRequest;)Ljava/util/Map;

    move-result-object p0

    .line 94
    new-instance p1, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object p2, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {p1, p2, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 95
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 96
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGooglePayEligibilityUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0, p3}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->parse(Ljava/lang/String;Lcom/garena/pay/android/Product;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$commitGooglePayment$0(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 66
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 67
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGoogleCommitPayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$commitGooglePayment$1(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/CommitResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/CommitResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommitResp;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getEventPricing$13(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 175
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEventPricing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getEventPricing$14(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/EventPricingResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 183
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/EventPricingResp;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getLessIsMoreEvents$15(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 189
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 190
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEventConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLessIsMoreEvents$16(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 197
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getPaymentAppItems$3(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 105
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 106
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPaymentItems()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getPaymentAppItems$4(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/AppItemsResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/AppItemsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/AppItemsResp;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getPaymentChannels$7(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 133
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 134
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getChannelsGetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getPaymentChannels$8(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 141
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getPaymentRebates$5(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 119
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 120
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRebateOptionsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getPaymentRebates$6(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/RebatesResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/RebatesResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RebatesResp;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getProductItems$19(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 220
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 221
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getChannelsGetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getProductItems$20(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 227
    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 229
    invoke-static {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p2

    .line 230
    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-object p2

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getRebateId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 236
    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterNormalPaymentChannelList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p2

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_c

    .line 239
    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 246
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    .line 248
    invoke-virtual {v6}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 249
    invoke-virtual {v7}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-eqz v10, :cond_4

    .line 250
    invoke-virtual {v7}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p2

    .line 261
    :cond_6
    new-instance v2, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    invoke-direct {v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;-><init>()V

    .line 262
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 263
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setOpenId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 264
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 265
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 266
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment;->getAppServerId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 267
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment;->getRoleId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 268
    invoke-virtual {v3, v4}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRebateIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v3

    .line 269
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/garena/pay/android/data/GGPayment;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    .line 270
    new-instance p0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v3, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->Build()Lcom/garena/pay/android/data/GGRebateOptionsRequest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/garena/pay/android/data/GGRebateOptionsRequest;->getParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 271
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 272
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRebateOptionsUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/RebatesResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RebatesResp;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getRebates()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_7

    return-object v1

    .line 280
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    .line 281
    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 282
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/garena/pay/android/ndk/RebateOptionItem;

    .line 283
    iget-wide v5, v4, Lcom/garena/pay/android/ndk/RebateOptionItem;->rebateId:J

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_a

    .line 284
    iget-object v4, v4, Lcom/garena/pay/android/ndk/RebateOptionItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_b
    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p2

    .line 292
    :cond_c
    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p2

    .line 224
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$getProductItemsV1$17(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 203
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 204
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getChannelsGetUrlV1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getProductItemsV1$18(Lcom/garena/pay/android/GGPayRequest;Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/garena/pay/android/data/GGPayment;->getRebateId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->parseV1(Ljava/lang/String;J)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$payEventCancel$10(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/EventCancelResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/EventCancelResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/EventCancelResp;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$payEventCancel$9(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 147
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 148
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPayEventCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$payEventInit$11(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 161
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    .line 162
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPayEventInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$payEventInit$12(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/EventInitResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 169
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/EventInitResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/EventInitResp;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static payEventCancel(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventCancelResp;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda15;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda16;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 149
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static payEventInit(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventInitResp;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda5;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 163
    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static redeemRebateCard(Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 59
    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRedeemURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeParallel(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-void
.end method
