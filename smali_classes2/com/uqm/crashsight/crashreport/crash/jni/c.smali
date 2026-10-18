.class public final Lcom/uqm/crashsight/crashreport/crash/jni/c;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/crash/jni/c;


# instance fields
.field private b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/crashreport/crash/jni/c;
    .locals 3

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/jni/c;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/c;->a:Lcom/uqm/crashsight/crashreport/crash/jni/c;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/c;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/c;-><init>()V

    .line 19
    sput-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/c;->a:Lcom/uqm/crashsight/crashreport/crash/jni/c;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    .line 21
    :cond_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/c;->a:Lcom/uqm/crashsight/crashreport/crash/jni/c;
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
.method public final b()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->isCrashSightSoLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->testCrash()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->isCrashSightSoLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/c;->b:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->testNativeOom()V

    return-void
.end method
