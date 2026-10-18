.class public interface abstract Lcom/uqm/crashsight/core/crash/CrashInterface;
.super Ljava/lang/Object;
.source "CrashSight"


# virtual methods
.method public abstract checkFdCount(IIZ)Z
.end method

.method public abstract closeCrashReport()V
.end method

.method public abstract configCallbackTypeBeforeInit(I)V
.end method

.method public abstract configCrashHandleTimeout(I)V
.end method

.method public abstract configCrashReporterLogLevelBeforeInit(I)V
.end method

.method public abstract configCrashServerUrlBeforeInit(Ljava/lang/String;)V
.end method

.method public abstract configDebugModeBeforeInit(Z)V
.end method

.method public abstract configDefaultBeforeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract getBackendDeviceId()Ljava/lang/String;
.end method

.method public abstract getCrashThreadId()J
.end method

.method public abstract getCrashUUID()Ljava/lang/String;
.end method

.method public abstract getExceptionType(Ljava/lang/String;)I
.end method

.method public abstract getLastSessionUserId()Ljava/lang/String;
.end method

.method public abstract getSDKSessionID()Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;ZZLjava/lang/String;)V
.end method

.method public abstract initWithAppId(Ljava/lang/String;Z)V
.end method

.method public abstract isLastSessionCrash()Z
.end method

.method public abstract logInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract printLog(ILjava/lang/String;)V
.end method

.method public abstract processEngineAnr(I)V
.end method

.method public abstract reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
.end method

.method public abstract reportJank(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract reportStuck(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setAppDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAppVersion(Ljava/lang/String;)V
.end method

.method public abstract setCatchMultiSignal(Z)V
.end method

.method public abstract setCustomizedMatchID(Ljava/lang/String;)V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceModel(Ljava/lang/String;)V
.end method

.method public abstract setEnableFragmentCallbacks(Z)V
.end method

.method public abstract setEnableGetPackageInfo(Z)V
.end method

.method public abstract setEngineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEngineMainThread(ILjava/lang/String;)V
.end method

.method public abstract setGameType(I)V
.end method

.method public abstract setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIsAppForeground(Z)V
.end method

.method public abstract setIsOpengles(Z)V
.end method

.method public abstract setLogPath(Ljava/lang/String;)V
.end method

.method public abstract setLogcatBufferSize(I)V
.end method

.method public abstract setOomLogPath(Ljava/lang/String;)V
.end method

.method public abstract setServerEnv(Ljava/lang/String;)V
.end method

.method public abstract setUnwindExtraStack(Z)V
.end method

.method public abstract setUploadThreadNum(I)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUserSceneTag(Ljava/lang/String;Z)V
.end method

.method public abstract setUserValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startCrashReport()V
.end method

.method public abstract startDumpRoutine(IIJJIZLjava/lang/String;)V
.end method

.method public abstract startMonitorFdCount(III)V
.end method

.method public abstract testANR()V
.end method

.method public abstract testJavaCrash()V
.end method

.method public abstract testOomCrash()V
.end method

.method public abstract testUseAfterFree()V
.end method

.method public abstract useSavedUserId(Z)V
.end method
