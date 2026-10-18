.class public Lcom/centauri/oversea/business/CTIPayManager;
.super Ljava/lang/Object;
.source "CTIPayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/CTIPayManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final ORDER_KEY:Ljava/lang/String; = "order_key"

.field public static final TAG:Ljava/lang/String; = "APPayManager"


# instance fields
.field private isBRRegister:Z

.field private mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

.field private mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

.field private mOrders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/centauri/oversea/business/pay/CTIOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

.field private promoRestoreKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private restores:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/centauri/oversea/data/RestoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    .line 47
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->isBRRegister:Z

    .line 52
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mRestoreCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    .line 53
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/business/CTIPayManager$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/CTIPayManager;)Lcom/centauri/oversea/newapi/response/ICTICallback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mRestoreCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/centauri/oversea/business/CTIPayManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/centauri/oversea/business/CTIPayManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/centauri/oversea/business/CTIPayManager;->isBRRegister:Z

    return p0
.end method

.method static synthetic access$400(Lcom/centauri/oversea/business/CTIPayManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;->registerBR()V

    return-void
.end method

.method static synthetic access$500(Lcom/centauri/oversea/business/CTIPayManager;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;->isAllPayFinished()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/centauri/oversea/business/CTIPayManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;->triggerRestore()V

    return-void
.end method

.method private generateOrderKey()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static instance()Lcom/centauri/oversea/business/CTIPayManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/centauri/oversea/business/CTIPayManager$InstanceHolder;->instance:Lcom/centauri/oversea/business/CTIPayManager;

    return-object v0
.end method

.method private isAllPayFinished()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private registerBR()V
    .locals 4

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->isBRRegister:Z

    .line 285
    new-instance v0, Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    new-instance v1, Lcom/centauri/oversea/business/CTIPayManager$2;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/CTIPayManager$2;-><init>(Lcom/centauri/oversea/business/CTIPayManager;)V

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/IabBroadcastReceiver;-><init>(Lcom/centauri/oversea/comm/IabBroadcastReceiver$IabBroadcastListener;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    .line 310
    const-string v0, "APPayManager"

    const-string v1, "Register Receiver."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 313
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private reportData(ILjava/lang/String;)V
    .locals 3

    .line 383
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name=exitPay&retCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&retMsg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.exit"

    invoke-virtual {v0, p2, p1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    .line 389
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/centauri/oversea/comm/GDPR;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 388
    const-string v0, "sdk.oversea.deviceinfo"

    invoke-virtual {p1, v0, p2}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object p1

    new-instance p2, Lcom/centauri/oversea/business/CTIPayManager$3;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/business/CTIPayManager$3;-><init>(Lcom/centauri/oversea/business/CTIPayManager;)V

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void
.end method

.method private triggerRestore()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/RestoreItem;

    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start reProvide."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPayManager"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, v0, Lcom/centauri/oversea/data/RestoreItem;->restore:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIPayManager;->seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    :cond_0
    return-void
.end method

.method private updateOrders(I)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callBackError(ILcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    .line 186
    const-string v0, "APPayManager"

    const-string v1, "callBackError()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->getOrder(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getAppExtends()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;->setAppExtends(Ljava/lang/String;)V

    .line 192
    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0, p2}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->updateOrders(I)V

    .line 196
    :cond_0
    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/CTIPayManager;->reportData(ILjava/lang/String;)V

    return-void
.end method

.method public callBackLoginError(I)V
    .locals 2

    .line 168
    const-string v0, "APPayManager"

    const-string v1, "callBackLoginError()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->getOrder(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayNeedLogin()V

    .line 173
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->updateOrders(I)V

    :cond_0
    const/4 p1, -0x1

    .line 176
    const-string v0, "CentauriPayNeedLogin"

    invoke-direct {p0, p1, v0}, Lcom/centauri/oversea/business/CTIPayManager;->reportData(ILjava/lang/String;)V

    return-void
.end method

.method public callBackSuccess(ILcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 4

    .line 206
    const-string v0, "callBackSuccess()"

    const-string v1, "APPayManager"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->getOrder(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "order: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getAppExtends()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;->setAppExtends(Ljava/lang/String;)V

    .line 213
    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0, p2}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIPayManager;->updateOrders(I)V

    .line 217
    :cond_0
    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/CTIPayManager;->reportData(ILjava/lang/String;)V

    return-void
.end method

.method public channelHelper()Lcom/centauri/oversea/business/pay/ChannelHelper;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-direct {v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    return-object v0
.end method

.method public clearPurchase(Landroid/content/Context;)V
    .locals 2

    .line 320
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/business/CTIPayManager;->channelHelper()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    const-string v1, "gwallet"

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createProductInfo(Ljava/lang/String;)Lcom/centauri/oversea/business/IGetProduct;

    move-result-object v0

    .line 321
    invoke-interface {v0, p1}, Lcom/centauri/oversea/business/IGetProduct;->clearPurchase(Landroid/content/Context;)V

    return-void
.end method

.method public getOrder(I)Lcom/centauri/oversea/business/pay/CTIOrder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/business/pay/CTIOrder;

    return-object p1

    .line 158
    :cond_0
    const-string p1, "APPayManager"

    const-string v0, "getOrder(): order is null !!!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-direct {v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/centauri/oversea/business/CTIPayManager$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/CTIPayManager$1;-><init>(Lcom/centauri/oversea/business/CTIPayManager;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    :cond_2
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;->generateOrderKey()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->mOrders:Landroid/util/SparseArray;

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIOrder;

    invoke-direct {v2, p2, p3}, Lcom/centauri/oversea/business/pay/CTIOrder;-><init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object p3, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->isH5Channel(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 126
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p3, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v2, "OrderKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isLogEnable()Z

    move-result v0

    const-string v2, "LogEnable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string v0, "PayChannel"

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "debugUrl"

    sget-object v2, Lcom/centauri/oversea/TestConfig;->mWebViewUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->toMap()Ljava/util/HashMap;

    move-result-object p2

    .line 135
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v2, "offerId"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v2, "openId"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string/jumbo v2, "zoneId"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v2, "env"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    const-string v2, "idc"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "PayParams"

    invoke-static {p2}, Lcom/centauri/oversea/comm/CTITools;->map2Js(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_0
    const-string/jumbo p2, "start_proxy_activity"

    invoke-static {p2}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 145
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string p3, "order_key"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 8

    .line 228
    invoke-virtual {p0}, Lcom/centauri/oversea/business/CTIPayManager;->channelHelper()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;->restoreChannelList()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    const-string v2, "don\'t need reProvide."

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    .line 238
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    .line 245
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v4}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createRestoreChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/CTIBaseRestore;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 248
    iget-object v6, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    new-instance v7, Lcom/centauri/oversea/data/RestoreItem;

    invoke-direct {v7, v4, v5}, Lcom/centauri/oversea/data/RestoreItem;-><init>(Ljava/lang/String;Lcom/centauri/oversea/business/CTIBaseRestore;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Need restore channel: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APPayManager"

    invoke-static {v6, v5}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v4}, Lcom/centauri/oversea/business/pay/ChannelHelper;->isPromoCodeChannel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "BroadcastReceiver restore channel: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 261
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager;->mRestoreCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    .line 262
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIPayManager;->triggerRestore()V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 264
    invoke-interface {p1, v3, v2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 232
    invoke-interface {p1, v3, v2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public release()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 337
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->restores:Ljava/util/LinkedList;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->promoRestoreKeys:Ljava/util/ArrayList;

    .line 345
    :cond_1
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->mRestoreCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    .line 346
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->seriesCallBack:Lcom/centauri/oversea/newapi/response/ICTICallback;

    .line 347
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->mChannelHelper:Lcom/centauri/oversea/business/pay/ChannelHelper;

    .line 349
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    .line 351
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/centauri/oversea/business/CTIPayManager;->isBRRegister:Z

    .line 353
    iput-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager;->mIabBroadcastReceiver:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    .line 354
    const-string v0, "APPayManager"

    const-string v1, "UnRegister GooglePlay BroadcastReceiver."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
