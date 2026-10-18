.class public Lcom/uqm/crashsight/core/tools/NDKHelper;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final coreSoName:Ljava/lang/String; = "CrashSight"

.field private static mIsLoadedSO:Z = false

.field private static mIsLoadingSO:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSOLoaded()Z
    .locals 3

    .line 28
    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "--------------------------------------------\n.so has not been loaded. To use JNI helper, please initialize with \nUQMPlatform.initialize (Activity activity);\n--------------------------------------------\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static loadPluginByReflection()Z
    .locals 3

    .line 40
    :try_start_0
    const-string v0, "CrashSight"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadPluginByReflection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static loadSO()Z
    .locals 4

    .line 12
    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    .line 14
    const-string v2, "try to load CrashSight"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadPluginByReflection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    sput-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "CrashSight loading failed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "CrashSight have been loaded"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :goto_0
    sput-boolean v1, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    .line 24
    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    return v0
.end method
