.class Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;
.super Ljava/lang/Object;
.source "Pricing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/model/Pricing$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sku"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;
    }
.end annotation


# instance fields
.field private appItemId:J

.field private appPointAmount:I

.field private currency:Ljava/lang/String;

.field private currencyAmount:F

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private rebateCardId:J

.field private subscription:Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;


# direct methods
.method static bridge synthetic -$$Nest$fgetappItemId(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->appItemId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetappPointAmount(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)I
    .locals 0

    iget p0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->appPointAmount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->id:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprice(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->price:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrebateCardId(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->rebateCardId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsubscription(Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->subscription:Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smparseList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->parseList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;-><init>()V

    .line 261
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->id:Ljava/lang/String;

    .line 262
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->name:Ljava/lang/String;

    .line 263
    const-string v1, "app_point_amount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->appPointAmount:I

    .line 264
    const-string v1, "price"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->price:Ljava/lang/String;

    .line 265
    const-string v1, "currency_amount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->currencyAmount:F

    .line 266
    const-string v1, "currency"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->currency:Ljava/lang/String;

    .line 267
    const-string v1, "rebate_card_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->rebateCardId:J

    .line 268
    const-string v1, "app_item_id"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->appItemId:J

    .line 269
    const-string/jumbo v1, "subscription"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;->-$$Nest$smparse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->subscription:Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku$Sub;

    return-object v0
.end method

.method private static parseList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Channel$Sku;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 283
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
