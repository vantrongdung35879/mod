.class public final Lcom/garena/pay/android/BasePlan$Offer;
.super Ljava/lang/Object;
.source "Product.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/BasePlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Offer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000eR\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lcom/garena/pay/android/BasePlan$Offer;",
        "",
        "subscriptionOfferDetails",
        "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
        "(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V",
        "billingPeriod",
        "",
        "getBillingPeriod",
        "()Ljava/lang/String;",
        "currencyCode",
        "getCurrencyCode",
        "cycleCount",
        "",
        "getCycleCount",
        "()I",
        "id",
        "getId",
        "price",
        "getPrice",
        "priceAmountMicros",
        "",
        "getPriceAmountMicros",
        "()J",
        "pricing",
        "Lcom/android/billingclient/api/ProductDetails$PricingPhase;",
        "recurrenceMode",
        "getRecurrenceMode",
        "tags",
        "",
        "getTags",
        "()Ljava/util/List;",
        "token",
        "getToken",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final billingPeriod:Ljava/lang/String;

.field private final currencyCode:Ljava/lang/String;

.field private final cycleCount:I

.field private final id:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceAmountMicros:J

.field private final pricing:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

.field private final recurrenceMode:I

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V
    .locals 2

    const-string/jumbo v0, "subscriptionOfferDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->id:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOfferToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->token:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v0

    const-string v1, "getOfferTags(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->tags:Ljava/util/List;

    .line 139
    invoke-static {p1}, Lcom/garena/pay/android/ProductKt;->access$getMinPricingPhase(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/BasePlan$Offer;->pricing:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 141
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFormattedPrice(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->price:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->priceAmountMicros:J

    .line 143
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPriceCurrencyCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->currencyCode:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v0

    iput v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->cycleCount:I

    .line 145
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBillingPeriod(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->billingPeriod:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result p1

    iput p1, p0, Lcom/garena/pay/android/BasePlan$Offer;->recurrenceMode:I

    return-void
.end method


# virtual methods
.method public final getBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->billingPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCycleCount()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->cycleCount:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceAmountMicros()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->priceAmountMicros:J

    return-wide v0
.end method

.method public final getRecurrenceMode()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->recurrenceMode:I

    return v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan$Offer;->token:Ljava/lang/String;

    return-object v0
.end method
