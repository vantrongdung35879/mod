.class public Lcom/centauri/oversea/newnetwork/http/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newnetwork/http/NetworkManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CMD_GET_IP_LIST:Ljava/lang/String; = "get_ip"

.field public static final CMD_GET_KEY:Ljava/lang/String; = "get_key"

.field public static final CMD_INFO:Ljava/lang/String; = "info"

.field public static final CMD_ORDER:Ljava/lang/String; = "order"

.field public static final CMD_PROVIDE:Ljava/lang/String; = "provide"

.field public static final CMD_TAG:Ljava/lang/String; = "overseas_cmd"

.field public static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->initNewNetworkModule()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->reportTime(Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    return-void
.end method

.method private initNewNetworkModule()V
    .locals 2

    .line 82
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/http/NewNetLog;-><init>()V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->setLogEnable(Z)V

    .line 85
    new-instance v1, Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-direct {v1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;-><init>(Lcom/centauri/http/core/IHttpLog;)V

    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    .line 86
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getBaseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setBaseKey(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->getIV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setIV(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setContext(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIFrontGetIPInterceptor;

    invoke-direct {v1}, Lcom/centauri/oversea/newnetwork/model/CTIFrontGetIPInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 90
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIEndGetIPInterceptor;

    invoke-direct {v1}, Lcom/centauri/oversea/newnetwork/model/CTIEndGetIPInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 91
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;

    invoke-direct {v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;-><init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V

    .line 93
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setCentauriCommonInfoGetter(Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;)V

    .line 116
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/NetworkManager$2;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$2;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setDataReportNotifier(Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;)V

    .line 147
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;

    invoke-direct {v1}, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V

    .line 148
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setup()V

    return-void
.end method

.method private reportTime(Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V
    .locals 5

    .line 502
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    .line 503
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 506
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    const-string/jumbo v1, "|"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 509
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&times="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/centauri/oversea/comm/MTimer;->duration(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "&retCode="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 509
    const-string p2, "sdk.comm.net.time"

    invoke-virtual {v1, p2, p1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;
    .locals 1

    .line 76
    sget-object v0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$InstanceHolder;->instance:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    return-object v0
.end method


# virtual methods
.method public cancelPreRequest()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->cancelAllRequest()V

    return-void
.end method

.method public dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 6

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->getLogRecord(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkManager"

    invoke-static {v4, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v3, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;

    invoke-direct {v3}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;-><init>()V

    .line 526
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->setData(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;

    move-result-object v3

    .line 527
    invoke-virtual {v3}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;

    move-result-object v3

    .line 528
    invoke-virtual {v3}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->needReport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    const-string v4, "isNeedReport"

    const-string v5, "needreport"

    invoke-static {v4, v5}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v5, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;

    invoke-direct {v5, p1}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {v4, v3, v5}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public detectTaskQuery(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 2

    .line 537
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;-><init>()V

    .line 538
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;->setUp()V

    .line 539
    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;

    invoke-direct {v1, p1}, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 540
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p1, v0, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public getCryToKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCryptKeyFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMall(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 3

    .line 484
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;-><init>()V

    const-string v1, "info"

    .line 485
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCmd(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v2, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    invoke-direct {v2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 2

    .line 384
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;-><init>()V

    const-string v1, "order"

    .line 385
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCmd(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p5}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setServiceCode(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p5

    .line 387
    invoke-virtual {p5, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 388
    invoke-virtual {p2, p3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setPayCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 389
    invoke-virtual {p2, p7}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setAmt(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 390
    invoke-virtual {p2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setPayMethod(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 391
    invoke-virtual {p1, p8}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setChannelExtra(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 392
    invoke-virtual {p1, p4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setPayAmount(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 393
    invoke-virtual {p1, p6}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setBuyQuantity(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    const/4 p2, 0x0

    .line 394
    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setIsReProvide(Z)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 395
    invoke-static {p9}, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->switchParams(Ljava/lang/Object;)Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance p3, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    new-instance p4, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;

    invoke-direct {p4, p0, p10}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-direct {p3, p4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {p2, p1, p3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public initReq(Lcom/centauri/oversea/newapi/params/InitParams;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V
    .locals 2

    .line 211
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;-><init>()V

    .line 212
    invoke-static {p1}, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->switchParams(Ljava/lang/Object;)Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V

    .line 243
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    invoke-direct {v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public introPriceReq(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/http/centaurihttp/ICTIHttpCallback;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    new-instance p2, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;

    invoke-direct {p2}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;-><init>()V

    .line 198
    invoke-virtual {p2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->setChannel(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;

    move-result-object p1

    .line 199
    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->setQueryProductList(Ljava/util/List;)Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;

    invoke-direct {v0, p3}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {p2, p1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public needChangeKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    const-string p1, "NetworkManager"

    const-string p2, "needChangeKey: commonInfoGetter = null"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_0
    invoke-interface {v0}, Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->needChangeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public net(Ljava/lang/String;Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 3

    .line 311
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;-><init>()V

    .line 312
    invoke-static {p2}, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->switchParams(Ljava/lang/Object;)Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIMpReq;

    move-result-object p2

    .line 313
    invoke-virtual {p2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->setHttpRequestKey(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIMpReq;

    move-result-object p2

    .line 314
    invoke-virtual {p2}, Lcom/centauri/oversea/newnetwork/model/CTIMpReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIMpReq;

    move-result-object p2

    .line 316
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;

    new-instance v2, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;

    invoke-direct {v2, p0, p3, p1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public provide(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/data/CTIPayReceipt;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 2

    .line 439
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;-><init>()V

    const-string v1, "provide"

    .line 440
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCmd(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 442
    invoke-virtual {p2, p3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setPayMethod(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 443
    invoke-virtual {p2, p5}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setBillNO(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 444
    invoke-virtual {p2, p6}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setReceipt(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 445
    invoke-virtual {p2, p7}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setReceiptOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 446
    invoke-virtual {p2, p8}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setReceiptSign(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 447
    invoke-virtual {p2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setIsReProvide(Z)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 448
    invoke-virtual {p1, p4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setNum(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 449
    invoke-static {p9}, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->switchParams(Ljava/lang/Object;)Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 450
    invoke-virtual {p1, p10}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setProvideParams(Lcom/centauri/oversea/data/CTIPayReceipt;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 454
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance p3, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    new-instance p4, Lcom/centauri/oversea/newnetwork/http/NetworkManager$7;

    invoke-direct {p4, p0, p11}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$7;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-direct {p3, p4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {p2, p1, p3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public readKeyTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getKeyTimeFromRam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method

.method public saveKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 155
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, p2, p1, p3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setSecretKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, p2, p1, p4}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setCryptKeyToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v1, p2, p1, p5}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->setKeyTimeToRam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    const-string v7, "4.05.422a"

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->saveSecretKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->saveCryptKeyToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->saveKeyTimeToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string p1, "NetworkManager"

    const-string p2, "save key success."

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSecInfo(Ljava/lang/String;Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 3

    .line 254
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;-><init>()V

    const-string v1, "info"

    .line 255
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setCmd(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object v0

    .line 256
    invoke-static {p2}, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->switchParams(Ljava/lang/Object;)Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 257
    invoke-virtual {p2, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setInfoType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    move-result-object p2

    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    new-instance v1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    new-instance v2, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;

    invoke-direct {v2, p0, p3, p1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;-><init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestAsync(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    return-void
.end method
