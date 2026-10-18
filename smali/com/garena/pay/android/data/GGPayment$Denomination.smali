.class public Lcom/garena/pay/android/data/GGPayment$Denomination;
.super Ljava/lang/Object;
.source "GGPayment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/data/GGPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Denomination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appItemId:J

.field private final appPoints:I

.field private eventId:Ljava/lang/String;

.field private final iconUrl:Ljava/lang/String;

.field private final isPromo:Z

.field private itemId:Ljava/lang/String;

.field private localizedPrice:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final oneTimePromoPoints:I

.field private pointName:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field public priceCode:Ljava/lang/String;

.field private final promoPoints:I

.field private rebateId:J

.field private subscription:Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 2

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 524
    iput-wide v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->rebateId:J

    .line 526
    iput-wide v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->appItemId:J

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->subscription:Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    .line 535
    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->localizedPrice:Ljava/lang/String;

    .line 541
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->name:Ljava/lang/String;

    .line 542
    iput-object p2, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->itemId:Ljava/lang/String;

    .line 543
    iput p3, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->appPoints:I

    .line 544
    iput-object p4, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->iconUrl:Ljava/lang/String;

    .line 545
    iput-object p5, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->price:Ljava/lang/String;

    .line 546
    iput-boolean p6, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->isPromo:Z

    .line 547
    iput p7, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->promoPoints:I

    .line 548
    iput p8, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->oneTimePromoPoints:I

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/garena/pay/android/data/GGPayment$Denomination;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 662
    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 664
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    const-string v0, "app_point_amount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 666
    const-string v0, "price"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 667
    const-string v0, "promo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 668
    const-string v0, "rebate_card_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 669
    const-string v0, "app_item_id"

    invoke-virtual {p0, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 670
    const-string v0, "promo_amount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 671
    new-instance v0, Lcom/garena/pay/android/data/GGPayment$Denomination;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/garena/pay/android/data/GGPayment$Denomination;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 672
    invoke-virtual {v0, v10, v11}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setRebateId(J)V

    .line 673
    invoke-virtual {v0, v12, v13}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setAppItemId(J)V

    .line 674
    const-string/jumbo v1, "subscription"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->parse(Lorg/json/JSONObject;)Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setSubscription(Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;)V

    return-object v0
.end method

.method public static parseList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 683
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 684
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 685
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 686
    invoke-static {v2}, Lcom/garena/pay/android/data/GGPayment$Denomination;->parse(Lorg/json/JSONObject;)Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 688
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAppItemId()J
    .locals 2

    .line 630
    iget-wide v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->appItemId:J

    return-wide v0
.end method

.method public getAppPoints()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->appPoints:I

    return v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOneTimePromoPoints()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->oneTimePromoPoints:I

    return v0
.end method

.method public getPointName()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->pointName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->localizedPrice:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCode()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->priceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceFromServer()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoPoints()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->promoPoints:I

    return v0
.end method

.method public getRebateId()J
    .locals 2

    .line 622
    iget-wide v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->rebateId:J

    return-wide v0
.end method

.method public getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->subscription:Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    return-object v0
.end method

.method public isInPromotion()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->isPromo:Z

    return v0
.end method

.method public isSubscription()Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->subscription:Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAppItemId(J)V
    .locals 0

    .line 634
    iput-wide p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->appItemId:J

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->name:Ljava/lang/String;

    return-void
.end method

.method public setPointName(Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->pointName:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->localizedPrice:Ljava/lang/String;

    return-void
.end method

.method public setPriceCode(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->priceCode:Ljava/lang/String;

    return-void
.end method

.method public setRebateId(J)V
    .locals 0

    .line 626
    iput-wide p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->rebateId:J

    return-void
.end method

.method public setSubscription(Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$Denomination;->subscription:Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    return-void
.end method
