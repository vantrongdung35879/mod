.class public Lcom/centauri/oversea/business/pay/CTIProxyActivity;
.super Landroid/app/Activity;
.source "CTIProxyActivity.java"

# interfaces
.implements Lcom/centauri/oversea/business/pay/CTIPayBaseView;


# static fields
.field public static final TAG:Ljava/lang/String; = "CTIProxyActivity"


# instance fields
.field private mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

.field private mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

.field private orderKey:I

.field private uiManager:Lcom/centauri/oversea/comm/MUIManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    .line 29
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    .line 30
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    return p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/comm/MUIManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    return-object p0
.end method

.method private createChannel()Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/business/CTIPayManager;->channelHelper()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createPayChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object v0

    iget v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    invoke-virtual {v0, v1, p1}, Lcom/centauri/oversea/business/CTIPayManager;->callBackError(ILcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 106
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->finish()V

    return-void
.end method

.method public callBackLoginError()V
    .locals 2

    .line 99
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object v0

    iget v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/CTIPayManager;->callBackLoginError(I)V

    .line 100
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->finish()V

    return-void
.end method

.method public callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissWaitDialog()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MUIManager;->dismissWaitDialog()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    return-object v0
.end method

.method public getOrderKey()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    const-string v0, "CTIProxyActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTIUICommMethod;->clearCoverForStatus(Landroid/view/Window;Z)V

    .line 38
    const-string/jumbo p1, "start_proxy_activity"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 39
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "order_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    .line 40
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object p1

    iget v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/CTIPayManager;->getOrder(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Lcom/centauri/oversea/comm/MUIManager;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/comm/MUIManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    .line 44
    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->createChannel()Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->init(Lcom/centauri/oversea/business/pay/CTIPayBaseView;)V

    .line 46
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->startPayCheckEnv()V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const-string v0, ""

    const-string v1, "Wrong assign pay channel."

    const/4 v2, -0x3

    invoke-direct {p1, v2, v0, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 54
    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string v0, "sdk.oversea.enter"

    const-string v1, "name=enterPay"

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MUIManager;->release()V

    .line 77
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    .line 80
    :cond_0
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    .line 81
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->release()V

    .line 83
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    .line 86
    :cond_1
    const-string v0, "CTIProxyActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 64
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 p2, -0x2

    invoke-direct {p1, p2}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gwallet"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "gw_showdialog"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 206
    const-string v0, "gw_first_screen_showdialog"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    :cond_0
    return-void
.end method

.method public showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {v0, p1, v1}, Lcom/centauri/oversea/comm/MUIManager;->showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    :cond_0
    return-void
.end method

.method public showSandboxDialog()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/centauri/oversea/comm/MUIManager;->showSandboxDialog(Lcom/centauri/oversea/comm/MUIManager$MNotifier;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    :cond_0
    return-void
.end method

.method public showWaitDialog()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MUIManager;->showLoading()V

    :cond_0
    return-void
.end method
