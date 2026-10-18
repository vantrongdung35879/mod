.class public Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->b:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    .line 22
    :cond_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->tryLoadSo()V

    .line 23
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method public native bufferElfInfo(Ljava/lang/String;)V
.end method

.method public native getApplicationBits()Ljava/lang/String;
.end method

.method public native getAvailableMemAndSwap()[J
.end method

.method public native getFdCount()I
.end method

.method public native getGcloudPluginVersion([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method public native getPthreadKeyCount()I
.end method

.method public native getRssVss()[J
.end method

.method public native getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getThreadStackTrace(I)Ljava/lang/String;
.end method

.method public native getTotalMemAndSwap()[J
.end method

.method public native getUuid(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public native getVulkanInfo()[Ljava/lang/String;
.end method

.method public native handleAnrFinish()V
.end method

.method public native initNativeLog(I)V
.end method

.method public native initPthreadKeyHook()V
.end method

.method public isCrashSightSoLoaded()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->b:Z

    return v0
.end method

.method public native processEngineAnr(I)V
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native readStringFromMmap(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method protected native regist(Ljava/lang/String;ZJ)Ljava/lang/String;
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native setAbortMsgOpen(Z)V
.end method

.method public native setAnrDumpNativeType(I)V
.end method

.method public native setCatchMonoStackOpen(Z)V
.end method

.method public native setCatchMultiSignalEnable(Z)V
.end method

.method public native setCrashMinidumpEnable(Z)V
.end method

.method public native setFilePrefix(Ljava/lang/String;)V
.end method

.method public native setFpTraceOpen(Z)V
.end method

.method public native setIsModuleNameOmit(Z)V
.end method

.method public native setLrTraceOpen(Z)V
.end method

.method public native setMmkvliteOpen(Z)V
.end method

.method protected native setNativeConfig(ILjava/lang/String;)V
.end method

.method public native setSmallestDumpOpen(Z)V
.end method

.method public native setUnwindExtraStackEnable(Z)V
.end method

.method public native setUploadFd(Z)V
.end method

.method public native setUploadStackSize(Z)V
.end method

.method public native storeLastMmapFile(Ljava/lang/String;I)V
.end method

.method protected native testCrash()V
.end method

.method protected native testInline()V
.end method

.method protected native testLogcat()V
.end method

.method protected native testLogcatStat()V
.end method

.method protected native testMalloc1GNative()V
.end method

.method protected native testMmkvlite()V
.end method

.method protected native testNativeOom()V
.end method

.method protected native testRegistSignalHandler()V
.end method

.method protected native testThreadName()V
.end method

.method public tryLoadSo()V
    .locals 5

    .line 34
    const-string v0, "CrashSight"

    .line 35
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    :try_start_0
    const-string v3, "[Native] Trying to load so: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 38
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->b:Z

    .line 40
    const-string v3, "[Native] Successfully loaded so: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "[Native] Failed to load so: %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected native unregist()Ljava/lang/String;
.end method

.method public native uploadNativeStack()Ljava/lang/String;
.end method

.method public native writeStringToMmap(Ljava/lang/String;Ljava/lang/String;I)V
.end method
