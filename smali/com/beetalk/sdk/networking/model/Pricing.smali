.class public Lcom/beetalk/sdk/networking/model/Pricing;
.super Ljava/lang/Object;
.source "Pricing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/model/Pricing$App;,
        Lcom/beetalk/sdk/networking/model/Pricing$Promo;,
        Lcom/beetalk/sdk/networking/model/Pricing$Subscription;,
        Lcom/beetalk/sdk/networking/model/Pricing$Channel;
    }
.end annotation


# instance fields
.field private app:Lcom/beetalk/sdk/networking/model/Pricing$App;

.field private appItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPaymentAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/Pricing$Channel;",
            ">;"
        }
    .end annotation
.end field

.field private promoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/Pricing$Promo;",
            ">;"
        }
    .end annotation
.end field

.field private rebates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/ndk/RebateOptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lcom/beetalk/sdk/networking/model/Pricing$Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing;
    .locals 7

    .line 38
    new-instance v0, Lcom/beetalk/sdk/networking/model/Pricing;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/Pricing;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 42
    :cond_0
    const-string v1, "app"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/networking/model/Pricing$App;->-$$Nest$smparse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$App;

    move-result-object v1

    .line 43
    const-string v2, "promos"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Promo;->-$$Nest$smparseList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "subscriptions"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->-$$Nest$smparse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription;

    move-result-object v3

    .line 45
    const-string v4, "channels"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$smparseList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 46
    const-string v5, "rebates"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/garena/pay/android/ndk/RebateOptionItem;->parseList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 47
    const-string v6, "app_items"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/pay/android/data/GGPaymentAppItem;->parseList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    .line 49
    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing;->app:Lcom/beetalk/sdk/networking/model/Pricing$App;

    .line 50
    iput-object v2, v0, Lcom/beetalk/sdk/networking/model/Pricing;->promoList:Ljava/util/List;

    .line 51
    iput-object v3, v0, Lcom/beetalk/sdk/networking/model/Pricing;->subscription:Lcom/beetalk/sdk/networking/model/Pricing$Subscription;

    .line 52
    iput-object v4, v0, Lcom/beetalk/sdk/networking/model/Pricing;->channels:Ljava/util/List;

    .line 53
    iput-object v5, v0, Lcom/beetalk/sdk/networking/model/Pricing;->rebates:Ljava/util/List;

    .line 54
    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/Pricing;->appItems:Ljava/util/List;

    return-object v0
.end method

.method static toPaymentChannelList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 64
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/beetalk/sdk/networking/model/Pricing;->toPaymentChannelList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    return-object v1
.end method

.method private static toPaymentChannelList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/beetalk/sdk/networking/model/Pricing;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing;

    move-result-object v0

    .line 78
    iget-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing;->app:Lcom/beetalk/sdk/networking/model/Pricing$App;

    .line 79
    iget-object v2, v0, Lcom/beetalk/sdk/networking/model/Pricing;->promoList:Ljava/util/List;

    .line 80
    iget-object v3, v0, Lcom/beetalk/sdk/networking/model/Pricing;->subscription:Lcom/beetalk/sdk/networking/model/Pricing$Subscription;

    .line 81
    iget-object v4, v0, Lcom/beetalk/sdk/networking/model/Pricing;->channels:Ljava/util/List;

    .line 82
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 83
    iget-object v0, v0, Lcom/beetalk/sdk/networking/model/Pricing;->rebates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/garena/pay/android/ndk/RebateOptionItem;

    .line 85
    iget-wide v7, v6, Lcom/garena/pay/android/ndk/RebateOptionItem;->rebateId:J

    invoke-virtual {v5, v7, v8, v6}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/beetalk/sdk/networking/model/Pricing$Channel;

    .line 91
    new-instance v7, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-direct {v7}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;-><init>()V

    .line 92
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setChannelId(Ljava/lang/String;)V

    .line 93
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;

    move-result-object v8

    invoke-static {v8}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;->-$$Nest$fgetname(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setName(Ljava/lang/String;)V

    .line 94
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;

    move-result-object v8

    invoke-static {v8}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;->-$$Nest$fgeticon(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setIconUrl(Ljava/lang/String;)V

    .line 95
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;

    move-result-object v8

    invoke-static {v8}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;->-$$Nest$fgetdescription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setDescription(Ljava/lang/String;)V

    .line 96
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;

    move-result-object v8

    invoke-static {v8}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;->-$$Nest$fgetflag(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Info;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setFlag(I)V

    .line 98
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetitems(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;

    .line 100
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetname(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;

    move-result-object v12

    .line 101
    invoke-static {v1}, Lcom/beetalk/sdk/networking/model/Pricing$App;->-$$Nest$fgetpointIcon(Lcom/beetalk/sdk/networking/model/Pricing$App;)Ljava/lang/String;

    move-result-object v15

    .line 102
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;

    move-result-object v13

    .line 103
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetappPointAmount(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 104
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetprice(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 p0, v7

    move-object/from16 v20, v8

    .line 105
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetrebateCardId(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)J

    move-result-wide v7

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .line 106
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetappItemId(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)J

    move-result-wide v4

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    check-cast v2, Lcom/beetalk/sdk/networking/model/Pricing$Promo;

    move-object/from16 v24, v9

    .line 111
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v26, v0

    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v9, v0}, Lcom/beetalk/sdk/networking/model/Pricing$Promo;->-$$Nest$mhasItem(Lcom/beetalk/sdk/networking/model/Pricing$Promo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Promo;->-$$Nest$fgetisOnAllItems(Lcom/beetalk/sdk/networking/model/Pricing$Promo;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v9, v24

    move-object/from16 v2, v25

    move-object/from16 v0, v26

    goto :goto_3

    .line 114
    :cond_2
    invoke-static {v10}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetappPointAmount(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Promo;->-$$Nest$fgetappPointBonus(Lcom/beetalk/sdk/networking/model/Pricing$Promo;)F

    move-result v9

    mul-float v0, v0, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v0, v9

    move-object/from16 v27, v10

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    add-int v19, v19, v0

    .line 116
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Promo;->-$$Nest$fgetisOneTimePromo(Lcom/beetalk/sdk/networking/model/Pricing$Promo;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int v23, v23, v0

    :cond_3
    move-object/from16 v9, v24

    move-object/from16 v2, v25

    move-object/from16 v0, v26

    move-object/from16 v10, v27

    goto :goto_3

    :cond_4
    move-object/from16 v26, v0

    move-object/from16 v25, v2

    move-object/from16 v24, v9

    move-object/from16 v27, v10

    if-lez v19, :cond_5

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    .line 122
    :goto_4
    new-instance v0, Lcom/garena/pay/android/data/GGPayment$Denomination;

    .line 123
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v11, v0

    move/from16 v18, v19

    move/from16 v19, v23

    invoke-direct/range {v11 .. v19}, Lcom/garena/pay/android/data/GGPayment$Denomination;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 125
    invoke-virtual {v0, v7, v8}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setRebateId(J)V

    .line 126
    invoke-virtual {v0, v4, v5}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setAppItemId(J)V

    .line 127
    invoke-static {v1}, Lcom/beetalk/sdk/networking/model/Pricing$App;->-$$Nest$fgetpointName(Lcom/beetalk/sdk/networking/model/Pricing$App;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setPointName(Ljava/lang/String;)V

    .line 128
    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    .line 134
    invoke-static {v6}, Lcom/beetalk/sdk/networking/model/Pricing$Channel;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->-$$Nest$mget(Lcom/beetalk/sdk/networking/model/Pricing$Subscription;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 136
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;->-$$Nest$fgetstatus(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;)I

    move-result v4

    .line 137
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;->-$$Nest$fgetlastPaymentTime(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;)J

    move-result-wide v9

    .line 138
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;->-$$Nest$fgetgracePeriodExpire(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;)J

    move-result-wide v11

    .line 139
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;->-$$Nest$fgetonHoldSince(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;)J

    move-result-wide v13

    move/from16 v30, v4

    move-wide/from16 v31, v9

    move-wide/from16 v33, v11

    move-wide/from16 v39, v13

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    move-wide/from16 v31, v9

    move-wide/from16 v33, v31

    move-wide/from16 v39, v33

    const/16 v30, -0x1

    .line 142
    :goto_5
    new-instance v2, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;

    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object v4

    invoke-static {v4}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;->-$$Nest$fgetperiod(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;)I

    move-result v29

    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object v4

    invoke-static {v4}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;->-$$Nest$fgetintroPrice(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object v4

    invoke-static {v4}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;->-$$Nest$fgetintroCycle(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;)I

    move-result v36

    invoke-static/range {v27 .. v27}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->-$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object v4

    invoke-static {v4}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;->-$$Nest$fgetintroCurrencyAmount(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;)D

    move-result-wide v37

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v40}, Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;-><init>(IIJJLjava/lang/String;IDJ)V

    .line 152
    invoke-virtual {v0, v2}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setSubscription(Lcom/garena/pay/android/data/GGPayment$Denomination$Subscription;)V

    :cond_7
    move-object/from16 v2, v21

    .line 156
    invoke-virtual {v2, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/garena/pay/android/ndk/RebateOptionItem;

    if-eqz v4, :cond_9

    .line 158
    iget-boolean v5, v4, Lcom/garena/pay/android/ndk/RebateOptionItem;->validToPurchase:Z

    if-nez v5, :cond_8

    move-object/from16 v7, p0

    move-object v5, v2

    move-object/from16 v8, v20

    goto :goto_6

    .line 162
    :cond_8
    iget-object v4, v4, Lcom/garena/pay/android/ndk/RebateOptionItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setName(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v4, v20

    .line 165
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move-object v5, v2

    move-object v8, v4

    :goto_6
    move-object/from16 v4, v22

    move-object/from16 v9, v24

    move-object/from16 v2, v25

    move-object/from16 v0, v26

    goto/16 :goto_2

    :cond_a
    move-object/from16 v26, v0

    move-object/from16 v25, v2

    move-object/from16 v22, v4

    move-object v2, v5

    move-object v0, v7

    move-object v4, v8

    .line 167
    invoke-virtual {v0, v4}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setItems(Ljava/util/List;)V

    move-object/from16 v4, v26

    .line 168
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    move-object/from16 v4, v22

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_b
    move-object v4, v0

    return-object v4
.end method
