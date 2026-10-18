.class public Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillingFlowParamsExtra"
.end annotation


# instance fields
.field private appExtends:Ljava/lang/String;

.field private channelExtras:Ljava/lang/String;

.field private drmInfo:Ljava/lang/String;

.field private goodsZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->appExtends:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->channelExtras:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->drmInfo:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->goodsZoneId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->channelExtras:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->drmInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->goodsZoneId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAppExtends()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->appExtends:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelExtras()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->channelExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmInfo()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsZoneId()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->goodsZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppExtends(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->appExtends:Ljava/lang/String;

    return-void
.end method

.method public setChannelExtras(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->channelExtras:Ljava/lang/String;

    return-void
.end method

.method public setDrmInfo(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->drmInfo:Ljava/lang/String;

    return-void
.end method

.method public setGoodsZoneId(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->goodsZoneId:Ljava/lang/String;

    return-void
.end method
