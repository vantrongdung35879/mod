.class public Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
.super Ljava/lang/Object;
.source "CTIPayBaseChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;
    }
.end annotation


# static fields
.field public static final MSG_KEY:Ljava/lang/String; = "msg_key"

.field public static final MSG_STR_OBJ:Ljava/lang/String; = "msg_key"

.field public static final ORDER_KEY:Ljava/lang/String; = "order_key"

.field public static final REQUEST_CODE:I = 0x3e9

.field public static final RET_OK:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

.field protected dropMessage:Z

.field protected mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

.field protected mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    .line 36
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    .line 253
    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;-><init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackLoginError()V

    return-void
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->showLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->handleCommError(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackSuccess(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method

.method private callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    .line 287
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 288
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    .line 295
    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 296
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackLoginError()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackLoginError()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackSuccess(I)V
    .locals 4

    .line 303
    new-instance v0, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    .line 305
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 306
    const-string v2, "channel"

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v2, "num"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const-string p1, "billNo"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getPayInfo()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    const-string v2, "info"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/oversea/comm/CTIBase64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->setExtra(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->needShowSucc()Z

    move-result p1

    iput-boolean p1, v0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    .line 330
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 331
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private handleCommError(Landroid/os/Message;)V
    .locals 6

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 414
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 419
    :goto_0
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v2, :cond_1

    .line 420
    invoke-interface {v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/centauri/oversea/comm/CTICommMethod;->isConfigShowErrDialog(Landroid/content/Context;)Z

    move-result v2

    .line 421
    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showErrDialog is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 424
    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "msgErrCode"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "unipay_pay_error_tip"

    invoke-static {v0, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {v2, v1, p1, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 430
    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {v2, v1, p1, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto :goto_2

    .line 432
    :cond_3
    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {v2, v1, p1, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :goto_2
    return-void
.end method

.method private showLoading()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showWaitDialog()V

    :cond_0
    return-void
.end method

.method private wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;->setExtra(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrapperResponse exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    return-object p1
.end method

.method protected dispose()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->dismissWaitDialog()V

    :cond_0
    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    return-void
.end method

.method public getOrderKey()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getOrderKey()I

    move-result v0

    return v0
.end method

.method protected getProductType()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, ""

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hasGoodsList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbcb

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public init(Lcom/centauri/oversea/business/pay/CTIPayBaseView;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    .line 42
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 43
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->getProductType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setProductType(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->hasGoodsList()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setHasGoodsList(Z)V

    .line 45
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setRequest(Lcom/centauri/oversea/newapi/params/BillingFlowParams;)V

    .line 47
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;-><init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setCallback(Lcom/centauri/oversea/business/pay/XCallback;)V

    return-void
.end method

.method protected isSdkProvide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needOrder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needShowSucc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public postPay()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbd4

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public prePay()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->release()V

    .line 260
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 262
    :cond_0
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    return-void
.end method

.method public startPay()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    .line 83
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbca

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public startPayCheckEnv()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->isTestEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showSandboxDialog()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->startPay()V

    :goto_0
    return-void
.end method
