.class public final Lcom/garena/pay/android/OneTimeProduct;
.super Lcom/garena/pay/android/Product;
.source "Product.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/garena/pay/android/OneTimeProduct;",
        "Lcom/garena/pay/android/Product;",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "oneTimePurchaseOfferDetails",
        "Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;",
        "(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V",
        "currencyCode",
        "",
        "getCurrencyCode",
        "()Ljava/lang/String;",
        "formattedPrice",
        "getFormattedPrice",
        "priceAmountInMicros",
        "",
        "getPriceAmountInMicros",
        "()J",
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
.field private final currencyCode:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountInMicros:J


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V
    .locals 2

    const-string v0, "productDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oneTimePurchaseOfferDetails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/garena/pay/android/Product;-><init>(Lcom/android/billingclient/api/ProductDetails;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garena/pay/android/OneTimeProduct;->priceAmountInMicros:J

    .line 87
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getFormattedPrice(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/pay/android/OneTimeProduct;->formattedPrice:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getPriceCurrencyCode(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/pay/android/OneTimeProduct;->currencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/garena/pay/android/OneTimeProduct;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/garena/pay/android/OneTimeProduct;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceAmountInMicros()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/garena/pay/android/OneTimeProduct;->priceAmountInMicros:J

    return-wide v0
.end method
