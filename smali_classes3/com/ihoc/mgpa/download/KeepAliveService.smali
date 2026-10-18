.class public Lcom/ihoc/mgpa/download/KeepAliveService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CHANNEL:Ljava/lang/String; = "game_keepAlive"

.field private static final NOTIFY_ID:I = 0x67

.field public static final STATE_ICON:Ljava/lang/String; = "update_icon"

.field public static final STATE_TITLE:Ljava/lang/String; = "update_title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mIsStartForeground:Z

.field private mNotificationIcon:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_KeepAliveService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/download/KeepAliveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationIcon:I

    .line 20
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/KeepAliveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ihoc/mgpa/download/KeepAliveService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ihoc/mgpa/download/KeepAliveService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationIcon:I

    return p1
.end method

.method static synthetic access$300(Lcom/ihoc/mgpa/download/KeepAliveService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareAndStartForeground()V

    return-void
.end method

.method static synthetic access$400(Lcom/ihoc/mgpa/download/KeepAliveService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->hideNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/ihoc/mgpa/download/KeepAliveService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z

    return p0
.end method

.method private getGameCurrentActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getLauncherActivity()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private hasNotificationPermission()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hideNotification()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->safeStopForeground()V

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private prepareAndStartForeground()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 4
    const-string v1, "game_keepAlive"

    invoke-static {v1, v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    :cond_1
    const/16 v1, 0x67

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/ihoc/mgpa/download/KeepAliveService;->safeStartForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private prepareNotification()Landroid/app/Notification;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "game_keepAlive"

    if-lt v0, v1, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m$3()V

    invoke-static {p0, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationIcon:I

    .line 12
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationTitle:Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 15
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->getGameCurrentActivity()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 17
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/high16 v3, 0x4000000

    .line 20
    invoke-static {p0, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x8000000

    .line 23
    invoke-static {p0, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 26
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2
    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    .line 29
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 31
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    sget-object v0, Lcom/ihoc/mgpa/download/KeepAliveService;->TAG:Ljava/lang/String;

    const-string v1, "prepare notification exception, ple try it again!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private safeStartForeground(ILandroid/app/Notification;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 5
    sget-object p1, Lcom/ihoc/mgpa/download/KeepAliveService;->TAG:Ljava/lang/String;

    const-string p2, "notification is null to skip startForeground."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 10
    invoke-static {p0, p1, p2, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Service;ILandroid/app/Notification;I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 14
    :goto_0
    iput-boolean v2, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private safeStopForeground()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mIsStartForeground:Z

    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->hasNotificationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    invoke-direct {p1, p0}, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;-><init>(Lcom/ihoc/mgpa/download/KeepAliveService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationIcon:I

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareAndStartForeground()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->hideNotification()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->prepareAndStartForeground()V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    const-string/jumbo p2, "update_title"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationTitle:Ljava/lang/String;

    .line 5
    const-string/jumbo p2, "update_icon"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService;->mNotificationIcon:I

    .line 6
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->updateNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    sget-object p1, Lcom/ihoc/mgpa/download/KeepAliveService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand create notification exception!"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/KeepAliveService;->hideNotification()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onTimeout(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onTimeout(II)V

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->INSTANCE:Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->handleServicesTimeout(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
