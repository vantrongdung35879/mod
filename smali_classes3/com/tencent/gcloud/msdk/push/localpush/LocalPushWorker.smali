.class public Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;
.super Landroidx/work/Worker;
.source "LocalPushWorker.java"


# static fields
.field private static CHANNELID:Ljava/lang/String; = "MSDK-Firebase"

.field private static CHANNELIDSTR:Ljava/lang/String; = "MSDK-Firebase"

.field private static final LOCAL_PUSH_CHANNEL:Ljava/lang/String; = "LOCAL_PUSH_CHANNEL"

.field private static final LOCAL_PUSH_CHANNEL_ID:Ljava/lang/String; = "LOCAL_PUSH_CHANNEL_ID"

.field private static context:Landroid/content/Context;


# instance fields
.field private final ACTIVITY:Ljava/lang/String;

.field private final CONTENT:Ljava/lang/String;

.field private final CUSTOMCONTENT:Ljava/lang/String;

.field private final ICONID:Ljava/lang/String;

.field private final LIGHTS:Ljava/lang/String;

.field private final PUSHFLAG:Ljava/lang/String;

.field private final RINGRAWID:Ljava/lang/String;

.field private final SMALLICON:Ljava/lang/String;

.field private final TARGETACTIVITY:Ljava/lang/String;

.field private final TITLE:Ljava/lang/String;

.field private final VIBRATE:Ljava/lang/String;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "param"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 44
    const-string p2, "lights"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->LIGHTS:Ljava/lang/String;

    .line 45
    const-string/jumbo p2, "vibrate"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->VIBRATE:Ljava/lang/String;

    .line 46
    const-string/jumbo p2, "title"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->TITLE:Ljava/lang/String;

    .line 47
    const-string p2, "content"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CONTENT:Ljava/lang/String;

    .line 48
    const-string p2, "activity"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->ACTIVITY:Ljava/lang/String;

    .line 49
    const-string p2, "customContent"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CUSTOMCONTENT:Ljava/lang/String;

    .line 50
    const-string/jumbo p2, "targetActivity"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->TARGETACTIVITY:Ljava/lang/String;

    .line 51
    const-string p2, "pushFlag"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->PUSHFLAG:Ljava/lang/String;

    .line 52
    const-string p2, "iconId"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->ICONID:Ljava/lang/String;

    .line 53
    const-string p2, "smallIcon"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->SMALLICON:Ljava/lang/String;

    .line 54
    const-string p2, "ringRawId"

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->RINGRAWID:Ljava/lang/String;

    .line 59
    sget-object p2, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 60
    sput-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    .line 62
    :cond_0
    sget-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    const-string p2, "LOCAL_PUSH_CHANNEL"

    const-string v0, "MSDK-Firebase"

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CHANNELIDSTR:Ljava/lang/String;

    .line 63
    sget-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    const-string p2, "LOCAL_PUSH_CHANNEL_ID"

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CHANNELID:Ljava/lang/String;

    .line 64
    sget-object p1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private createChannel()V
    .locals 4

    .line 179
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CHANNELIDSTR:Ljava/lang/String;

    sget-object v1, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CHANNELID:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    invoke-static {v0, v1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "ringRawId"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createChannel exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defaultValue"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getMetaData exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method private handleLocalCallback(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 215
    const-string v0, "customContent"

    const-string v1, "activity"

    const-string/jumbo v2, "title"

    const-string v3, "content"

    .line 217
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleLocalCallback exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const-string v0, ""

    .line 226
    :goto_0
    new-instance v1, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;-><init>(I)V

    .line 227
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;->notification:Ljava/lang/String;

    .line 228
    iput p1, v1, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;->type:I

    const/16 p1, 0x206

    .line 229
    iput p1, v1, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;->methodNameID:I

    .line 230
    const-string/jumbo p1, "{}"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    iput-object v0, v1, Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;->extraJson:Ljava/lang/String;

    :cond_0
    const/16 p1, 0x1f6

    .line 235
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method private triggerNotification(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/gcloud/msdk/push/FirebasePushActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "targetActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/push/AppInfo;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/push/AppInfo;->isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 98
    :goto_0
    const-string v5, "appStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v5, "pushFlag"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    const-string v8, "content"

    invoke-virtual {v5, v8}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    const-string v5, "customContent"

    invoke-virtual {v2, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0xa000000

    const/4 v5, 0x0

    .line 107
    invoke-static {p1, v5, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 109
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 111
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 112
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 113
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget-object v8, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->CHANNELID:Ljava/lang/String;

    .line 115
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 116
    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string/jumbo v7, "vibrate"

    invoke-virtual {v0, v7, v6}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v7, "lights"

    invoke-virtual {v0, v7, v6}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    or-int/lit8 v3, v3, 0x4

    .line 125
    :cond_4
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v3, "smallIcon"

    invoke-virtual {v0, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v3, "iconId"

    invoke-virtual {v0, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    .line 139
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v0, v3, :cond_7

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 141
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    :goto_3
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_8

    .line 154
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    const-string v3, "ringRawId"

    invoke-virtual {p1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 155
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 156
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 160
    :cond_8
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 161
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_9

    .line 162
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->createChannel()V

    .line 165
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 168
    invoke-virtual {v0, v2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 170
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 171
    invoke-direct {p0, v1}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->handleLocalCallback(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 72
    :try_start_0
    sget-object v0, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/push/localpush/LocalPushWorker;->triggerNotification(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "triggerNotification exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
