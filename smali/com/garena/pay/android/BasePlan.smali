.class public final Lcom/garena/pay/android/BasePlan;
.super Ljava/lang/Object;
.source "Product.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/BasePlan$Offer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Product.kt\ncom/garena/pay/android/BasePlan\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1603#2,9:152\n1855#2:161\n1856#2:163\n1612#2:164\n1#3:162\n*S KotlinDebug\n*F\n+ 1 Product.kt\ncom/garena/pay/android/BasePlan\n*L\n118#1:152,9\n118#1:161\n118#1:163\n118#1:164\n118#1:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u0014B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u0006H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/garena/pay/android/BasePlan;",
        "",
        "id",
        "",
        "subscriptionOfferDetailsList",
        "",
        "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/ProductDetails;)V",
        "getId",
        "()Ljava/lang/String;",
        "offers",
        "Lcom/garena/pay/android/BasePlan$Offer;",
        "getOffers",
        "()Ljava/util/List;",
        "getProductDetails",
        "()Lcom/android/billingclient/api/ProductDetails;",
        "createOffer",
        "offerDetails",
        "Offer",
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
.field private final id:Ljava/lang/String;

.field private final offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/BasePlan$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private final productDetails:Lcom/android/billingclient/api/ProductDetails;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriptionOfferDetailsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetails"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/garena/pay/android/BasePlan;->id:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/garena/pay/android/BasePlan;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 118
    check-cast p2, Ljava/lang/Iterable;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 161
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 160
    check-cast p3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 119
    invoke-direct {p0, p3}, Lcom/garena/pay/android/BasePlan;->createOffer(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/garena/pay/android/BasePlan$Offer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 160
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 118
    iput-object p1, p0, Lcom/garena/pay/android/BasePlan;->offers:Ljava/util/List;

    return-void
.end method

.method private final createOffer(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/garena/pay/android/BasePlan$Offer;
    .locals 3

    .line 123
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getOfferToken(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 129
    :cond_1
    new-instance v0, Lcom/garena/pay/android/BasePlan$Offer;

    invoke-direct {v0, p1}, Lcom/garena/pay/android/BasePlan$Offer;-><init>(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/BasePlan$Offer;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan;->offers:Ljava/util/List;

    return-object v0
.end method

.method public final getProductDetails()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/garena/pay/android/BasePlan;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method
