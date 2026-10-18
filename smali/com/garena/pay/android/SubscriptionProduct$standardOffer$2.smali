.class final Lcom/garena/pay/android/SubscriptionProduct$standardOffer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Product.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/SubscriptionProduct;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/garena/pay/android/BasePlan$Offer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Product.kt\ncom/garena/pay/android/SubscriptionProduct$standardOffer$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1360#2:152\n1446#2,5:153\n223#2,2:158\n*S KotlinDebug\n*F\n+ 1 Product.kt\ncom/garena/pay/android/SubscriptionProduct$standardOffer$2\n*L\n109#1:152\n109#1:153,5\n109#1:158,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/garena/pay/android/BasePlan$Offer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/SubscriptionProduct;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/SubscriptionProduct;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/SubscriptionProduct$standardOffer$2;->this$0:Lcom/garena/pay/android/SubscriptionProduct;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/garena/pay/android/BasePlan$Offer;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/garena/pay/android/SubscriptionProduct$standardOffer$2;->this$0:Lcom/garena/pay/android/SubscriptionProduct;

    invoke-virtual {v0}, Lcom/garena/pay/android/SubscriptionProduct;->getBasePlans()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    check-cast v2, Lcom/garena/pay/android/BasePlan;

    .line 109
    invoke-virtual {v2}, Lcom/garena/pay/android/BasePlan;->getOffers()Ljava/util/List;

    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/Iterable;

    .line 155
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 157
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 152
    check-cast v1, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/BasePlan$Offer;

    .line 109
    invoke-virtual {v1}, Lcom/garena/pay/android/BasePlan$Offer;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 159
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/garena/pay/android/SubscriptionProduct$standardOffer$2;->invoke()Lcom/garena/pay/android/BasePlan$Offer;

    move-result-object v0

    return-object v0
.end method
