.class public Lcom/ihoc/mgpa/gradish/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String;

.field private static volatile h:Lcom/ihoc/mgpa/gradish/W;


# instance fields
.field private a:Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

.field private b:Ljava/lang/String;

.field private c:I

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_KeepAliveHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/W;->h:Lcom/ihoc/mgpa/gradish/W;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->b:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/ihoc/mgpa/gradish/W;->c:I

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->d:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/ihoc/mgpa/gradish/W$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/gradish/W$a;-><init>(Lcom/ihoc/mgpa/gradish/W;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->e:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lcom/ihoc/mgpa/gradish/W$b;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/gradish/W$b;-><init>(Lcom/ihoc/mgpa/gradish/W;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/W;)Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/W;->a:Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    return-object p0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/W;Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;)Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/W;->a:Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    return-object p1
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/W;
    .locals 2

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->h:Lcom/ihoc/mgpa/gradish/W;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/ihoc/mgpa/gradish/W;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/W;->h:Lcom/ihoc/mgpa/gradish/W;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/ihoc/mgpa/gradish/W;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/W;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/W;->h:Lcom/ihoc/mgpa/gradish/W;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->h:Lcom/ihoc/mgpa/gradish/W;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 22
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iput v0, p0, Lcom/ihoc/mgpa/gradish/W;->c:I

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updateIcon is not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isNullChar(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 32
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/W;->b:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/W;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/W;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 2
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->INSTANCE:Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundServiceUtil;->checkDataSyncTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    const-string v1, "[realUpdateNotification]: Foreground service timeout, don\'t start KeepAliveService"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    const-string/jumbo v2, "update_icon"

    iget v3, p0, Lcom/ihoc/mgpa/gradish/W;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    const-string/jumbo v2, "update_title"

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/W;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 12
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/W;->a:Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    if-nez v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/W;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v2}, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->isStartForeground()Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/W;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ihoc/mgpa/gradish/W;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ihoc/mgpa/gradish/W;->c:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 11
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v1, v1, Lcom/ihoc/mgpa/gradish/L$b;->j0:Z

    if-nez v1, :cond_0

    .line 12
    sget-object p1, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    const-string v0, "[startKeepAlive]: keep alive func is closed."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo p1, "title"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    const-string v2, "resId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/W;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/W;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->j0:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    const-string v1, "[startKeepAlive]: keep alive func is closed."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/W;->a:Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->stopForeground()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/W;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/W;->g:Ljava/lang/String;

    const-string v1, "[stopKeepAlive]: stop exception."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
