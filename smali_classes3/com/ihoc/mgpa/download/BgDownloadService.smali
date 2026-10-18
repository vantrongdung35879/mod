.class public Lcom/ihoc/mgpa/download/BgDownloadService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CHANNEL:Ljava/lang/String; = "game_download"

.field private static final NOTIFY_ID:I = 0x66

.field public static final STATE_ICON:Ljava/lang/String; = "update_icon"

.field public static final STATE_PROGRESS:Ljava/lang/String; = "update_progress"

.field public static final STATE_TITLE:Ljava/lang/String; = "update_title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsAppForeground:Z

.field private mIsCloseNotifyInFore:Z

.field private volatile mIsStartForeground:Z

.field private mNotificationIcon:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationProgress:I

.field private mNotificationTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BgDownloadService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/download/BgDownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationIcon:I

    .line 14
    iput v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    .line 15
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsCloseNotifyInFore:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsAppForeground:Z

    .line 17
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ihoc/mgpa/download/BgDownloadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ihoc/mgpa/download/BgDownloadService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/ihoc/mgpa/download/BgDownloadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareAndStartForeground()V

    return-void
.end method

.method static synthetic access$300(Lcom/ihoc/mgpa/download/BgDownloadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/ihoc/mgpa/download/BgDownloadService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z

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
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

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
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->safeStopForeground()V

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private prepareAndStartForeground()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 4
    const-string v1, "game_download"

    invoke-static {v1, v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    :cond_1
    const/16 v1, 0x66

    .line 14
    invoke-direct {p0, v1, v0}, Lcom/ihoc/mgpa/download/BgDownloadService;->safeStartForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private prepareNotification()Landroid/app/Notification;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "game_download"

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

    iget v4, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationIcon:I

    .line 12
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationTitle:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    const/4 v5, 0x0

    const/16 v6, 0x64

    .line 15
    invoke-virtual {v3, v6, v4, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 16
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->getGameCurrentActivity()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 18
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/high16 v3, 0x4000000

    .line 21
    invoke-static {p0, v5, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x8000000

    .line 24
    invoke-static {p0, v5, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 28
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2
    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    .line 31
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 33
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 35
    :catch_0
    sget-object v0, Lcom/ihoc/mgpa/download/BgDownloadService;->TAG:Ljava/lang/String;

    const-string v1, "prepare notification exception, ple try it again!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private safeStartForeground(ILandroid/app/Notification;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 5
    sget-object p1, Lcom/ihoc/mgpa/download/BgDownloadService;->TAG:Ljava/lang/String;

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
    iput-boolean v2, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z
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
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsStartForeground:Z

    :cond_0
    return-void
.end method

.method private showNotification(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-lt p1, v0, :cond_1

    iget p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-gt p1, v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsCloseNotifyInFore:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->updateNotification()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

    :goto_0
    return-void
.end method

.method private updateNotification()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hasNotificationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsAppForeground:Z

    .line 3
    iget v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v1, v1, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v1, v1, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/download/BgDownloadService;->showNotification(I)V

    :cond_0
    return-void
.end method

.method public onBecameForeground()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsAppForeground:Z

    .line 4
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsCloseNotifyInFore:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v1, v1, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;

    invoke-direct {p1, p0}, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;-><init>(Lcom/ihoc/mgpa/download/BgDownloadService;)V

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

    iput v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationIcon:I

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->V:Z

    iput-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mIsCloseNotifyInFore:Z

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareAndStartForeground()V

    .line 4
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->addListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->removeListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "onStartCommand mNotificationProgress: "

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->prepareAndStartForeground()V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    const-string/jumbo p3, "update_title"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationTitle:Ljava/lang/String;

    .line 5
    const-string/jumbo p3, "update_icon"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationIcon:I

    .line 6
    const-string/jumbo p3, "update_progress"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    .line 7
    sget-object p1, Lcom/ihoc/mgpa/download/BgDownloadService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService;->mNotificationProgress:I

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/download/BgDownloadService;->showNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/download/BgDownloadService;->TAG:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgDownloadService;->hideNotification()V

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
