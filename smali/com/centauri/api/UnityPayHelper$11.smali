.class Lcom/centauri/api/UnityPayHelper$11;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Lcom/centauri/oversea/api/ICTICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_Pay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 6

    .line 548
    const-string v0, "100"

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/centauri/api/UnityPayHelper;->access$500(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getInnerCode()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 562
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 563
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 571
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "retCode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "innerCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resultMsg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UnityPayHelper"

    invoke-static {v4, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v1, Lcom/centauri/api/UnityResponse;

    invoke-direct {v1}, Lcom/centauri/api/UnityResponse;-><init>()V

    .line 574
    iput-object v0, v1, Lcom/centauri/api/UnityResponse;->resultCode:Ljava/lang/String;

    .line 575
    iput-object v3, v1, Lcom/centauri/api/UnityResponse;->resultInerCode:Ljava/lang/String;

    .line 576
    iput-object v2, v1, Lcom/centauri/api/UnityResponse;->resultMsg:Ljava/lang/String;

    .line 577
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/centauri/api/UnityResponse;->extra:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getAPPExtends()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/centauri/api/UnityResponse;->appExtends:Ljava/lang/String;

    .line 581
    const-string p1, "CentauriPayCallback"

    invoke-virtual {v1}, Lcom/centauri/api/UnityResponse;->toJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentauriPay.CallBackUtils"

    invoke-static {v1, p1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriPayNeedLogin()V
    .locals 3

    .line 541
    const-string v0, "UnityPayHelper"

    const-string v1, "CTIPayNeedLogin callback"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "CentauriLoginExpiredCallback"

    const-string v1, ""

    const-string v2, "CentauriPay.CallBackUtils"

    invoke-static {v2, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
