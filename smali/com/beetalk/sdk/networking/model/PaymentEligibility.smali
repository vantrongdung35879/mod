.class public Lcom/beetalk/sdk/networking/model/PaymentEligibility;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "PaymentEligibility.java"


# static fields
.field public static final ERROR_REASON_CURRENCY_BAN:Ljava/lang/String; = "local_currency_ban"

.field public static final ERROR_REASON_TOPUP_EXCEEDED:Ljava/lang/String; = "topup_limit_exceeded"


# instance fields
.field public final eligible:Z

.field public final localCurrencyCode:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final totalLimitInLocalCurrency:D


# direct methods
.method public constructor <init>(ZLjava/lang/String;DLjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->eligible:Z

    .line 43
    iput-object p2, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->reason:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->totalLimitInLocalCurrency:D

    .line 45
    iput-object p5, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->localCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$parse$0(Ljava/lang/String;Lcom/garena/pay/android/Product;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string p0, "eligibility"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 57
    const-string p0, "eligibility_reason"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string/jumbo p0, "total_limit_in_local_currency"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 60
    new-instance p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    invoke-virtual {p1}, Lcom/garena/pay/android/Product;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;-><init>(ZLjava/lang/String;DLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->populateStatusCode(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/garena/pay/android/Product;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/garena/pay/android/Product;)V

    invoke-static {v0}, Lcom/beetalk/sdk/helper/TaskUtil;->parseJson(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    return-object p0
.end method
