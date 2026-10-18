.class public abstract Lcom/banalytics/ForegroundIntentService;
.super Landroid/app/IntentService;
.source "ForegroundIntentService.java"


# static fields
.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "seagroup.android.logger"

.field private static final NOTIFICATION_CHANNEL_DESCRIPTION:Ljava/lang/String; = "For logging purpose"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Logger"

.field private static final NOTIFICATION_CONTENT:Ljava/lang/String; = "Recording logs"

.field private static final NOTIFICATION_ID:I = 0xf423f

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "Logging"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 30
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 32
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/banalytics/ForegroundIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    const-string v1, "Logger"

    const/4 v2, 0x1

    const-string v3, "seagroup.android.logger"

    invoke-static {v3, v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 37
    const-string v2, "For logging purpose"

    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 38
    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 39
    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 40
    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    .line 41
    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 43
    invoke-static {p0, v3}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Logging"

    .line 44
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Recording logs"

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0xf423f

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/banalytics/ForegroundIntentService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
