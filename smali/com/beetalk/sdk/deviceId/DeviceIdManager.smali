.class public final Lcom/beetalk/sdk/deviceId/DeviceIdManager;
.super Ljava/lang/Object;
.source "DeviceIdManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceIdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceIdManager.kt\ncom/beetalk/sdk/deviceId/DeviceIdManager\n+ 2 GsonExts.kt\ncom/beetalk/sdk/exts/GsonExtsKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 TimeExts.kt\ncom/beetalk/sdk/exts/TimeExtsKt\n*L\n1#1,131:1\n34#2,5:132\n39#3,12:137\n24#4:149\n*S KotlinDebug\n*F\n+ 1 DeviceIdManager.kt\ncom/beetalk/sdk/deviceId/DeviceIdManager\n*L\n57#1:132,5\n64#1:137,12\n105#1:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/DeviceIdManager;",
        "",
        "()V",
        "DEVICE_ID_KEY",
        "",
        "DEVICE_ID_SANDBOX_KEY",
        "enable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getCachedDeviceId",
        "getCachedDeviceIdData",
        "Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;",
        "getDeviceId",
        "getDeviceIdKey",
        "getDeviceIdSp",
        "Landroid/content/SharedPreferences;",
        "refreshDeviceId",
        "",
        "saveDeviceIdData",
        "response",
        "setEnable",
        "",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "deviceId"

.field private static final DEVICE_ID_SANDBOX_KEY:Ljava/lang/String; = "deviceId.sandbox"

.field public static final INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

.field private static final enable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$0kqNREF-zQYbuiZAdF6ZNpKWLM8()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId$lambda$4$lambda$3()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gyoEsg2RIUw8DpN7fpAXvzrtmKg()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->refreshDeviceId$lambda$6()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->enable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCachedDeviceId()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getCachedDeviceIdData()Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getCachedDeviceIdData()Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;
    .locals 4

    .line 56
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceIdSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceIdKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 57
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-string v1, "GLOBAL_GSON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    invoke-direct {v1}, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;-><init>()V

    .line 132
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    :try_start_0
    const-class v3, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    :cond_2
    :goto_1
    check-cast v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    return-object v1
.end method

.method public static final getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 78
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->enable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getCachedDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/deviceId/DeviceIdManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/beetalk/sdk/deviceId/DeviceIdManager$$ExternalSyntheticLambda1;-><init>()V

    .line 81
    invoke-static {v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-object v0
.end method

.method private static final getDeviceId$lambda$4$lambda$3()Lkotlin/Unit;
    .locals 3

    .line 82
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getCachedDeviceId()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v1, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 86
    sget-object v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi;->Companion:Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;

    invoke-virtual {v1}, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;->generateDeviceId()Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    if-eqz v1, :cond_2

    .line 90
    sget-object v2, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    invoke-direct {v2, v1}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->saveDeviceIdData(Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;)V

    .line 92
    :cond_2
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    monitor-exit v0

    .line 93
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v1

    .line 82
    monitor-exit v0

    throw v1
.end method

.method private final getDeviceIdKey()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGGetEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "deviceId"

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "deviceId.sandbox"

    :goto_0
    return-object v0
.end method

.method private final getDeviceIdSp()Landroid/content/SharedPreferences;
    .locals 2

    .line 43
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v1, "com.garena.msdk.SERVICE_PREF"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/exts/ContextExtsKt;->getCryptoSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final refreshDeviceId()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 99
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->enable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager$$ExternalSyntheticLambda0;-><init>()V

    .line 101
    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method private static final refreshDeviceId$lambda$6()Lkotlin/Unit;
    .locals 8

    .line 102
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getCachedDeviceIdData()Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->getNextRefreshTimeInSeconds()J

    move-result-wide v2

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    .line 106
    const-string/jumbo v1, "too early to refresh device id, skip"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1}, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 111
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const-string v1, "device id is empty, skip to refresh device id"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_1
    sget-object v2, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi;->Companion:Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;

    invoke-virtual {v2, v1}, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;->refreshDeviceId(Ljava/lang/String;)Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    move-result-object v1

    if-nez v1, :cond_2

    .line 118
    const-string v1, "refresh device id failed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {v0, v1}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->saveDeviceIdData(Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;)V

    .line 122
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0

    throw v1
.end method

.method private final saveDeviceIdData(Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceIdSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceIdManager;

    invoke-direct {v1}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceIdKey()Ljava/lang/String;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-string v3, "GLOBAL_GSON"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/beetalk/sdk/exts/GsonExtsKt;->toJsonOrEmpty(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final setEnable(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 128
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->enable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
