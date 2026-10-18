.class public Lcom/tencent/gcloud/msdk/api/MSDKPlatform;
.super Ljava/lang/Object;
.source "MSDKPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Account;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Tools;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Config;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Game;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Notice;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Push;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$WebView;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Login;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Group;,
        Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Friend;
    }
.end annotation


# static fields
.field private static final MSDK_LIFECYCLE_OBSERVERS:Ljava/lang/String; = "MSDK_LIFECYCLE_OBSERVERS"

.field private static final MSDK_LIFECYCLE_SCHEME:Ljava/lang/String; = "MSDK_LIFECYCLE_SCHEME"

.field private static volatile mActivityCached:Landroid/app/Activity; = null

.field private static mActivityCur:Landroid/app/Activity; = null

.field private static mIsPreRegisterLoaded:Z = false

.field private static volatile mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 222
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    return-object v0
.end method

.method public static getActivityCur()Landroid/app/Activity;
    .locals 1

    .line 125
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCur:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    :cond_0
    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->loadSO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "so library is loaded"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->registerMSDKLifeCycle(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->execOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->execOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->execOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static declared-synchronized preLifeCycleMonitor(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "activity",
            "channels"
        }
    .end annotation

    const-class p0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;

    monitor-enter p0

    .line 180
    :try_start_0
    sget-boolean v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mIsPreRegisterLoaded:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 182
    array-length v2, p1

    if-lez v2, :cond_1

    .line 183
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    const-string v5, "com.tencent.gcloud.msdk.%sLifeCycleObserver"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getInstance()Lcom/tencent/gcloud/msdk/tools/MSDKModules;

    move-result-object v6

    const-class v7, Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;

    invoke-virtual {v6, v7, v5}, Lcom/tencent/gcloud/msdk/tools/MSDKModules;->getChannelInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;

    if-eqz v6, :cond_0

    .line 188
    sget-object v5, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v5, v6}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    goto :goto_1

    .line 190
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' hook lifecycle error, make sure there is such class !!!"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 193
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addActivityLifeMonitor for channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string p1, "addActivityLifeMonitor with empty channels"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 201
    :cond_2
    new-instance p1, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleNative;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleNative;-><init>()V

    .line 202
    new-instance v2, Lcom/tencent/gcloud/msdk/core/dns/NetworkLifeCycleCallback;

    invoke-direct {v2}, Lcom/tencent/gcloud/msdk/core/dns/NetworkLifeCycleCallback;-><init>()V

    .line 203
    sget-object v3, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v3, p1}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    .line 204
    sget-object p1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {p1, v2}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    .line 207
    const-string p1, "MSDK_LIFECYCLE_SCHEME"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    new-instance p1, Lcom/tencent/gcloud/msdk/SchemeLifeCycleObserver;

    invoke-direct {p1}, Lcom/tencent/gcloud/msdk/SchemeLifeCycleObserver;-><init>()V

    .line 210
    sget-object v1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v1, p1}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    .line 213
    :cond_3
    sput-boolean v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mIsPreRegisterLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static registerMSDKLifeCycle(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 69
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sput-object p0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    .line 73
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    sput-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    .line 77
    :cond_1
    const-string v0, "MSDK_LIFECYCLE_OBSERVERS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->preLifeCycleMonitor(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->initialize(Landroid/app/Activity;)V

    .line 83
    sget-object p0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 84
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->execOnCreate(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static releaseActivity()V
    .locals 3

    .line 92
    sget-object v0, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->mActivityLifeCycleCallback:Lcom/tencent/gcloud/msdk/core/lifecycle/ActivityLifeCycleCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v2, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->mActivityLifeCycleCallback:Lcom/tencent/gcloud/msdk/core/lifecycle/ActivityLifeCycleCallback;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    :cond_0
    sput-object v1, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->mActivityLifeCycleCallback:Lcom/tencent/gcloud/msdk/core/lifecycle/ActivityLifeCycleCallback;

    .line 100
    :cond_1
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 101
    sput-object v1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCached:Landroid/app/Activity;

    .line 103
    :cond_2
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCur:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 104
    sput-object v1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCur:Landroid/app/Activity;

    .line 106
    :cond_3
    sget-object v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-eqz v0, :cond_4

    .line 107
    sput-object v1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mLifeCycleManager:Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    :cond_4
    return-void
.end method

.method public static setActivityCur(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 118
    sput-object p0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->mActivityCur:Landroid/app/Activity;

    return-void
.end method
