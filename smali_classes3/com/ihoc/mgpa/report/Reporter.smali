.class public Lcom/ihoc/mgpa/report/Reporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REPORT_TYPE_MGPA:I = 0x1

.field public static final REPORT_TYPE_TDM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "[MGPA_Reporter]"

.field public static final TYPE_MGPA:Ljava/lang/String; = "1"

.field public static final TYPE_TDM:Ljava/lang/String; = "2"

.field private static volatile hadInit:Z = false

.field private static volatile sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig; = null

.field private static sIsInternational:Z = false

.field private static sProxyFullClassName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static disAllowedReport(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->getAllowedReportKeys()Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->isSamplingEventReport()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 10
    :cond_1
    sget-object v1, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->getAllowedReportKeys()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 11
    :cond_2
    :goto_0
    const-string p0, "[MGPA_Reporter]"

    const-string v1, "[disAllowedReport]: EventReport Config is null."

    invoke-static {p0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static getProxyFullClassName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/Reporter;->sProxyFullClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static hadInit()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/report/Reporter;->hadInit:Z

    return v0
.end method

.method public static declared-synchronized init(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-class v0, Lcom/ihoc/mgpa/report/Reporter;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    const-string v1, "[MGPA_Reporter]"

    const-string v2, "[init]: url is null."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    sput-boolean p1, Lcom/ihoc/mgpa/report/Reporter;->sIsInternational:Z

    .line 5
    sput-object p2, Lcom/ihoc/mgpa/report/Reporter;->sProxyFullClassName:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->init(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 7
    sput-boolean p0, Lcom/ihoc/mgpa/report/Reporter;->hadInit:Z

    .line 8
    const-string p0, "[MGPA_Reporter]"

    const-string p1, "[Reporter|init]: Reporter module init finish."

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isInternational()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/report/Reporter;->sIsInternational:Z

    return v0
.end method

.method public static report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ihoc/mgpa/report/entity/BeaconEvent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    const-string p0, "[MGPA_Reporter]"

    const-string p1, "[report]: event is null!"

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/report/Reporter;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static report(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/ihoc/mgpa/report/Reporter;->disAllowedReport(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 6
    const-string p1, "[report]: eventName: [%s] is disallowed to be reported."

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    sget-object v3, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->getKey2Engine()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->getKey2Engine()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    :cond_1
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 16
    :cond_2
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->reportNow(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 19
    :cond_3
    const-string p1, "[report]: eventName: %s is not config report channel, ignore."

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reportSync(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ihoc/mgpa/report/entity/BeaconEvent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->reportSync(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->reportInstantEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized setReportEventConfig(Lcom/ihoc/mgpa/report/entity/EventReportConfig;)V
    .locals 3

    const-class v0, Lcom/ihoc/mgpa/report/Reporter;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    const-string v1, "[MGPA_Reporter]"

    const-string v2, "[init]: EventReportConfig is null."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sput-object p0, Lcom/ihoc/mgpa/report/Reporter;->sEventReportConfig:Lcom/ihoc/mgpa/report/entity/EventReportConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
