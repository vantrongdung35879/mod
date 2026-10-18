.class public abstract Lcom/garena/pay/android/Product;
.super Ljava/lang/Object;
.source "Product.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/Product$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\u0082\u0001\u0002\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/garena/pay/android/Product;",
        "",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "(Lcom/android/billingclient/api/ProductDetails;)V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "getProductDetails",
        "()Lcom/android/billingclient/api/ProductDetails;",
        "productId",
        "getProductId",
        "title",
        "getTitle",
        "getPrice",
        "getPriceAmountMicros",
        "",
        "getPriceCurrencyCode",
        "Companion",
        "Lcom/garena/pay/android/OneTimeProduct;",
        "Lcom/garena/pay/android/SubscriptionProduct;",
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


# static fields
.field public static final Companion:Lcom/garena/pay/android/Product$Companion;


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final productDetails:Lcom/android/billingclient/api/ProductDetails;

.field private final productId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/garena/pay/android/Product$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/garena/pay/android/Product$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/garena/pay/android/Product;->Companion:Lcom/garena/pay/android/Product$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/garena/pay/android/Product;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 28
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTitle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/Product;->title:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/Product;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDescription(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/pay/android/Product;->description:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getProductId(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/pay/android/Product;->productId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProductDetails;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/Product;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method public static final create(Lcom/android/billingclient/api/ProductDetails;)Lcom/garena/pay/android/Product;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/garena/pay/android/Product;->Companion:Lcom/garena/pay/android/Product$Companion;

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/Product$Companion;->create(Lcom/android/billingclient/api/ProductDetails;)Lcom/garena/pay/android/Product;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/garena/pay/android/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/garena/pay/android/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 75
    instance-of v0, p0, Lcom/garena/pay/android/OneTimeProduct;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/OneTimeProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/OneTimeProduct;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p0, Lcom/garena/pay/android/SubscriptionProduct;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/SubscriptionProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/SubscriptionProduct;->getStandardOffer()Lcom/garena/pay/android/BasePlan$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/BasePlan$Offer;->getPrice()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getPriceAmountMicros()J
    .locals 2

    .line 68
    instance-of v0, p0, Lcom/garena/pay/android/OneTimeProduct;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/OneTimeProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/OneTimeProduct;->getPriceAmountInMicros()J

    move-result-wide v0

    goto :goto_0

    .line 69
    :cond_0
    instance-of v0, p0, Lcom/garena/pay/android/SubscriptionProduct;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/SubscriptionProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/SubscriptionProduct;->getStandardOffer()Lcom/garena/pay/android/BasePlan$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/BasePlan$Offer;->getPriceAmountMicros()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 61
    instance-of v0, p0, Lcom/garena/pay/android/OneTimeProduct;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/OneTimeProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/OneTimeProduct;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p0, Lcom/garena/pay/android/SubscriptionProduct;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/garena/pay/android/SubscriptionProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/SubscriptionProduct;->getStandardOffer()Lcom/garena/pay/android/BasePlan$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/BasePlan$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getProductDetails()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/garena/pay/android/Product;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/garena/pay/android/Product;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/garena/pay/android/Product;->title:Ljava/lang/String;

    return-object v0
.end method
