.class public Lcom/garena/pay/android/GGAndroidPaymentPlatform;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;,
        Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGDenominationResponseCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static volatile INSTANCE:Lcom/garena/pay/android/GGAndroidPaymentPlatform; = null

.field private static final KEY_EVENT_CONFIG_VERSION:Ljava/lang/String; = "KEY_EVENT_CONFIG_VERSION"

.field public static final KEY_EVENT_TXN_ID:Ljava/lang/String; = "KEY_EVENT_TXN_ID"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final payResponseCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/GGPayResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPayment:Lcom/garena/pay/android/data/GGPayment;


# direct methods
.method static bridge synthetic -$$Nest$fgetpayResponseCallbacks(Lcom/garena/pay/android/GGAndroidPaymentPlatform;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->payResponseCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlocalizeChannelDenominations(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->localizeChannelDenominations(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlocalizeChannelEventDenominations(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->localizeChannelEventDenominations(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->payResponseCallbacks:Ljava/util/List;

    return-void
.end method

.method public static GGGetEventsPricing(Landroid/content/Context;Lcom/garena/pay/android/data/GGPayment;Ljava/lang/String;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V
    .locals 1

    .line 537
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 538
    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 539
    invoke-static {p0, v0, p2}, Lcom/beetalk/sdk/networking/model/EventPriceReq;->toParams(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 541
    invoke-static {p2}, Lcom/beetalk/sdk/networking/service/BillingService;->getEventPricing(Ljava/util/Map;)Lbolts/Task;

    move-result-object p2

    new-instance v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;

    invoke-direct {v0, p3, p1, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;Lcom/garena/pay/android/data/GGPayment;Landroid/content/Context;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private static GGGetRebateIdList(Landroid/content/Context;Lcom/garena/pay/android/data/GGRebateOptionsRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;)V
    .locals 0

    .line 785
    invoke-virtual {p1, p0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest;->getParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/BillingService;->getPaymentRebates(Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$8;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$8;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;)V

    sget-object p2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static GGGetRebateIdList(Landroid/content/Context;Ljava/util/Locale;IILcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 765
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    invoke-direct {v0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;-><init>()V

    .line 767
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 768
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setOpenId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 769
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 770
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 771
    invoke-virtual {v1, p2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object p2

    .line 772
    invoke-virtual {p2, p3}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object p2

    .line 773
    invoke-virtual {p2, p1}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    .line 774
    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->Build()Lcom/garena/pay/android/data/GGRebateOptionsRequest;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetRebateIdList(Landroid/content/Context;Lcom/garena/pay/android/data/GGRebateOptionsRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;)V

    goto :goto_0

    .line 776
    :cond_0
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateIdListCallback;->onGetRebateIdList(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public static GGGetRebateOptions(Landroid/content/Context;IILcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 871
    invoke-static {p0, p1, p2, v0, p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetRebateOptions(Landroid/content/Context;IILjava/util/Locale;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V

    return-void
.end method

.method public static GGGetRebateOptions(Landroid/content/Context;IILjava/util/Locale;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 838
    invoke-static/range {v0 .. v5}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetRebateOptions(Landroid/content/Context;IILjava/util/Locale;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V

    return-void
.end method

.method public static GGGetRebateOptions(Landroid/content/Context;IILjava/util/Locale;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Locale;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;",
            ")V"
        }
    .end annotation

    .line 849
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    new-instance v0, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    invoke-direct {v0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;-><init>()V

    .line 851
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 852
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setOpenId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 853
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 854
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v1

    .line 855
    invoke-virtual {v1, p1}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object p1

    .line 856
    invoke-virtual {p1, p2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object p1

    .line 857
    invoke-virtual {p1, p4}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRebateIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object p1

    .line 858
    invoke-virtual {p1, p3}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    .line 859
    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->Build()Lcom/garena/pay/android/data/GGRebateOptionsRequest;

    move-result-object p1

    invoke-static {p0, p1, p5}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetRebateOptions(Landroid/content/Context;Lcom/garena/pay/android/data/GGRebateOptionsRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V

    goto :goto_0

    .line 861
    :cond_0
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method private static GGGetRebateOptions(Landroid/content/Context;Lcom/garena/pay/android/data/GGRebateOptionsRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
    .locals 0

    .line 880
    invoke-virtual {p1, p0}, Lcom/garena/pay/android/data/GGRebateOptionsRequest;->getParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 879
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/BillingService;->getPaymentRebates(Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V

    sget-object p2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 881
    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static GGGetSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1242
    const-string v0, "4.0.39"

    return-object v0
.end method

.method public static GGLoadEventConfigs(Landroid/content/Context;Ljava/lang/String;ZLcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;)V
    .locals 3

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 456
    const-string v1, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "region"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {p0}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object p1

    const-string v1, "KEY_EVENT_CONFIG_VERSION"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/BillingService;->getLessIsMoreEvents(Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;

    invoke-direct {v1, p3, p1, p0, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method public static GGPayEventsInit(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Ljava/lang/String;Lcom/garena/pay/android/data/GGPayment$Denomination;ILcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;Lcom/garena/pay/android/GGPayResponseCallback;)V
    .locals 8

    .line 681
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 682
    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 684
    invoke-virtual {p3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getEventId()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {v0, v1, v2, p2}, Lcom/beetalk/sdk/networking/model/EventInitReq;->toParams(Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 686
    invoke-static {p2}, Lcom/beetalk/sdk/networking/service/BillingService;->payEventInit(Ljava/util/Map;)Lbolts/Task;

    move-result-object p2

    new-instance v7, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;

    move-object v0, v7

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p6

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;I)V

    invoke-virtual {p2, v7}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method public static GGRedeem(Landroid/content/Context;Lcom/garena/pay/android/data/GGRedeemRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;)V
    .locals 6

    .line 922
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 923
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    return-void

    .line 926
    :cond_0
    new-instance p0, Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/RedeemCache;-><init>()V

    .line 927
    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGRedeemRequest;->getRebateCardId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/RedeemCache;->isOkForRedeem()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 967
    :cond_1
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->REDEEM_LIMIT_REACHED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_1

    .line 929
    :cond_2
    :goto_0
    new-instance v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;

    invoke-direct {v0, p2, v1, v2, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;JLcom/beetalk/sdk/cache/RedeemCache;)V

    .line 965
    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGRedeemRequest;->getParams()Ljava/util/Map;

    move-result-object p0

    .line 929
    invoke-static {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService;->redeemRebateCard(Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public static GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V
    .locals 0

    .line 1238
    invoke-static {p0}, Lcom/beetalk/sdk/SDKConstants;->setSandboxMode(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    return-void
.end method

.method private addPayResponseCallback(Lcom/garena/pay/android/GGPayResponseCallback;)V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->payResponseCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static commencePaymentFlow(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;)V
    .locals 4

    .line 1068
    invoke-static {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->startPayActivity(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1071
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p0

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    const-string v1, "Failed to validate presence of the payment Activity"

    .line 1072
    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/data/Result;->createErrorResult(Lcom/garena/pay/android/GGPayRequest;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    .line 1071
    invoke-direct {p0, p1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p0

    .line 1080
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    const-string v3, "Failed to validate presence of the payment Activity. Did you forget to include it in the Manifest?"

    invoke-direct {v1, v2, v3}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    :cond_0
    return-void
.end method

.method private createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;
    .locals 13

    if-nez p1, :cond_0

    .line 1179
    new-instance p1, Lcom/garena/pay/android/data/TransactionInfo;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_BUNDLE_RESULT_INVALID:Lcom/garena/pay/android/GGErrorCode;

    .line 1182
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/beetalk/sdk/data/Result$ResultCode;->ERROR:Lcom/beetalk/sdk/data/Result$ResultCode;

    iget-object v5, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->pendingPayment:Lcom/garena/pay/android/data/GGPayment;

    const-string v1, "Cannot Get Result"

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/garena/pay/android/data/TransactionInfo;-><init>(Ljava/lang/String;Lcom/garena/pay/android/data/TransactionStatus;ILcom/beetalk/sdk/data/Result$ResultCode;Lcom/garena/pay/android/data/GGPayment;)V

    return-object p1

    .line 1187
    :cond_0
    sget-object v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$13;->$SwitchMap$com$beetalk$sdk$data$Result$ResultCode:[I

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/data/Result$ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1221
    :cond_1
    new-instance v6, Lcom/garena/pay/android/data/TransactionInfo;

    .line 1224
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1225
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;

    move-result-object v4

    iget-object v5, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->pendingPayment:Lcom/garena/pay/android/data/GGPayment;

    const-string v1, "Cancelled"

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/garena/pay/android/data/TransactionInfo;-><init>(Ljava/lang/String;Lcom/garena/pay/android/data/TransactionStatus;ILcom/beetalk/sdk/data/Result$ResultCode;Lcom/garena/pay/android/data/GGPayment;)V

    move-object p1, v6

    goto/16 :goto_0

    .line 1189
    :cond_2
    new-instance v0, Lcom/garena/pay/android/data/TransactionInfo;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_NO_ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 1192
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1193
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;

    move-result-object v11

    iget-object v12, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->pendingPayment:Lcom/garena/pay/android/data/GGPayment;

    const-string v8, ""

    move-object v7, v0

    move-object v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/garena/pay/android/data/TransactionInfo;-><init>(Ljava/lang/String;Lcom/garena/pay/android/data/TransactionStatus;ILcom/beetalk/sdk/data/Result$ResultCode;Lcom/garena/pay/android/data/GGPayment;)V

    .line 1196
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1198
    const-string/jumbo p2, "txn_id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setTransactionId(Ljava/lang/String;)V

    .line 1199
    const-string p2, "item_icon"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setIcon(Ljava/lang/String;)V

    .line 1200
    const-string p2, "item_name"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setName(Ljava/lang/String;)V

    .line 1201
    const-string p2, "app_point_amount"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1203
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setAppPoints(I)V

    .line 1205
    :cond_3
    const-string p2, "rebate_card_id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 1206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1207
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setRebateId(Ljava/lang/Long;)V

    .line 1209
    :cond_4
    const-string p2, "remaining_days"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 1210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1211
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/data/TransactionInfo;->setRemainingDays(I)V

    .line 1213
    :cond_5
    const-string p2, "quantity"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 1214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1215
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/data/TransactionInfo;->setQuantity(I)V

    :cond_6
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static getAppItems(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;)V
    .locals 1

    .line 338
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 339
    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 341
    invoke-static {p0, v0}, Lcom/beetalk/sdk/networking/model/AppItemsReq;->toParams(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;)Ljava/util/Map;

    move-result-object p0

    .line 340
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/BillingService;->getPaymentAppItems(Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;)V

    sget-object p2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 342
    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static getDenominationList(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGDenominationResponseCallback;)V
    .locals 1

    .line 979
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 980
    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 981
    invoke-static {p0, v0}, Lcom/beetalk/sdk/networking/model/ChannelsReq;->toParams(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;)Ljava/util/Map;

    move-result-object p0

    .line 983
    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/BillingService;->getPaymentChannels(Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$11;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$11;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGDenominationResponseCallback;)V

    sget-object p2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static getPaymentChannelList(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
    .locals 2

    .line 297
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 298
    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 299
    invoke-static {p0, v0}, Lcom/beetalk/sdk/networking/model/ChannelsReq;->toParams(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;)Ljava/util/Map;

    move-result-object v1

    .line 301
    invoke-static {p0, v0, v1}, Lcom/beetalk/sdk/networking/service/BillingService;->getProductItems(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;

    invoke-direct {v1, p2, p1, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;Lcom/garena/pay/android/data/GGPayment;Landroid/app/Activity;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private static instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;
    .locals 2

    .line 152
    sget-object v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->INSTANCE:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    if-nez v0, :cond_1

    .line 153
    const-class v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->INSTANCE:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    invoke-direct {v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;-><init>()V

    sput-object v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->INSTANCE:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    .line 157
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    :cond_1
    :goto_0
    sget-object v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->INSTANCE:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    return-object v0
.end method

.method private static localizeChannelDenominations(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;",
            "Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;",
            ")V"
        }
    .end annotation

    .line 381
    invoke-static {p0}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-void

    .line 386
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    const v3, 0x3116d

    .line 387
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 391
    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isSubscription()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_3
    new-instance v3, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-direct {v3, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v3, v0, v2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/util/List;Ljava/util/List;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;

    invoke-direct {v0, p2, p1, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;Ljava/util/List;Lcom/garena/pay/android/data/GGPayment$PaymentChannel;)V

    invoke-virtual {p0, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void

    .line 437
    :cond_4
    invoke-interface {p2, p1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method private static localizeChannelEventDenominations(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/PricingEvent;",
            ">;",
            "Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;",
            ")V"
        }
    .end annotation

    .line 600
    invoke-static {p0}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lcom/garena/android/model/Result;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    return-void

    .line 605
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    const v2, 0x3116d

    .line 606
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 610
    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isSubscription()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_3
    new-instance v2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-direct {v2, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v2, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/util/List;Ljava/util/List;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$6;

    invoke-direct {p1, p3, v1, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$6;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;Lcom/garena/pay/android/data/GGPayment$PaymentChannel;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void

    .line 660
    :cond_4
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    .line 661
    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x0

    .line 662
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    .line 663
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-interface {p3, p0, p1, p2, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public static onActivityResult(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 1119
    :cond_0
    const-string v1, "com.garena.pay.android.extras.result"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/data/Result;

    :goto_0
    if-nez p0, :cond_1

    .line 1122
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p0

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v2, Lcom/garena/pay/android/exception/ErrorException;

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 1125
    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 1126
    invoke-virtual {v4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    .line 1128
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v3

    sget-object v4, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-direct {v3, v0, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object v0

    .line 1122
    invoke-direct {p0, v1, v2, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    return-void

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/Result;->getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/data/Result;->isError(Lcom/beetalk/sdk/data/Result$ResultCode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1134
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v1

    sget-object v2, Lcom/garena/pay/android/data/TransactionStatus;->PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;

    .line 1137
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v3

    sget-object v4, Lcom/garena/pay/android/data/TransactionStatus;->PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-direct {v3, p0, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p0

    .line 1134
    invoke-direct {v1, v2, v0, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    goto :goto_1

    .line 1140
    :cond_2
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v2, Lcom/garena/pay/android/exception/ErrorException;

    .line 1143
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/Result;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/Result;->getErrorCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    .line 1146
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v3

    sget-object v4, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-direct {v3, p0, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p0

    .line 1140
    invoke-direct {v0, v1, v2, p0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    :goto_1
    return-void
.end method

.method public static processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;)V
    .locals 1

    const/16 v0, 0x1101

    .line 198
    invoke-static {p0, p1, p2, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;I)V

    return-void
.end method

.method public static processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;I)V
    .locals 3

    const/4 v0, 0x1

    .line 217
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "processPayment"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 218
    invoke-static {p0, p1, p2, p3, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;ILcom/garena/pay/android/GGPayRequest;)V

    return-void
.end method

.method private static processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;ILcom/garena/pay/android/GGPayRequest;)V
    .locals 3

    .line 228
    invoke-static {p0}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget-object p0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    .line 232
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 233
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p3

    .line 235
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {p4, v0}, Lcom/beetalk/sdk/data/Result;->createCancelResult(Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;

    move-result-object p4

    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    .line 233
    invoke-direct {p3, p4, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p3

    .line 230
    invoke-interface {p2, p0, p1, p3}, Lcom/garena/pay/android/GGPayResponseCallback;->onPaymentProcessed(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->addPayResponseCallback(Lcom/garena/pay/android/GGPayResponseCallback;)V

    .line 243
    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 244
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p0

    sget-object p1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance p2, Lcom/garena/pay/android/exception/ErrorException;

    sget-object p3, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    .line 247
    invoke-virtual {p3}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    .line 248
    invoke-virtual {p4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p2, p3, p4}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    .line 250
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p3

    sget-object p4, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-direct {p3, v0, p4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p3

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    return-void

    .line 258
    :cond_1
    invoke-static {p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->verifyPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)Lcom/garena/pay/android/data/ValidationResult;

    move-result-object p2

    .line 259
    iget-object v1, p2, Lcom/garena/pay/android/data/ValidationResult;->resultCode:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    sget-object v2, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->SUCCESS:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    if-ne v1, v2, :cond_3

    .line 260
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p2

    iput-object p1, p2, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->pendingPayment:Lcom/garena/pay/android/data/GGPayment;

    if-nez p4, :cond_2

    .line 264
    new-instance p4, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {p4}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 266
    :cond_2
    invoke-virtual {p4, p3}, Lcom/garena/pay/android/GGPayRequest;->setRequestCode(I)V

    .line 267
    invoke-virtual {p4, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    .line 268
    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment;->getDenominations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/garena/pay/android/GGPayRequest;->setDenominations(Ljava/util/List;)V

    .line 271
    invoke-static {p0, p4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->commencePaymentFlow(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p0

    sget-object p1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance p3, Ljava/lang/Exception;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Error in handling request, validation of payment request failed. "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/garena/pay/android/data/ValidationResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->instance()Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    move-result-object p2

    sget-object p4, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-direct {p2, v0, p4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->createTransactionStatus(Lcom/beetalk/sdk/data/Result;Lcom/garena/pay/android/data/TransactionStatus;)Lcom/garena/pay/android/data/TransactionInfo;

    move-result-object p2

    .line 273
    invoke-direct {p0, p1, p3, p2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    :goto_0
    return-void
.end method

.method public static processPaymentWithChannelItem(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;Ljava/lang/String;I)V
    .locals 1

    .line 1036
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 1037
    invoke-virtual {v0, p4}, Lcom/garena/pay/android/GGPayRequest;->setChosenChannelId(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, p3}, Lcom/garena/pay/android/GGPayRequest;->setChosenDenomination(Lcom/garena/pay/android/data/GGPayment$Denomination;)V

    .line 1039
    invoke-static {p0, p1, p2, p5, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;ILcom/garena/pay/android/GGPayRequest;)V

    return-void
.end method

.method public static processPaymentWithItem(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;I)V
    .locals 1

    .line 1018
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    .line 1020
    invoke-virtual {v0, p3}, Lcom/garena/pay/android/GGPayRequest;->setChosenDenomination(Lcom/garena/pay/android/data/GGPayment$Denomination;)V

    .line 1021
    invoke-static {p0, p1, p2, p4, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;ILcom/garena/pay/android/GGPayRequest;)V

    return-void
.end method

.method private publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V
    .locals 2

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;-><init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform;Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1172
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static scanGoogleInAppPurchaseInventory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/garena/pay/android/GoogleIapInventoryScanCallback;)V
    .locals 0

    .line 176
    invoke-static/range {p0 .. p5}, Lcom/garena/pay/android/GoogleIabInventoryScanner;->startScan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/garena/pay/android/GoogleIapInventoryScanCallback;)V

    return-void
.end method

.method private static startPayActivity(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;)Z
    .locals 3

    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/garena/pay/android/GGPayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    const-string v1, "com.garena.pay.android.extras.pay_request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1097
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    .line 1102
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1103
    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static verifyPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)Lcom/garena/pay/android/data/ValidationResult;
    .locals 2

    .line 1049
    new-instance v0, Lcom/garena/pay/android/data/ValidationResult;

    invoke-direct {v0}, Lcom/garena/pay/android/data/ValidationResult;-><init>()V

    .line 1050
    const-string v1, ""

    iput-object v1, v0, Lcom/garena/pay/android/data/ValidationResult;->errorMessage:Ljava/lang/String;

    .line 1051
    sget-object v1, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->SUCCESS:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    iput-object v1, v0, Lcom/garena/pay/android/data/ValidationResult;->resultCode:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    .line 1053
    invoke-virtual {p0}, Lcom/garena/pay/android/data/GGPayment;->getBuyerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    const-string p0, "Buyer Id cannot be null or empty."

    invoke-static {p0}, Lcom/garena/pay/android/data/ValidationResult;->createError(Ljava/lang/String;)Lcom/garena/pay/android/data/ValidationResult;

    move-result-object p0

    return-object p0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/garena/pay/android/data/GGPayment;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1056
    const-string p0, "Client Id cannot be null or empty."

    invoke-static {p0}, Lcom/garena/pay/android/data/ValidationResult;->createError(Ljava/lang/String;)Lcom/garena/pay/android/data/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
