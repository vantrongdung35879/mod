.class public Lcom/centauri/oversea/comm/GlobalData;
.super Ljava/lang/Object;
.source "GlobalData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/GlobalData$InstanceHolder;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "4.05.422a"

.field public static final TAG:Ljava/lang/String; = "GlobalData"

.field public static isGoogleNew:Z = true

.field private static mIV:Ljava/lang/String; = ""

.field private static mKey:Ljava/lang/String; = ""

.field public static subscribeClearCache:Ljava/lang/String; = "0"

.field public static subscribeSaveCache:Ljava/lang/String; = "0"

.field public static useHighestGoogleApi:Z = true


# instance fields
.field public IDC:Ljava/lang/String;

.field public IDCInfo:Ljava/lang/String;

.field public changeVid:Ljava/lang/String;

.field private currencyInGw:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public goodsZoneID:Ljava/lang/String;

.field public heartBeat:J

.field public ipMeasureSwitch:Z

.field public isSendReport:Z

.field private mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

.field private mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

.field private mTimeoutHelper:Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

.field public offerID:Ljava/lang/String;

.field public openID:Ljava/lang/String;

.field public openKey:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public sessionID:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field public sessionType:Ljava/lang/String;

.field private uiLevel:I

.field private useDomainFirst:Z

.field public userName:Ljava/lang/String;

.field public zoneID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDCInfo:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    .line 34
    const-string v2, "1"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    .line 38
    const-string/jumbo v2, "test"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    .line 39
    const-string v2, "cpay_4.1.1"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->changeVid:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->ipMeasureSwitch:Z

    .line 46
    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->isSendReport:Z

    .line 49
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    const/4 v3, 0x0

    .line 50
    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    .line 51
    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    .line 52
    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    .line 54
    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lcom/centauri/oversea/comm/GlobalData;->heartBeat:J

    .line 62
    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "use_highest_google_api"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTISPTools;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "GlobalData"

    const-string/jumbo v2, "useHighestGoogleApi=false"

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sput-boolean v0, Lcom/centauri/oversea/comm/GlobalData;->useHighestGoogleApi:Z

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/comm/GlobalData$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/centauri/oversea/comm/GlobalData;-><init>()V

    return-void
.end method

.method public static getIV()Ljava/lang/String;
    .locals 1

    .line 333
    sget-object v0, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    return-object v0
.end method

.method private loadInitParams(Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 4

    .line 216
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getIDC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getZoneID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getIDCInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDCInfo:Ljava/lang/String;

    .line 225
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getOpenKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    .line 226
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPf()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    .line 227
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPfKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    .line 228
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    .line 229
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getGoodsZoneID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    .line 232
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/centauri/oversea/comm/CTITools;->str2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 236
    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "roleId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init serverId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Init roleid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalData"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getEnv()Ljava/lang/String;

    move-result-object p1

    .line 248
    const-string v0, "release"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dev"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    const-string/jumbo p1, "test"

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static setIV(Ljava/lang/String;)V
    .locals 0

    .line 329
    sput-object p0, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    return-void
.end method

.method public static setKey(Ljava/lang/String;)V
    .locals 0

    .line 325
    sput-object p0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/comm/GlobalData;
    .locals 1

    .line 92
    sget-object v0, Lcom/centauri/oversea/comm/GlobalData$InstanceHolder;->instance:Lcom/centauri/oversea/comm/GlobalData;

    return-object v0
.end method


# virtual methods
.method public IPManager()Lcom/centauri/oversea/newnetwork/http/CTIIPManager;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    return-object v0
.end method

.method public NetCfg()Lcom/centauri/oversea/newnetwork/http/CTINetCfg;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    return-object v0
.end method

.method public NetTimeout()Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    return-object v0
.end method

.method public getBaseKey()Ljava/lang/String;
    .locals 1

    .line 281
    sget-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyInGw()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    if-nez v0, :cond_0

    .line 168
    const-string v0, ""

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPList()[Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getIPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPListLength()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getIPList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getIPList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getNetToken()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getReportDomain()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    if-nez v0, :cond_0

    .line 175
    const-string v0, ""

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->getReportDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 4

    .line 106
    const-string v0, ""

    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    const/16 v3, 0x11

    if-ge v1, v3, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const-string v1, "CalculateIV"

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/centauri/oversea/comm/MConstants;->MConstants0:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/centauri/oversea/comm/MConstants;->MConstantsAlpha:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/centauri/oversea/comm/MConstants;->MConstantsBeta:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsDone:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsEmma:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsFrank:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/centauri/oversea/comm/MConstants;->MConstantsCell:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsGeo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsHolo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsJoker:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsKeith:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/centauri/oversea/comm/MConstants;->MConstantsMoon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData;->mKey:Ljava/lang/String;

    .line 128
    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/centauri/oversea/comm/GlobalData;->loadInitParams(Lcom/centauri/oversea/newapi/params/InitParams;)V

    .line 132
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    if-nez p1, :cond_1

    .line 133
    new-instance p1, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    invoke-direct {p1}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->init()V

    .line 137
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    if-nez p1, :cond_2

    .line 138
    new-instance p1, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    invoke-direct {p1}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isUseDomainFirst()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    return v0
.end method

.method public refreshNetToken()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyInGw(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    return-void
.end method

.method public setIDCAndEnv()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "initIdc"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTISPTools;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "initEnv"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTISPTools;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lcom/centauri/oversea/newnetwork/http/CTINetCfg;

    .line 358
    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/http/CTINetCfg;->init()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    invoke-direct {v0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    :cond_1
    return-void
.end method

.method public setMUILevel(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    return-void
.end method

.method public setNetToken(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setUseDomainFirst(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    return-void
.end method

.method public showLoading()Z
    .locals 2

    .line 297
    iget v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public showPayResult()Z
    .locals 1

    .line 305
    iget v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
