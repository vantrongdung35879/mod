.class public Lcom/ihoc/mgpa/gradish/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private final e:I

.field private f:Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/content/ServiceConnection;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BgDownloadObserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->b:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/c;->d:J

    const/16 v0, -0x4b

    .line 8
    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->e:I

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->g:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/gradish/c$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/gradish/c$a;-><init>(Lcom/ihoc/mgpa/gradish/c;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->h:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lcom/ihoc/mgpa/gradish/c$b;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/gradish/c$b;-><init>(Lcom/ihoc/mgpa/gradish/c;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->i:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/c;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/c;)Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/c;->f:Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;

    return-object p0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/c;Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;)Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/c;->f:Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 21
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p1, v0

    .line 32
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iput p1, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/c;->d:J

    .line 35
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->g()Z

    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/c;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ihoc/mgpa/gradish/c;->j:Z

    return-void

    :catch_0
    move-exception p1

    .line 38
    sget-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BgPreDownloadUpdateNotification state_progress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 20
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 7
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->b:I

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updateIcon is not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_0
    iget p1, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-lt p1, v0, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-gt p1, v0, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->g()Z

    :cond_2
    return-void
.end method

.method private b(I)Z
    .locals 7

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ihoc/mgpa/gradish/c;->d:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/ihoc/mgpa/gradish/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    return p0
.end method

.method private c()V
    .locals 4

    .line 27
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->INSTANCE:Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->checkDataSyncTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    const-string v1, "[realUpdateNotification]: Foreground service timeout, don\'t start BgDownloadService"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string/jumbo v2, "update_progress"

    iget v3, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string/jumbo v2, "update_icon"

    iget v3, p0, Lcom/ihoc/mgpa/gradish/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string/jumbo v2, "update_title"

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 38
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/c;->f:Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;

    if-nez v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/c;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->isStartForeground()Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p1, v0

    .line 13
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/c;->j:Z

    if-eqz v0, :cond_1

    .line 15
    sget-object p1, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    const-string v0, "BgPreDownload is using Notification, pls wait! but you can change title, icon"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    .line 21
    iput p1, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ihoc/mgpa/gradish/c;->d:J

    .line 23
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->g()Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 26
    sget-object v0, Lcom/ihoc/mgpa/gradish/c;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateNotification state_progress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/ihoc/mgpa/gradish/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ihoc/mgpa/gradish/c;->b:I

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/c;->a:Ljava/lang/String;

    .line 6
    iget p1, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    iget v0, v0, Lcom/ihoc/mgpa/download/DownloadState;->state:I

    if-gt p1, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->g()Z

    :cond_1
    return-void
.end method

.method private d()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/DownloadState;->getState()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    sget-object v1, Lcom/ihoc/mgpa/download/DownloadState;->FINISH:Lcom/ihoc/mgpa/download/DownloadState;

    .line 9
    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/DownloadState;->getState()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->isForeground()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->V:Z

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method private g()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->c()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_PROGRESS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_TITLE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_ICON:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 9
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, -0x4b

    if-ne v0, p1, :cond_3

    .line 11
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/c;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3

    .line 13
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_PROGRESS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_TITLE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESOURCE_UPDATE_ICON:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .line 18
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->ERROR:Lcom/ihoc/mgpa/download/DownloadState;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/DownloadState;->getState()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    .line 19
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->c()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/DownloadState;->START:Lcom/ihoc/mgpa/download/DownloadState;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/DownloadState;->getState()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/c;->c:I

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/c;->a:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/c;->c()V

    return-void
.end method
