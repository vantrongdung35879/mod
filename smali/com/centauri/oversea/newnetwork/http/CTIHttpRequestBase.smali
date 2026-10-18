.class public abstract Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.super Lcom/centauri/http/centaurihttp/CTIHttpRequest;
.source "CTIHttpRequestBase.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected cmd:Ljava/lang/String;

.field protected httpRequestKey:Ljava/lang/String;

.field protected request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->httpRequestKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->needFrontGetKeyInterceptor:Z

    .line 30
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->needEndGetKeyInterceptor:Z

    .line 31
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->refreshNetToken()V

    return-void
.end method


# virtual methods
.method public addGetKey()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "get_key"

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|get_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    .line 161
    :cond_1
    :goto_0
    const-string v0, "overseas_cmd"

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getBaseKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "get_key_type"

    const-string v1, "secret"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->changeVid:Ljava/lang/String;

    const-string/jumbo v1, "vid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructParam()V
    .locals 2

    .line 169
    const-string v0, "amode"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offer_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "overseas_cmd"

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodeKey()Ljava/lang/String;
    .locals 3

    .line 122
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->getCryToKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getEncodeKeyString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttpRequestKey()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->httpRequestKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    return-object v0
.end method

.method protected ifChangeKey()Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    const-string v2, "get_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->needChangeKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addGetKey()V

    return v1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " don\'t need change key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected initUrl()V
    .locals 5

    .line 37
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    const-string v2, "local_test"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/v1/r/%s/mobile_overseas_common"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "http"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https"

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "retry:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "HttpBase"

    invoke-static {v0, p4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, p2, :cond_0

    .line 67
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getRandomIp()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->isUseDomainFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->getIPListLength()I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_1

    .line 72
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getRandomIp()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 78
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 79
    invoke-virtual {p3, p1}, Lcom/centauri/http/core/Request;->setHost(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onHttpStart()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->onHttpStart()V

    .line 55
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getHttpUrl()Lcom/centauri/http/core/HttpURL;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/centauri/http/core/HttpURL;->host:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHttpStart"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/newnetwork/http/NetWorker;->getTimeOut(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->connectTimeout:I

    .line 58
    iget v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->connectTimeout:I

    iput v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->readTimeout:I

    return-void
.end method

.method protected setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->TAG:Ljava/lang/String;

    const-string v1, "Setting a empty http url suffix!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->TAG:Ljava/lang/String;

    const-string v1, "Setting a empty http url schema!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->isUseDomainFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getRandomIp()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    new-instance v1, Lcom/centauri/http/core/HttpURL;

    invoke-direct {v1, p1, v0}, Lcom/centauri/http/core/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p2, v1, Lcom/centauri/http/core/HttpURL;->suffix:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setURL(Lcom/centauri/http/core/HttpURL;)V

    .line 109
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->cmd:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requestUrl: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getFullURLString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
