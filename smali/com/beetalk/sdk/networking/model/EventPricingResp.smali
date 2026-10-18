.class public Lcom/beetalk/sdk/networking/model/EventPricingResp;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "EventPricingResp.java"


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/PricingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/EventPricingResp;
    .locals 3

    .line 23
    new-instance v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/EventPricingResp;-><init>()V

    if-nez p0, :cond_0

    .line 25
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->errorCode:I

    return-object v0

    .line 28
    :cond_0
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->parseErrorCode(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->errorCode:I

    .line 30
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->parseResultCode(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->resultCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 33
    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 35
    :goto_0
    iget v1, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->errorCode:I

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/Pricing;->toPaymentChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->channels:Ljava/util/List;

    .line 39
    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->parseEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->events:Ljava/util/List;

    return-object v0
.end method

.method private static parseEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/PricingEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string p0, "events"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 53
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    new-instance v5, Lcom/beetalk/sdk/networking/model/PricingEvent;

    invoke-direct {v5}, Lcom/beetalk/sdk/networking/model/PricingEvent;-><init>()V

    .line 55
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->id:I

    .line 56
    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->type:Ljava/lang/String;

    .line 57
    const-string/jumbo v6, "start_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->start_time:J

    .line 58
    const-string v6, "end_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->end_time:J

    .line 59
    const-string v6, "available_times"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->available_times:I

    .line 60
    const-string/jumbo v6, "total_times"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->total_times:I

    .line 61
    const-string/jumbo v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->status:I

    .line 62
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 64
    iget-object v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->items:[I

    if-nez v6, :cond_1

    .line 65
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->items:[I

    :cond_1
    const/4 v6, 0x0

    .line 66
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 67
    iget-object v7, v5, Lcom/beetalk/sdk/networking/model/PricingEvent;->items:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 76
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/PricingEvent;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/EventPricingResp;->events:Ljava/util/List;

    return-object v0
.end method
