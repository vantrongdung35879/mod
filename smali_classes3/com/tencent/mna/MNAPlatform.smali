.class public Lcom/tencent/mna/MNAPlatform;
.super Ljava/lang/Object;
.source "MNAPlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNACollectTouchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNACollectTouchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAEndSpeed(Ljava/lang/String;I)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAEnterMapLoading()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEnterMapLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAGetAuxWifiSupportFlag()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetAuxWifiSupportFlag()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAGetBatteryLevel()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetBatteryLevel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public static MNAGetBatteryLevelAndCharging()[I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetBatteryLevelAndCharging()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4
    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static MNAGetCollectControlInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetCollectControlInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p1
.end method

.method public static MNAGetIpGroupDelays(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetIpGroupDelays(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAGetNetworkType()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetNetworkType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public static MNAGetQosSid()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetQosSid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 4
    :catchall_0
    const-string v0, "-1"

    return-object v0
.end method

.method public static MNAGetSOVersion()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSOVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAGetSpeedFlag()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSpeedFlag()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/16 v0, -0x64

    return v0
.end method

.method public static MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/j3;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/j3;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static MNAGoBack()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGoBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAGoFront()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGoFront()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAIsQOSWork()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAIsQOSWork()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAIsVPNOpen()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAIsVPNOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAPauseBattle()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAPauseBattle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAQueryKartin(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryKartin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAQueryNetwork(ZZZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryNetwork(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAQueryPreciseKartin(JJLjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryPreciseKartin(JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAQueryRouter(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryRouter(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAQuit()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAResumeBattle()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAResumeBattle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetAuxWifiUserAllow(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetAuxWifiUserAllow(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetControlDomain(Ljava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetControlDomain(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetDualTunnelBindNetType(IZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetDualTunnelBindNetType(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetForceSpeed(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetForceSpeed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameDelay(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameDelay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameIp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameIp(Ljava/lang/String;I)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameIp(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameIpWithLocalIp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameIpWithLocalIp(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameMode(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetIpGroupDelaysObserver(Lcom/tencent/mna/m1;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetIpGroupDelaysObserver(Lcom/tencent/mna/m1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetObserver(JJ)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetObserver(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetObserver(Lcom/tencent/mna/MNAObserver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetObserver(Lcom/tencent/mna/MNAObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetOverseaGame(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetOverseaGame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetReportChannel(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetReportChannel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetUserName(ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetUserName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetUserName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetZoneId(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetZoneId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x2

    return p0
.end method

.method public static MNAStartWifiActivity(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartWifiActivity(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x2

    return p0
.end method

.method public static MNAStopMNA(Ljava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStopMNA(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAToggleNetworkBinding(IZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAToggleNetworkBinding(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNATransportInfo(ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNATransportInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
