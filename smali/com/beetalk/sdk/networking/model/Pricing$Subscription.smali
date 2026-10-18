.class Lcom/beetalk/sdk/networking/model/Pricing$Subscription;
.super Ljava/lang/Object;
.source "Pricing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/model/Pricing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;
    }
.end annotation


# instance fields
.field private channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mget(Lcom/beetalk/sdk/networking/model/Pricing$Subscription;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smparse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->channels:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->channels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;

    if-eqz p1, :cond_0

    .line 403
    invoke-static {p1}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {p1}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;->-$$Nest$fgetinfo(Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item$Info;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;-><init>()V

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->channels:Ljava/util/Map;

    .line 385
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 390
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;->-$$Nest$smparse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/Pricing$Subscription$Item;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 392
    iget-object v4, v0, Lcom/beetalk/sdk/networking/model/Pricing$Subscription;->channels:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
