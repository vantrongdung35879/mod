.class public Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
.super Ljava/lang/Object;
.source "GGPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/data/GGPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GGPaymentBuilder"
.end annotation


# instance fields
.field private apiVersion:I

.field private appId:Ljava/lang/String;

.field private appItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buyerId:Ljava/lang/String;

.field private conversionRatio:F

.field private convertGooglePlayPrices:Z

.field private denominations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private isOfferPersonalized:Z

.field private itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private platform:I

.field private rebateId:Ljava/lang/Long;

.field private rebateIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private region:Ljava/lang/String;

.field private roleId:I

.field private serverId:I

.field private token:Ljava/lang/String;

.field private topupLimit:Ljava/lang/Integer;

.field private transactionId:Ljava/lang/String;

.field private virtualCurrencyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->denominations:Ljava/util/List;

    .line 328
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->locale:Ljava/util/Locale;

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->serverId:I

    .line 330
    iput v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->roleId:I

    const/4 v1, 0x2

    .line 331
    iput v1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->platform:I

    const-wide/16 v2, 0x0

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateId:Ljava/lang/Long;

    .line 333
    iput-boolean v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->convertGooglePlayPrices:Z

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->itemIds:Ljava/util/List;

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateIds:Ljava/util/List;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appItemIds:Ljava/util/List;

    .line 337
    iput v1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->apiVersion:I

    .line 338
    iput-boolean v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->isOfferPersonalized:Z

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->region:Ljava/lang/String;

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->topupLimit:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addAppItemId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appItemIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDenomination(Lcom/garena/pay/android/data/GGPayment$Denomination;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->denominations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addItemId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->itemIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRebateId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/garena/pay/android/data/GGPayment;
    .locals 15

    .line 475
    new-instance v14, Lcom/garena/pay/android/data/GGPayment;

    iget-object v1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->denominations:Ljava/util/List;

    iget-object v2, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->locale:Ljava/util/Locale;

    iget v3, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->conversionRatio:F

    iget-object v4, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->virtualCurrencyName:Ljava/lang/String;

    iget-object v6, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->buyerId:Ljava/lang/String;

    iget-object v8, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->description:Ljava/lang/String;

    iget-object v9, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->transactionId:Ljava/lang/String;

    iget v10, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->serverId:I

    iget v11, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->roleId:I

    iget v12, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->platform:I

    iget-boolean v13, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->isOfferPersonalized:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/garena/pay/android/data/GGPayment;-><init>(Ljava/util/List;Ljava/util/Locale;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 490
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->itemIds:Ljava/util/List;

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setItemIds(Ljava/util/List;)V

    .line 491
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateIds:Ljava/util/List;

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setRebateIds(Ljava/util/List;)V

    .line 492
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/garena/pay/android/data/GGPayment;->setRebateId(J)V

    .line 493
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appItemIds:Ljava/util/List;

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setAppItemIds(Ljava/util/List;)V

    .line 494
    iget v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->apiVersion:I

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setApiVersion(I)V

    .line 495
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->-$$Nest$msetRegion(Lcom/garena/pay/android/data/GGPayment;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->topupLimit:Ljava/lang/Integer;

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setTopupLimit(Ljava/lang/Integer;)V

    .line 497
    iget-boolean v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->convertGooglePlayPrices:Z

    invoke-virtual {v14, v0}, Lcom/garena/pay/android/data/GGPayment;->setConvertGooglePlayPrices(Z)V

    return-object v14
.end method

.method public setApiVersion(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 470
    iput p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->apiVersion:I

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppItemIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->appItemIds:Ljava/util/List;

    return-object p0
.end method

.method public setBuyerId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->buyerId:Ljava/lang/String;

    return-object p0
.end method

.method public setConversionRatio(F)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 378
    iput p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->conversionRatio:F

    return-object p0
.end method

.method public setConvertGooglePlayPrices(Z)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 459
    iput-boolean p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->convertGooglePlayPrices:Z

    return-object p0
.end method

.method public setDenominations(Ljava/util/List;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;)",
            "Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->denominations:Ljava/util/List;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setIsOfferPersonalized(Z)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->isOfferPersonalized:Z

    return-object p0
.end method

.method public setItemIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->itemIds:Ljava/util/List;

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setPlatform(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 454
    iput p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->platform:I

    return-object p0
.end method

.method public setRebateId(J)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 403
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateId:Ljava/lang/Long;

    return-object p0
.end method

.method public setRebateIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->rebateIds:Ljava/util/List;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public setRoleId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 360
    iput p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->roleId:I

    return-object p0
.end method

.method public setServerId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 350
    iput p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->serverId:I

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setTopupLimit(Ljava/lang/Integer;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->topupLimit:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->transactionId:Ljava/lang/String;

    return-object p0
.end method

.method public setVirtualCurrencyName(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->virtualCurrencyName:Ljava/lang/String;

    return-object p0
.end method
