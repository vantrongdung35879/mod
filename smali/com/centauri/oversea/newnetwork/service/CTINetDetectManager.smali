.class public Lcom/centauri/oversea/newnetwork/service/CTINetDetectManager;
.super Ljava/lang/Object;
.source "CTINetDetectManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startService(Landroid/content/Context;Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 4

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v2, "offerid"

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "openid"

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getIDCInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idcInfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getGoodsZoneID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "goodsZoneid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getOpenKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pf"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPfKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pfKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "env"

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "idc"

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getIDC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "zoneid"

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getZoneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-wide v2, p1, Lcom/centauri/oversea/comm/GlobalData;->heartBeat:J

    const-string p1, "heartbeat"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    const-string p1, "gdprSwitch"

    sget-boolean v2, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
