.class public Lcom/centauri/oversea/newnetwork/service/HeartBeat;
.super Ljava/lang/Object;
.source "HeartBeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newnetwork/service/HeartBeat$InstanceHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HeartBeat"


# instance fields
.field private isTiming:Z

.field private mContext:Landroid/content/Context;

.field private offerId:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private tPeriod:J

.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->tPeriod:J

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->offerId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->openId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/centauri/oversea/newnetwork/service/HeartBeat;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->report()V

    return-void
.end method

.method private report()V
    .locals 5

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/centauri/oversea/newnetwork/service/HeartBeat$2;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat$2;-><init>(Lcom/centauri/oversea/newnetwork/service/HeartBeat;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 109
    const-string/jumbo v1, "sys_id"

    const-string v2, "3_7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "cmd"

    const-string v2, "ReportData"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "req_src"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "uin_type"

    const-string v2, "game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "scene"

    const-string v2, "login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "device_os"

    const-string v3, "android"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v2, "offer_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string/jumbo v2, "uin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "sdk_version"

    const-string v2, "4.05.422a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-boolean v1, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/centauri/oversea/comm/GDPR;->getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_guid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "device_type"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/centauri/oversea/comm/GDPR;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi_ssid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "device_name"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/centauri/oversea/comm/CTITools;->getNetWorkType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v1, "sys_version"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "manufacturer"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "device"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v1, "showModel"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getLocalIp()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    const-string/jumbo v2, "user_ip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tran_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTITools;->map2UrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SHA1"

    invoke-static {v2, v4}, Lcom/centauri/oversea/comm/CTITools;->signString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const-string v1, "&sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;

    invoke-direct {v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->report(Ljava/lang/String;)V

    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/newnetwork/service/HeartBeat;
    .locals 1

    .line 40
    sget-object v0, Lcom/centauri/oversea/newnetwork/service/HeartBeat$InstanceHolder;->instance:Lcom/centauri/oversea/newnetwork/service/HeartBeat;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    .line 70
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setOfferId(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->offerId:Ljava/lang/String;

    return-object p0
.end method

.method public setOpenId(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/service/HeartBeat;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public setPeriod(J)Lcom/centauri/oversea/newnetwork/service/HeartBeat;
    .locals 2

    .line 81
    iput-wide p1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->tPeriod:J

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "heartbeat period: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->tPeriod:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeartBeat"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public start()V
    .locals 7

    .line 49
    iget-wide v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->tPeriod:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 50
    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->isTiming:Z

    .line 56
    new-instance v2, Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/newnetwork/service/HeartBeat$1;-><init>(Lcom/centauri/oversea/newnetwork/service/HeartBeat;)V

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/centauri/oversea/newnetwork/service/HeartBeat;->tPeriod:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method
