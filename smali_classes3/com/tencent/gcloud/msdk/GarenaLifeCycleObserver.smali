.class public Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;
.super Ljava/lang/Object;
.source "GarenaLifeCycleObserver.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;
.implements Lcom/tencent/gcloud/msdk/core/interfaces/IWakeup;


# static fields
.field public static final GARENA_GAME_CALLBACK:I = 0x2

.field public static final GARENA_LOGIN_CALLBACK:I = 0x1

.field public static final PARAMS:Ljava/lang/String; = "params"

.field public static mActivityMessageQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyReceiveIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "Garena wakeup media_tag_name : "

    .line 132
    const-string v1, "notifyReceiveIntent start"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 135
    :try_start_0
    const-string v1, "com.garena.msdk.game_launch_bundle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    const-string v1, "com.garena.msdk.game_launch_media_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "com.garena.msdk.game_launch_open_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "com.garena.msdk.game_launch_open_id_source"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", open_id : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromOpenid : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;-><init>()V

    .line 144
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->seqID:Ljava/lang/String;

    .line 146
    const-string v3, "Garena"

    iput-object v3, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->channel:Ljava/lang/String;

    const/16 v3, 0xa

    .line 147
    iput v3, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->channelID:I

    .line 149
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 150
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "open_id"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "from_open_id"

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_1
    const-string p1, "platform"

    const-string v2, "0"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    const-string v2, "params"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v2, "game_data"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->extraJson:Ljava/lang/String;

    .line 165
    iget-object p1, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginPluginInfo;->seqID:Ljava/lang/String;

    const/16 v1, 0x6b

    invoke-static {v1, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string p1, "Garena notifyReceiveIntent is null "

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Garena notifyReceiveIntent json op error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x1232

    if-ne p1, v0, :cond_0

    .line 62
    invoke-static {p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->onActivityResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/beetalk/sdk/GGPlatform;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "MSDKPlatform not initialized !"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 71
    :goto_1
    sget-object v1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 72
    sget-object v1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    .line 51
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy, mActivityMessageQueue.size() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    :goto_0
    sget-object v1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
