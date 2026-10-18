.class public Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TDM_SRC_ID:I = 0x7d7

.field private static volatile mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    invoke-direct {v1}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    return-object v0
.end method


# virtual methods
.method public reportInstantEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MGPA_Report]|[TDM]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->printMapData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    move-result-object v0

    const/16 v1, 0x7d7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->realTimeReportEvent(ILjava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public reportNow(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MGPA_Report]|[TDM]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->printMapData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    move-result-object v0

    const/16 v1, 0x7d7

    invoke-virtual {v0, v1, p1, p2}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->reportEvent(ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
