.class public final Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIEncodeParameterHandler.java"


# instance fields
.field private final networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method

.method private handleEncodeParameters(Lcom/centauri/http/core/Request;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v0, :cond_2

    return-void

    .line 46
    :cond_2
    check-cast p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 49
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->hasEncodeParameters()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 56
    :cond_3
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->tryGetEncodeKeyTime(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->tryGetEncodeKey(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    move-result-object v1

    .line 60
    iget-object v2, v1, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 64
    :cond_4
    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p1, v2, v1, v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->doEncodeParameters(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIEncodeKey;Ljava/lang/String;)V

    return-void
.end method

.method private tryGetEncodeKey(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIEncodeKey;
    .locals 6

    .line 74
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    invoke-direct {v0}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 84
    :cond_1
    invoke-virtual {v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getBaseKey()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "base"

    iput-object v2, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->setEKey(Ljava/lang/String;)V

    .line 90
    iget-boolean v1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needUseBaseKeyToEncode:Z

    if-eqz v1, :cond_2

    return-object v0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 102
    :cond_3
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    .line 108
    invoke-virtual {v2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->isCanUseCryptoKeyToEncodeGetKeyRequest()Z

    move-result v2

    .line 110
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v0

    .line 115
    :cond_5
    iget-object v4, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v4, v1, v3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getSecretKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 117
    const-string v5, "secret"

    iput-object v5, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v4}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->setEKey(Ljava/lang/String;)V

    .line 121
    :cond_6
    iget-object v4, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v4, v1, v3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCryptKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v3, "crypt"

    if-eqz v2, :cond_7

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 127
    iput-object v3, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->setEKey(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_7
    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    .line 137
    invoke-virtual {v2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->isRequestInstanceAGetKeyRequest(Lcom/centauri/http/core/Request;)Z

    move-result p1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    .line 139
    iput-object v3, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->setEKey(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-object v0
.end method

.method private tryGetEncodeKeyTime(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Ljava/lang/String;
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 178
    :cond_3
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v2, v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeyTimeFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    return-object p1
.end method


# virtual methods
.method public onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpStart(Lcom/centauri/http/core/Request;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;->handleEncodeParameters(Lcom/centauri/http/core/Request;)V

    return-void
.end method
