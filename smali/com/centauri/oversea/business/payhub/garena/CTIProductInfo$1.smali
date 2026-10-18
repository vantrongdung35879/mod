.class Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo$1;
.super Ljava/lang/Object;
.source "CTIProductInfo.java"

# interfaces
.implements Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;->getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;

.field final synthetic val$finalCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo$1;->val$finalCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 145
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    .line 147
    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v0

    .line 149
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 150
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 151
    const-string v3, "name"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v3, "app_item_id"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getAppItemId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 153
    const-string v3, "price"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v3, "promo_amount"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPromoPoints()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v3, "iconUrl"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v3, "id"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v3, "isInPromotion"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isInPromotion()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    const-string v3, "rebateId"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 160
    const-string v3, "app_point_amount"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getAppPoints()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v3, "one_time_promo_amount"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getOneTimePromoPoints()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isSubscription()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "period"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getPeriod()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v3, "status"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getStatus()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v3, "last_payment_time"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getLastPaymentTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    const-string v3, "intro_price"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getIntroPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v3, "intro_currency_amount"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getIntroCurrencyAmount()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 168
    const-string v3, "intro_cycle"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getIntroCycle()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string v3, "grace_period_expiry_time"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getGracePeriodExpiryTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    const-string v3, "on_hold_since"

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getSubscription()Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;->getOnHoldSince()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    :cond_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 178
    :cond_1
    const-string v0, "garenaProductList"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo$1;->val$finalCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;

    const-string v1, "0"

    const-string/jumbo v2, "succ"

    invoke-static {v0, v1, v2, p2}, Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;->access$000(Lcom/centauri/oversea/business/payhub/garena/CTIProductInfo;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/centauri/oversea/newapi/response/InfoCallback;->callback(Ljava/lang/String;)V

    return-void
.end method
