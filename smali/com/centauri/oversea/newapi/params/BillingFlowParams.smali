.class public Lcom/centauri/oversea/newapi/params/BillingFlowParams;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;,
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;,
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$Type;
    }
.end annotation


# static fields
.field public static final TYPE_GAME:Ljava/lang/String; = "save"

.field public static final TYPE_GOODS:Ljava/lang/String; = "bg"

.field public static final TYPE_MONTH:Ljava/lang/String; = "month"

.field public static final TYPE_UNION_MONTH:Ljava/lang/String; = "unimonth"


# instance fields
.field private country:Ljava/lang/String;

.field private currencyType:Ljava/lang/String;

.field private extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

.field private isAutoPay:Z

.field private mType:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "save"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-object p1
.end method

.method static synthetic access$402(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPay()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    return v0
.end method

.method public toMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const-string v1, "currencyType"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    const-string v1, "country"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    const-string v1, "payChannel"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    const-string v1, "productId"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    const-string v1, "serviceCode"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 144
    const-string v1, "serviceName"

    iget-object v2, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$000(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 148
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$000(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelExtras"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$100(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 151
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$100(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drmInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_8
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$200(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 154
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$200(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "goodsZoneId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method
