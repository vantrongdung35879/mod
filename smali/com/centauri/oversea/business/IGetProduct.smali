.class public interface abstract Lcom/centauri/oversea/business/IGetProduct;
.super Ljava/lang/Object;
.source "IGetProduct.java"


# virtual methods
.method public abstract clearPurchase(Landroid/content/Context;)V
.end method

.method public abstract getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
.end method

.method public abstract getProductInfo(Landroid/app/Activity;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getProductInfo(Landroid/content/Context;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation
.end method
