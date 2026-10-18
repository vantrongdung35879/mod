.class public Lcom/centauri/oversea/api/CTIPayAPI;
.super Ljava/lang/Object;
.source "CTIPayAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/api/CTIPayAPI$InstanceHolder;,
        Lcom/centauri/oversea/api/CTIPayAPI$MUILevel;
    }
.end annotation


# static fields
.field public static final CLOSE_ALL:I = 0x3

.field public static final CLOSE_LOADING:I = 0x1

.field public static final CLOSE_RESULT:I = 0x2

.field public static final SAVETYPE_GAME:I = 0x0

.field public static final SAVETYPE_GOODS:I = 0x1

.field public static final SAVETYPE_MONTH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CTIPayAPI"


# instance fields
.field private env:Ljava/lang/String;

.field private idc:Ljava/lang/String;

.field private idcInfo:Ljava/lang/String;

.field private logEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->env:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idc:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idcInfo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->logEnable:Z

    return-void
.end method

.method private CTIPayAPI()V
    .locals 0

    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/api/CTIPayAPI;
    .locals 1

    .line 61
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI$InstanceHolder;->access$000()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dataPersistence(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;)V
    .locals 1

    .line 293
    const-string p2, "initIdcInfo"

    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idcInfo:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/centauri/oversea/comm/CTISPTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string p2, "initEnv"

    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->env:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/centauri/oversea/comm/CTISPTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string p2, "initIdc"

    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idc:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/centauri/oversea/comm/CTISPTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deinit()V
    .locals 2

    .line 303
    const-string v0, "CTIPayAPI"

    const-string v1, "deinit()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->dispose()V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 125
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getEnv()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getEnv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;",
            ")V"
        }
    .end annotation

    .line 194
    const-string v0, "CTIPayAPI"

    const-string v1, "getIntroPriceInfo()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/api/CTIPayAPI$3;

    invoke-direct {v1, p0, p3}, Lcom/centauri/oversea/api/CTIPayAPI$3;-><init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    return-void
.end method

.method public getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;",
            ")V"
        }
    .end annotation

    .line 178
    const-string v0, "CTIPayAPI"

    const-string v1, "getProductInfo()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/api/CTIPayAPI$2;

    invoke-direct {v1, p0, p3}, Lcom/centauri/oversea/api/CTIPayAPI$2;-><init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    return-void
.end method

.method public getReleaseIDC()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getReleaseIDC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
    .locals 3

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/api/CTIPayAPI;->dataPersistence(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;)V

    .line 139
    new-instance v0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idcInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setIDCInfo(Ljava/lang/String;)V

    .line 141
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setGoodsZoneID(Ljava/lang/String;)V

    .line 142
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setOpenKey(Ljava/lang/String;)V

    .line 143
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPF(Ljava/lang/String;)V

    .line 144
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPFKey(Ljava/lang/String;)V

    .line 145
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionID(Ljava/lang/String;)V

    .line 146
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionType(Ljava/lang/String;)V

    .line 147
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setChannelExtras(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    invoke-direct {v1}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;-><init>()V

    iget-object v2, p0, Lcom/centauri/oversea/api/CTIPayAPI;->env:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idc:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    .line 153
    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    iget-object p2, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    .line 154
    invoke-virtual {v1, p2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object p2

    .line 155
    invoke-virtual {p2, v0}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setExtra(Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object p2

    .line 156
    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->build()Lcom/centauri/oversea/newapi/params/InitParams;

    move-result-object p2

    .line 159
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->init(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/InitParams;)V

    .line 162
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p1

    new-instance p2, Lcom/centauri/oversea/api/CTIPayAPI$1;

    invoke-direct {p2, p0, p3}, Lcom/centauri/oversea/api/CTIPayAPI$1;-><init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    return-void
.end method

.method public isLogEnable()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isLogEnable()Z

    move-result v0

    return v0
.end method

.method public net(Lcom/centauri/oversea/api/request/CTIBaseRequest;Ljava/lang/String;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 3

    .line 280
    const-string v0, "net()"

    const-string v1, "CTIPayAPI"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "drmInfo is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;-><init>()V

    .line 284
    invoke-virtual {v0, p2}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->setMpReqType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/NetParams$Builder;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->build()Lcom/centauri/oversea/newapi/params/NetParams;

    move-result-object p2

    .line 286
    iget-object p1, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    iput-object p1, p2, Lcom/centauri/oversea/newapi/params/NetParams;->drmInfo:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->net(Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    return-void
.end method

.method public net(Ljava/lang/String;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 2

    .line 271
    const-string v0, "CTIPayAPI"

    const-string v1, "net()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;-><init>()V

    .line 273
    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->setMpReqType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/NetParams$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->build()Lcom/centauri/oversea/newapi/params/NetParams;

    move-result-object p1

    .line 276
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->net(Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 4

    .line 233
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    .line 234
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    .line 235
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 236
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    .line 237
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    .line 238
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    .line 239
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    .line 240
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    .line 241
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    .line 242
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;-><init>()V

    .line 245
    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getDrmInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->setDrmInfo(Ljava/lang/String;)V

    .line 246
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->setGoodsZoneId(Ljava/lang/String;)V

    .line 247
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->setAppExtends(Ljava/lang/String;)V

    .line 248
    iget-object v1, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->setChannelExtras(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    invoke-direct {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;-><init>()V

    .line 251
    iget-object v2, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setCountry(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->currency_type:Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setPayChannel(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v2

    .line 254
    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getAssignProductid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setProductID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mType:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v2, v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setExtra(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    .line 259
    instance-of v0, p2, Lcom/centauri/oversea/api/request/CTIMonthRequest;

    if-eqz v0, :cond_0

    .line 260
    check-cast p2, Lcom/centauri/oversea/api/request/CTIMonthRequest;

    .line 261
    iget-boolean v0, p2, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setIsAutoPay(Z)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v2, p2, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setServiceCode(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    move-result-object v0

    iget-object p2, p2, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->setServiceName(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    .line 266
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p2

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->build()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->pay(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V

    return-void
.end method

.method public reProvide(Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
    .locals 2

    .line 206
    const-string v0, "CTIPayAPI"

    const-string v1, "reProvide()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/api/CTIPayAPI$4;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/api/CTIPayAPI$4;-><init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    return-void
.end method

.method public setEnv(Ljava/lang/String;)V
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI;->env:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnv(),env: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTIPayAPI"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogEnable(Z)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setLogEnable(Z)V

    return-void
.end method

.method public setReleaseIDC(Ljava/lang/String;)V
    .locals 2

    .line 107
    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idc:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setReleaseIDC(),idc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTIPayAPI"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReleaseIDC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idc:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/centauri/oversea/api/CTIPayAPI;->idcInfo:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setReleaseIDC(),idc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " idcInfo: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTIPayAPI"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCentauriUI(I)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->showCentauriUI(I)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showCentauriUI(),showCentauriUI UILevel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTIPayAPI"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
