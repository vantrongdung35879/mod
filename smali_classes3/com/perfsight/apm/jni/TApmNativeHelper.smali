.class public final Lcom/perfsight/apm/jni/TApmNativeHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native PostTraceRouteTaskRules(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public static native SetCsDeviceId(Ljava/lang/String;)V
.end method

.method public static native TApmOnFpsNotify(Ljava/lang/String;)V
.end method

.method public static native TApmOnLog(Ljava/lang/String;)V
.end method

.method public static native TApmOnMarkLevelLoad(Ljava/lang/String;)V
.end method

.method public static native TApmOnSetQuality(Ljava/lang/String;)V
.end method

.method public static native addIL(JIJ)V
.end method

.method public static native addIS(JILjava/lang/String;)V
.end method

.method public static native addSS(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native checkEmulator(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native createReportEvent(Ljava/lang/String;)J
.end method

.method public static native destroyReportEvent(J)V
.end method

.method public static native enableDebugMode()V
.end method

.method public static native enableStandaloneReport()V
.end method

.method public static native enableVerboseMode()V
.end method

.method public static native getBoolByCCService(Ljava/lang/String;Z)Z
.end method

.method public static native getDoubleByCCService(Ljava/lang/String;D)D
.end method

.method public static native getGpuInfoByVulkan()Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
.end method

.method public static native getIntByCCService(Ljava/lang/String;I)I
.end method

.method public static native getLongByCCService(Ljava/lang/String;J)J
.end method

.method public static native getNativeBatteryTemp()I
.end method

.method public static native getNativeFrames()I
.end method

.method public static native getPlatformInfo()Ljava/lang/String;
.end method

.method public static native getStringByCCService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native initNativeCCService()V
.end method

.method public static native initNativeCCStrategy(Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
.end method

.method public static native initNativeDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFFZILjava/lang/String;Ljava/lang/String;JJ)V
.end method

.method public static native initNativeSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZ)V
.end method

.method public static native levelControl(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeDaemonInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeLogger(ILjava/lang/String;)V
.end method

.method public static native nativeSetEngineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
.end method

.method public static native nativeSetGfxInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native packetAndSendByTDM(Ljava/lang/String;IIILjava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native postBatteryInfo(IIIIIIII)V
.end method

.method public static native postBatterySaveMode(Z)V
.end method

.method public static native postCoordinates(FFFFFF)V
.end method

.method public static native postDisplayChange(II)V
.end method

.method public static native postEvent(ILjava/lang/String;)V
.end method

.method public static native postExitReasonInfo(IIIIJ)V
.end method

.method public static native postFbStatus(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native postFrame()V
.end method

.method public static native postFreshRate(I)V
.end method

.method public static native postFunctionStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
.end method

.method public static native postLowMemoryStatus(III)V
.end method

.method public static native postNTL(I)V
.end method

.method public static native postNetTraffic(IJJJJ)V
.end method

.method public static native postNetworkState(IZ)V
.end method

.method public static native postOomMemFactor(I)V
.end method

.method public static native postPause(I)V
.end method

.method public static native postPssValue(IIII)V
.end method

.method public static native postRemoteValue(Ljava/lang/String;I)V
.end method

.method public static native postScreenBrightness(I)V
.end method

.method public static native postStartUpTime(JJZ)V
.end method

.method public static native postThermalStatus(I)V
.end method

.method public static native postWifiHosts(I)V
.end method

.method public static native postWifiInfo(Ljava/lang/String;IIIII)V
.end method

.method public static native readLowMemInfoMmap()V
.end method

.method public static native report(J)V
.end method

.method public static native saveScreenCapturePng([B)V
.end method

.method public static native setCosFilePath(Ljava/lang/String;)V
.end method

.method public static native setDeviceClass(I)V
.end method

.method public static native setGameActivity(Ljava/lang/String;)V
.end method

.method public static native setLocalStrategy(IZ)V
.end method

.method public static native setOpenId(Ljava/lang/String;)V
.end method

.method public static native setQuality(II)V
.end method

.method public static native setRevisedVersion(Ljava/lang/String;)V
.end method

.method public static native setTargetFramerate(I)V
.end method

.method public static native startNativeMonitoring()V
.end method

.method public static native syncServerTime(JJI)V
.end method

.method public static native traceRoute(Ljava/lang/String;)V
.end method
