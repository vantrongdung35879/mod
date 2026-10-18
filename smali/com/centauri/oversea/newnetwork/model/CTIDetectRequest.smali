.class public Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;
.super Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.source "CTIDetectRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructParam()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->constructParam()V

    .line 57
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offerid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string/jumbo v1, "zoneid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected ifChangeKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initUrl()V
    .locals 5

    .line 22
    sget-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    sget-object v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-le v1, v3, :cond_1

    .line 28
    sget-object v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    .line 29
    const-string v4, "http"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    .line 28
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string/jumbo v3, "test"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "/region"

    if-eqz v1, :cond_2

    .line 34
    new-instance v1, Lcom/centauri/http/core/HttpURL;

    invoke-direct {v1, v2, v0}, Lcom/centauri/http/core/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object v3, v1, Lcom/centauri/http/core/HttpURL;->suffix:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->setURL(Lcom/centauri/http/core/HttpURL;)V

    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Lcom/centauri/http/core/HttpURL;

    invoke-direct {v1, v2, v0}, Lcom/centauri/http/core/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object v3, v1, Lcom/centauri/http/core/HttpURL;->suffix:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->setURL(Lcom/centauri/http/core/HttpURL;)V

    :goto_0
    return-void
.end method

.method public onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 0

    return-void
.end method

.method public setUp()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->initUrl()V

    .line 47
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->constructParam()V

    return-void
.end method
