.class public Lcom/centauri/http/centaurihttp/CTINetworkManager;
.super Ljava/lang/Object;
.source "CTINetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;,
        Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;,
        Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;,
        Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;
    }
.end annotation


# instance fields
.field private baseKey:Ljava/lang/String;

.field private canUseCryptoKeyToEncodeGetKeyRequest:Z

.field private centauriCommonInfoGetter:Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

.field private final centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

.field private connectTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;

.field private context:Landroid/content/Context;

.field private customCert:Ljava/lang/String;

.field private dataReportNotifier:Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;

.field private getKeyRequestGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;

.field private getKeySuccessHandler:Lcom/centauri/http/centaurihttp/ICTIGetKeySuccessHandler;

.field private hasSetUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iapipMeasure:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;

.field private ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

.field private mIV:Ljava/lang/String;

.field private needHttpsCustomCert:Z

.field private final networkManager:Lcom/centauri/http/core/NetworkManager;

.field private readTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;


# direct methods
.method public constructor <init>(Lcom/centauri/http/core/IHttpLog;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->hasSetUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needHttpsCustomCert:Z

    .line 59
    iput-boolean v1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->canUseCryptoKeyToEncodeGetKeyRequest:Z

    .line 62
    new-instance v0, Lcom/centauri/http/core/NetworkManager;

    invoke-direct {v0, p1}, Lcom/centauri/http/core/NetworkManager;-><init>(Lcom/centauri/http/core/IHttpLog;)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    .line 63
    new-instance p1, Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-direct {p1}, Lcom/centauri/http/centaurikey/CTIKeyManager;-><init>()V

    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    return-void
.end method

.method private setDefaultConnectTimeout(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x4e20

    if-gt p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    iput p1, v0, Lcom/centauri/http/core/NetworkManager;->defaultConnectTimeout:I

    :cond_0
    return-void
.end method

.method private setDefaultReadTimeout(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x4e20

    if-gt p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    iput p1, v0, Lcom/centauri/http/core/NetworkManager;->defaultReadTimeout:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V

    return-void
.end method

.method public addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    :cond_0
    return-void
.end method

.method public addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V

    return-void
.end method

.method public cancelAllRequest()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0}, Lcom/centauri/http/core/NetworkManager;->cancelAllRequest()V

    return-void
.end method

.method public cancelRequestByName(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->cancelRequestByName(Ljava/lang/String;)V

    return-void
.end method

.method public clearAllKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->clearAllKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearCryptKeyAndKeyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->clearCryptKeyAndKeyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->setCentauriHttpRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->newCall(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/centauri/http/core/Call;->enqueue(Lcom/centauri/http/core/Callback;)V

    return-void
.end method

.method executeRequestAsyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->newCall(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/centauri/http/core/Call;->enqueueWithNoCustomInterceptor(Lcom/centauri/http/core/Callback;)V

    :cond_0
    return-void
.end method

.method public executeRequestSyncWithAllCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->newCall(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Call;

    move-result-object p1

    invoke-interface {p1}, Lcom/centauri/http/core/Call;->executeWithAllCustomInterceptor()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1
.end method

.method public executeRequestSyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/centauri/http/core/NetworkManager;->newCall(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Call;

    move-result-object p1

    invoke-interface {p1}, Lcom/centauri/http/core/Call;->executeWithNoCustomInterceptor()Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1
.end method

.method getBaseKey()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->baseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriCommonInfoGetter:Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    return-object v0
.end method

.method getConnectTimeout()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->connectTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;->getConnectTimeout()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCryptKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurikey/CTIKeyManager;->getCryptoKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeyRequestGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIV()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->mIV:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTimeFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurikey/CTIKeyManager;->getCryptKeyTimeFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getReadTimeout()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->readTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;->getReadTimeOut()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSecretKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurikey/CTIKeyManager;->getSecretKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isCanUseCryptoKeyToEncodeGetKeyRequest()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->canUseCryptoKeyToEncodeGetKeyRequest:Z

    return v0
.end method

.method public isRequestInstanceAGetKeyRequest(Lcom/centauri/http/core/Request;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 325
    :cond_0
    instance-of v1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v1, :cond_1

    return v0

    .line 329
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 331
    invoke-virtual {p0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getGetKeyRequest(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 336
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 341
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public loadKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->loadKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needChangeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->needChangeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method notifyGetKeySuccess(Lcom/centauri/http/core/Response;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeySuccessHandler:Lcom/centauri/http/centaurihttp/ICTIGetKeySuccessHandler;

    if-eqz v0, :cond_2

    .line 407
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/ICTIGetKeySuccessHandler;->onGetKeySuccess(Lcom/centauri/http/core/Response;)V

    :cond_2
    return-void
.end method

.method notifyNetworkFailure(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->dataReportNotifier:Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0, p1, p2}, Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;->onNetworkFailure(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    :cond_0
    return-void
.end method

.method notifyNetworkSuccess(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->dataReportNotifier:Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p1, p2}, Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;->onNetworkSuccess(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    :cond_0
    return-void
.end method

.method public readCryptKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->readCryptKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKeyTimeFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->readCryptKeyTimeFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readSecretKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/centauri/http/centaurikey/CTIKeyManager;->readSecretKeyFromDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveCryptKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/centauri/http/centaurikey/CTIKeyManager;->saveCryptKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveKeyTimeToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 554
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/centauri/http/centaurikey/CTIKeyManager;->saveCryptKeyTimeToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSecretKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 527
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/centauri/http/centaurikey/CTIKeyManager;->saveSecretKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBaseKey(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->baseKey:Ljava/lang/String;

    return-void
.end method

.method public setCanUseCryptoKeyToEncodeGetKeyRequest(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->canUseCryptoKeyToEncodeGetKeyRequest:Z

    return-void
.end method

.method public setCentauriCommonInfoGetter(Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriCommonInfoGetter:Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    return-void
.end method

.method public setCentauriIPChecker(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    return-void
.end method

.method public setConnectTimeoutGetter(Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->connectTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->context:Landroid/content/Context;

    return-void
.end method

.method public setCryptKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/centauri/http/centaurikey/CTIKeyManager;->setCryptKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomCert(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->customCert:Ljava/lang/String;

    return-void
.end method

.method public setDataReportNotifier(Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->dataReportNotifier:Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;

    return-void
.end method

.method public setGetKeyRequestGetter(Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeyRequestGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPGetKeyRequestGetter;

    return-void
.end method

.method public setGetKeySuccessHandler(Lcom/centauri/http/centaurihttp/ICTIGetKeySuccessHandler;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeySuccessHandler:Lcom/centauri/http/centaurihttp/ICTIGetKeySuccessHandler;

    return-void
.end method

.method public setIPMeasure(Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->iapipMeasure:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;

    return-void
.end method

.method public setIV(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->mIV:Ljava/lang/String;

    return-void
.end method

.method public setKeyTimeToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/centauri/http/centaurikey/CTIKeyManager;->setCryptKeyTimeToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedHttpsCustomCert(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needHttpsCustomCert:Z

    return-void
.end method

.method public setReadTimeoutGetter(Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->readTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;

    return-void
.end method

.method public setSecretKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 514
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->centauriKeyManager:Lcom/centauri/http/centaurikey/CTIKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/centauri/http/centaurikey/CTIKeyManager;->setSecretKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setup()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->hasSetUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->setDefaultMaxRetryTimes(I)V

    .line 139
    iget-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needHttpsCustomCert:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;

    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->customCert:Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    invoke-direct {v1, v2, v3}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;-><init>(Ljava/lang/String;Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 144
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTITimeoutHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTITimeoutHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 147
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIHttpResponseHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIHttpResponseHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 149
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 150
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 151
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIRetryHostHandler;

    invoke-direct {v1}, Lcom/centauri/http/centaurihttp/CTIRetryHostHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 152
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIEncodeParameterHandler;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 159
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 162
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIFrontGetKeyInterceptor;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 164
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->networkManager:Lcom/centauri/http/core/NetworkManager;

    new-instance v1, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;

    invoke-direct {v1, p0}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/NetworkManager;->addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 167
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/centauri/http/utils/SPUtils;->init(Landroid/content/Context;)V

    .line 168
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->ACP_MODEL:Ljava/lang/String;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->ALGORITHM_MODEL:Ljava/lang/String;

    const-string v1, "AES"

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateConnectAndReadTimeout()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->connectTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPConnectTimeoutGetter;->getConnectTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setDefaultConnectTimeout(I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->readTimeoutGetter:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPReadTimeoutGetter;->getReadTimeOut()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setDefaultReadTimeout(I)V

    :cond_1
    return-void
.end method

.method updateIPTimes(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTINetworkManager;->iapipMeasure:Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager$IAPIPMeasure;->updateIPTimes(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
