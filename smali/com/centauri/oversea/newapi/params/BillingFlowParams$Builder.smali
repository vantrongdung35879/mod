.class public Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;-><init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams$1;)V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public build()Lcom/centauri/oversea/newapi/params/BillingFlowParams;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$602(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$502(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setExtra(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$1202(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-object p0
.end method

.method public setIsAutoPay(Z)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$1102(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Z)Z

    return-object p0
.end method

.method public setPayChannel(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$702(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setProductID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$802(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setServiceCode(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$902(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$1002(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->params:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->access$402(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
