.class public Lcom/centauri/oversea/business/pay/CTIPayModel;
.super Ljava/lang/Object;
.source "CTIPayModel.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APPayModel"


# instance fields
.field private channelExtra:Ljava/lang/String;

.field private currency_amt:Ljava/lang/String;

.field private hasGoodsList:Z

.field private isErrorConsume:Z

.field private mBillNo:Ljava/lang/String;

.field private mCallback:Lcom/centauri/oversea/business/pay/XCallback;

.field private mCurrency:Ljava/lang/String;

.field private mInfo:Lorg/json/JSONObject;

.field private mOrderObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

.field private mPayInfo:Ljava/lang/String;

.field private mProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

.field private mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

.field private mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

.field private num:Ljava/lang/String;

.field private offer_name:Ljava/lang/String;

.field private payAmt:Ljava/lang/String;

.field private payCurrency:Ljava/lang/String;

.field private productType:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private provideMes:Ljava/lang/String;

.field private provideSdkRet:Ljava/lang/String;

.field private verifyRes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    .line 52
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    .line 57
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    .line 58
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    .line 226
    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayModel$1;-><init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mOrderObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    .line 298
    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayModel$2;-><init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyInner(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyOuterLoginErr()V

    return-void
.end method

.method static synthetic access$1200(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyInner(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/centauri/oversea/business/pay/CTIPayModel;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    return p1
.end method

.method static synthetic access$202(Lcom/centauri/oversea/business/pay/CTIPayModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$302(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->currency_amt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCurrency:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->offer_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    return-object p0
.end method

.method private notifyInner(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 382
    iput p1, v0, Landroid/os/Message;->what:I

    .line 383
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 384
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 386
    const-string p2, "msgErrCode"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 388
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyInner(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private notifyInner(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 369
    iput p1, v0, Landroid/os/Message;->what:I

    .line 370
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 372
    const-string p3, "msgErrCode"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 374
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyInner(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private notifyOuterLoginErr()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyOuterLoginErr()V

    :cond_0
    return-void
.end method

.method private notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/XCallback;->notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyAmt()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->currency_amt:Ljava/lang/String;

    return-object v0
.end method

.method public getMInfo()Lorg/json/JSONObject;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNum()I
    .locals 3

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNum(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPayModel"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getOfferName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->offer_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayInfo()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayReceipt;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    return-object v0
.end method

.method public getProvideRetMes()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideSdkRet()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->build()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-object v0
.end method

.method public getVerifyRes()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    return-object v0
.end method

.method public isErrorConsume()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    return v0
.end method

.method public order(Ljava/lang/Object;)V
    .locals 14

    .line 63
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_3

    .line 66
    iget-boolean v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    const-string v1, "1"

    move-object v9, v1

    .line 68
    :goto_0
    const-string/jumbo v1, "unimonth"

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getServiceCode()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    if-nez p1, :cond_2

    .line 73
    iput-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    goto :goto_2

    .line 76
    :cond_2
    check-cast p1, Lcom/centauri/oversea/data/CTIPayInfo;

    .line 77
    iget-object v2, p1, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lcom/centauri/oversea/data/CTIPayInfo;->channelExtra:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->channelExtra:Ljava/lang/String;

    :goto_2
    move-object v10, v2

    .line 82
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v3

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    .line 83
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    .line 84
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getCurrencyType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    iget-object v7, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    iget-object v11, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->channelExtra:Ljava/lang/String;

    iget-object v12, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iget-object v13, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mOrderObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    .line 82
    invoke-virtual/range {v3 .. v13}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    :cond_3
    return-void
.end method

.method public provide(Ljava/lang/Object;)V
    .locals 12

    .line 100
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setProvideReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V

    .line 103
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v2, p1, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    .line 106
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v6, p1, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v8, p1, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iget-object v9, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iget-object v10, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v11, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 103
    invoke-virtual/range {v0 .. v11}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->provide(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/data/CTIPayReceipt;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    .line 218
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    .line 219
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    .line 220
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&payChannel="

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 358
    const-string p1, "&productType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string p2, "sdk.oversea.channel.payresult"

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p1, p2, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lcom/centauri/oversea/business/pay/XCallback;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    return-void
.end method

.method public setHasGoodsList(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    return-void
.end method

.method public setProvideReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    return-void
.end method

.method public setRequest(Lcom/centauri/oversea/newapi/params/BillingFlowParams;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-void
.end method
