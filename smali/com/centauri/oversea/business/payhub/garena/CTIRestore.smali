.class public Lcom/centauri/oversea/business/payhub/garena/CTIRestore;
.super Lcom/centauri/oversea/business/CTIBaseRestore;
.source "CTIRestore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GrnCtiRestore"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIBaseRestore;-><init>()V

    return-void
.end method


# virtual methods
.method public getPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
    .locals 2

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayReceipt;-><init>()V

    .line 57
    const-string v1, "os_garena"

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->payChannel:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p2, p1}, Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;->callback(Ljava/util/List;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 46
    invoke-interface {p2, p1}, Lcom/centauri/oversea/newapi/response/ICallback;->callback(I)V

    return-void
.end method

.method public postProvide(Ljava/util/List;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/ICTICallback;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 66
    const-string p1, "ScanGoogleInventory"

    const-string v1, "session invalide"

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p1, "ScanGoogleInventory login session invalide"

    invoke-interface {p2, v0, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "GrnCtiRestore"

    if-eqz p1, :cond_1

    .line 72
    const-string p1, "GGPlatform.getAppId() is null , please login"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string p1, "appid is null"

    invoke-interface {p2, v0, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void

    .line 77
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "serverId = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "roleid ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/garena/CTIRestore;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;

    invoke-direct {v7, p0, p2}, Lcom/centauri/oversea/business/payhub/garena/CTIRestore$1;-><init>(Lcom/centauri/oversea/business/payhub/garena/CTIRestore;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    invoke-static/range {v2 .. v7}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->scanGoogleInAppPurchaseInventory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/garena/pay/android/GoogleIapInventoryScanCallback;)V

    return-void

    .line 78
    :cond_3
    :goto_0
    const-string p1, "serverId or roleId is null , init must give it value"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {p2, v0, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void
.end method
