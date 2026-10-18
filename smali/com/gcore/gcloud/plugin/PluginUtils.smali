.class public Lcom/gcore/gcloud/plugin/PluginUtils;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GCloudCore"

.field private static hasGCloudCoreLoaded:Z

.field private static nativePluginManager:J

.field private static nativeServiceManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    const-string v0, "GCloudCore"

    .line 15
    :try_start_0
    const-string v1, "PluginUtils try to load libgcloudcore.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string v1, "gcloudcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginUtils loadLibrary libgcloudcore.so error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNativePluginManager()J
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetNativePluginManager nativePluginManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-wide v0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    return-wide v0
.end method

.method public static GetNativeServiceManager()J
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetNativeServiceManager nativeServiceManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-wide v0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    return-wide v0
.end method

.method public static PostStartup()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePostStartup()V

    return-void
.end method

.method public static PreShutdown()V
    .locals 0

    .line 91
    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePreShutdown()V

    return-void
.end method

.method public static SetNativePluginManager(J)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetNativePluginManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sput-wide p0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    return-void
.end method

.method public static SetNativeServiceManager(J)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetNativeServiceManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-wide p0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    return-void
.end method

.method public static Shutdown()V
    .locals 0

    .line 95
    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeShutdown()V

    return-void
.end method

.method public static Startup()V
    .locals 0

    .line 81
    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeStartup()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/gcore/gcloud/plugin/PluginUtils;->hasGCloudCoreLoaded:Z

    const-string v1, "GCloudCore"

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "try to load libgcloudcore.so for the first time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "gcloudcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/gcore/gcloud/plugin/PluginUtils;->hasGCloudCoreLoaded:Z

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GCloudUtils.loadLibrary:lib"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativePostStartup()V
.end method

.method private static native nativePreShutdown()V
.end method

.method private static native nativeShutdown()V
.end method

.method private static native nativeStartup()V
.end method
