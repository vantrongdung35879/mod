.class public Lcom/centauri/oversea/newnetwork/model/CTIMpReq;
.super Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.source "CTIMpReq.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APMpReq"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructParam()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    const-string v1, "APMpReq"

    if-nez v0, :cond_0

    .line 59
    const-string v0, "Request is null !!!"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->constructParam()V

    .line 65
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v2, "openid"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v2, "pf"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v2, "pfkey"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "format"

    const-string v2, "json"

    invoke-virtual {p0, v0, v2}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getNetToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->drmInfo:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, "drm_info"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drm_info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v1, "openkey"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string/jumbo v1, "zoneid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v1, "session_type"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "sdkversion"

    const-string v1, "4.05.422a"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "key_len"

    const-string v1, "newkey"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->readKeyTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_time"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->reserve:Ljava/lang/String;

    const-string v1, "extend"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->currency:Ljava/lang/String;

    const-string v1, "currency_type"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->country:Ljava/lang/String;

    const-string v1, "country"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->payChannel:Ljava/lang/String;

    const-string v1, "pay_method"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->mType:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/GDPR;->getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xg_mid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected initUrl()V
    .locals 5

    .line 30
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    .line 31
    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/v1/r/%s/mobile_mp_info"

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHttpRequestKey(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIMpReq;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->httpRequestKey:Ljava/lang/String;

    return-object p0
.end method

.method public setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIMpReq;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    return-object p0
.end method

.method public setUp()Lcom/centauri/oversea/newnetwork/model/CTIMpReq;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->initUrl()V

    .line 52
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->constructParam()V

    return-object p0
.end method
