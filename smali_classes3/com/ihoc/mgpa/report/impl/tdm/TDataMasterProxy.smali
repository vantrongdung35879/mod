.class public Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;


# instance fields
.field private mGetStringDeviceInfoMethod:Ljava/lang/reflect/Method;

.field private mRealTimeReportEventMethod:Ljava/lang/reflect/Method;

.field private mReportEventMethod:Ljava/lang/reflect/Method;

.field private mSetDeviceInfoMethod:Ljava/lang/reflect/Method;

.field private mTDMInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mReportEventMethod:Ljava/lang/reflect/Method;

    .line 18
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mRealTimeReportEventMethod:Ljava/lang/reflect/Method;

    .line 19
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mSetDeviceInfoMethod:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mGetStringDeviceInfoMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private check()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/report/Reporter;->getProxyFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "check tdm  version failed, ple integrate tdm in your project!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/report/Reporter;->getProxyFullClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/RefInvokeUtil;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "check tdm version success!"

    invoke-static {v3, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "check tdm version failed, ple integrate tdm in your project!"

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 13
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Map;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "reportEvent"

    invoke-static {v0, v5, v4}, Lcom/ihoc/mgpa/toolkit/util/RefInvokeUtil;->getInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mReportEventMethod:Ljava/lang/reflect/Method;

    .line 15
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object v5, v4, v6

    .line 16
    const-string v5, "setDeviceInfo"

    invoke-static {v0, v5, v4}, Lcom/ihoc/mgpa/toolkit/util/RefInvokeUtil;->getInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mSetDeviceInfoMethod:Ljava/lang/reflect/Method;

    .line 17
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 18
    const-string v5, "getStringDeviceInfo"

    invoke-static {v0, v5, v4}, Lcom/ihoc/mgpa/toolkit/util/RefInvokeUtil;->getInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mGetStringDeviceInfoMethod:Ljava/lang/reflect/Method;

    .line 19
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v2, v4, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v6

    const-class v1, Ljava/util/Map;

    aput-object v1, v4, v7

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v3

    const-string v1, "realTimeReportEvent"

    invoke-static {v0, v1, v4}, Lcom/ihoc/mgpa/toolkit/util/RefInvokeUtil;->getInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mRealTimeReportEventMethod:Ljava/lang/reflect/Method;

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    invoke-direct {v1}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    invoke-direct {v1}, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->check()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mInstance:Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;

    return-object v0
.end method


# virtual methods
.method public getStringDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mGetStringDeviceInfoMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7
    const-string v3, "get data from tdm failed. the device info get null! key: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    const-string v3, "get data from tdm failed. get %s failed, status: %d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 16
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 19
    check-cast v3, Ljava/lang/String;

    return-object v3

    :cond_3
    return-object v1

    .line 20
    :cond_4
    :goto_0
    const-string v3, "get data from tdm failed. ple check tdm version."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "get data from tdm exception. the key: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string p1, "get data from tdm exception. ple check tdm version."

    invoke-static {p1, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public realTimeReportEvent(ILjava/lang/String;Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mRealTimeReportEventMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    const-string/jumbo p1, "use tdm real time report failed!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string/jumbo p2, "use tdm report exception!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public reportEvent(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mReportEventMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    const-string/jumbo p1, "use tdm report failed!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string/jumbo p2, "use tdm report exception!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mTDMInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/ihoc/mgpa/report/impl/tdm/TDataMasterProxy;->mSetDeviceInfoMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 5
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    const-string p2, "set xid to tdm failed. ple check tdm version."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "set data to tdm exception. the key: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    const-string p1, "set data to tdm exception. ple check tdm version."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
