.class public Lcom/itop/gcloud/msdk/popup/MSDKPopup;
.super Ljava/lang/Object;
.source "MSDKPopup.java"


# static fields
.field private static configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager; = null

.field private static initLock:Ljava/lang/Object; = null

.field private static volatile isInited:Z = false

.field private static volatile isRequestedRemoteConfig:Z = false

.field private static popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

.field private static requestLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->initLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->requestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    return-object v0
.end method

.method public static havePopupWindow(Landroid/content/Context;I)Z
    .locals 2

    .line 72
    sget-boolean p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 73
    const-string p0, "MSDKPopup.init has not been executed!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0

    .line 76
    :cond_0
    sget-object p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getPopupConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    move-result-object p1

    .line 82
    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne p1, v1, :cond_2

    .line 83
    const-string p0, "sceneType is invalid"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0

    .line 86
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->getPopupsBySceneType(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 92
    sget-object v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-virtual {v1, p1, v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->shouldPopup(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 96
    :cond_5
    const-string/jumbo p0, "there are no valid dialogs"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0

    .line 88
    :cond_6
    :goto_0
    const-string p0, "sceneConfigs size is 0"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0

    .line 78
    :cond_7
    :goto_1
    const-string p0, "configSet is null or not initialized"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static havePopupWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 102
    sget-boolean p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 103
    const-string p0, "MSDKPopup.init has not been executed!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0

    .line 106
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    const-string p0, "MSDKPopup.havePopupWindow failed: scene is empty"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0

    .line 110
    :cond_1
    sget-object p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getPopupConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->getPopupByScene(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object p0

    .line 116
    sget-object p1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-virtual {p1, p0, v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->shouldPopup(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Z)Z

    move-result p0

    return p0

    .line 112
    :cond_3
    :goto_0
    const-string p0, "configSet is null or not initialized"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 27
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->initLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-boolean v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    .line 33
    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    .line 34
    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadPopupConfig()V

    .line 36
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 37
    sput-boolean p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestRemoteConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v0, :cond_0

    .line 45
    const-string p0, "MSDKPopup.init has not been executed!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    if-nez v0, :cond_1

    .line 49
    const-string p0, "configManager is null!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_1
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isRequestedRemoteConfig:Z

    if-eqz v0, :cond_2

    .line 53
    const-string p0, "requestRemoteConfig has been executed!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_2
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-boolean v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isRequestedRemoteConfig:Z

    if-nez v1, :cond_4

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 59
    sput-object p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriConstants;->HOST:Ljava/lang/String;

    .line 61
    :cond_3
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object p0

    .line 62
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gameID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->sdkKey:Ljava/lang/String;

    .line 64
    sget-object p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->startUpdateConfigSet()V

    const/4 p0, 0x1

    .line 65
    sput-boolean p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isRequestedRemoteConfig:Z

    .line 67
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLoginState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 224
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->popupManager:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v0

    .line 231
    iput p0, v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->channelID:I

    .line 232
    iput-object p1, v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gOpenID:Ljava/lang/String;

    .line 233
    iput-object p2, v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->token:Ljava/lang/String;

    .line 234
    iput-object p3, v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->jwtToken:Ljava/lang/String;

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 2

    .line 120
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v0, :cond_1

    .line 121
    const-string p0, "MSDKPopup.init has not been executed!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 123
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {p2, p1, p0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_3

    .line 128
    const-string p0, "MSDKPopup.show failed: activity is null"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 130
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {p2, p1, p0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 134
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    const-string p0, "MSDKPopup.show failed: scene is empty"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 137
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {p2, p1, p0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 141
    :cond_5
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getPopupConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 142
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->getPopupByScene(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object p1

    if-nez p1, :cond_8

    .line 151
    const-string p0, "config is null"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 153
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p1, "There are no popups to show!"

    invoke-interface {p2, p0, p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 158
    :cond_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopup$1;-><init>(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 143
    :cond_9
    :goto_0
    const-string p0, "configSet is null or not initialized"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 145
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p1, "There are no valid popups to show!"

    invoke-interface {p2, p0, p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static showDialogs(Landroid/app/Activity;ILcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 2

    .line 167
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->isInited:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 169
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p1, "MSDKPopup.init has not been executed!"

    invoke-interface {p2, p0, p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_3

    .line 176
    const-string p0, "MSDKPopup.show failed: activity is null"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 178
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {p2, p1, p0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 184
    :cond_3
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    move-result-object p1

    .line 185
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne p1, v0, :cond_5

    .line 186
    const-string p0, "MSDKPopup.show failed: sceneType is invalid"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 188
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {p2, p1, p0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 194
    :cond_5
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->configManager:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getPopupConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->getPopupsBySceneType(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_0

    .line 215
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 206
    :cond_8
    :goto_0
    const-string/jumbo p0, "there are no valid dialogs"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 208
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p1, "There are no popups to show!"

    invoke-interface {p2, p0, p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 196
    :cond_a
    :goto_1
    const-string p0, "configSet is null or not initialized"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 198
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p1, "There are no valid popups to show!"

    invoke-interface {p2, p0, p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
