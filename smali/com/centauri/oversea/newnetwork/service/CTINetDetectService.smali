.class public Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;
.super Landroid/app/Service;
.source "CTINetDetectService.java"


# static fields
.field public static final IP_DETECT:I = 0x0

.field public static final IP_DETECT_COMPLETED:I = 0x2

.field public static final IP_DETECT_ERROR:I = 0x3

.field public static final IP_START_DETECT:I = 0x1

.field public static final IP_TASKS_FOUND:I = 0x4

.field public static final IP_TASK_FINISHED:I = 0x5

.field public static finalDetectDomain:Ljava/lang/String;


# instance fields
.field private detuctServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getDetectDomainHK()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->detuctServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->detuctServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;Lorg/json/JSONArray;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->parseTasks(Lorg/json/JSONArray;)V

    return-void
.end method

.method private initDetectService()V
    .locals 3

    .line 322
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "detect_domain"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTISPTools;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "false"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    sput-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->finalDetectDomain:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->detuctServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detectDomainCgi="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitDetectService"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initInService(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 284
    new-instance v0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;-><init>()V

    .line 285
    const-string v1, "idcInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setIDCInfo(Ljava/lang/String;)V

    .line 286
    const-string v1, "goodsZoneid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setGoodsZoneID(Ljava/lang/String;)V

    .line 287
    const-string v1, "openKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setOpenKey(Ljava/lang/String;)V

    .line 288
    const-string v1, "pf"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPF(Ljava/lang/String;)V

    .line 289
    const-string v1, "pfKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPFKey(Ljava/lang/String;)V

    .line 290
    const-string v1, "sessionId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionID(Ljava/lang/String;)V

    .line 291
    const-string v1, "sessionType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionType(Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    invoke-direct {v1}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;-><init>()V

    const-string v2, "env"

    .line 294
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    const-string v2, "idc"

    .line 295
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    const-string v2, "offerid"

    .line 296
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    const-string v2, "openid"

    .line 297
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    const-string/jumbo v2, "zoneid"

    .line 298
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setExtra(Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->build()Lcom/centauri/oversea/newapi/params/InitParams;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setLogEnable(Z)V

    .line 303
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setApplicationContext(Landroid/content/Context;)V

    .line 304
    const-string v1, "DetectService"

    const-string/jumbo v2, "start to init"

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/comm/GlobalData;->init(Lcom/centauri/oversea/newapi/params/InitParams;)V

    .line 307
    const-string v1, "gdprSwitch"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    .line 310
    invoke-static {}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->singleton()Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    move-result-object v1

    .line 311
    invoke-virtual {v1, p0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->setContext(Landroid/content/Context;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    move-result-object v1

    const-string v2, "heartbeat"

    .line 312
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->setPeriod(J)Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    move-result-object p1

    .line 313
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->setOfferId(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    move-result-object p1

    .line 314
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->setOpenId(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->start()V

    :cond_0
    return-void
.end method

.method private parseTasks(Lorg/json/JSONArray;)V
    .locals 18

    move-object/from16 v1, p1

    .line 152
    const-string v2, "ip"

    const-string v3, "dns"

    const-string/jumbo v4, "task_id"

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 158
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->getSysDefaultLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 159
    invoke-static {v5}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->getInputMethodLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sysLocale="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&inputLocale="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    .line 162
    invoke-static {v0, v5}, Lcom/centauri/oversea/comm/CTITools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v5, "sdk.oversea.sys.lang"

    invoke-virtual {v6, v5, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 166
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_b

    .line 168
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start process task:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, ""

    if-eqz v7, :cond_1

    .line 174
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v8

    .line 176
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/centauri/oversea/comm/CTITools;->isIPAddress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 181
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 180
    invoke-static {v10}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->getDnsServer(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 182
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 183
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v12, "host"

    if-eqz v11, :cond_6

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 189
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->dnsRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 190
    invoke-interface {v14, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v15, v8

    .line 191
    :goto_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string/jumbo v1, "taskid="

    move-object/from16 v17, v2

    const-string v2, "sdk.oversea.ip.detect.dns.result"

    if-nez v16, :cond_4

    :try_start_3
    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 192
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v3

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&result=succ&dnssvr="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dnssvr"

    .line 196
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&host="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&time="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time"

    .line 198
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ip="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v11, v2, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    move-object/from16 v16, v3

    .line 199
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&result=failed&dnssvr="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 209
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 210
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v0

    const-string v1, "sdk.oversea.ip.detect.error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=ip_by_dns_is_null&taskid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 216
    :cond_7
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 222
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 227
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 229
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v3, "originUrl"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "currentHost"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string/jumbo v3, "traceroute"

    invoke-static {v7}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->monitTraceRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v3, "ping"

    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v8

    const/4 v9, 0x4

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->ping(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string/jumbo v3, "socket"

    .line 235
    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v9

    const-string v8, "contents"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "response"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    move-object v8, v6

    .line 234
    invoke-static/range {v7 .. v12}, Lcom/centauri/oversea/newnetwork/service/CTIIPDetectTools;->socketConn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-class v3, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detect host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v3

    const-string v7, "sdk.oversea.ip.detect.ip.time"

    .line 238
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v3, v7, v2}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    :goto_7
    move-object/from16 v16, v3

    .line 241
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 246
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 153
    :cond_c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->detuctServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 278
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->initInService(Landroid/content/Intent;)V

    .line 266
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->initDetectService()V

    .line 269
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->singleton()Lcom/centauri/oversea/newnetwork/http/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->prefetchDnsDefault()V

    .line 272
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 261
    :cond_1
    :goto_0
    const-string p1, "Detect Service"

    const-string p2, "get Start Command with null intent"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method
