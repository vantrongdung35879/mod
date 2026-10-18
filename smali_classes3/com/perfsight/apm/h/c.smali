.class public Lcom/perfsight/apm/h/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field c:Landroid/content/Context;

.field private final d:Landroid/net/wifi/WifiManager;

.field private e:J

.field private f:I

.field private g:Ljava/util/concurrent/ExecutorService;

.field h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/h/c;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/h/c;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/h/c;->c:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfsight/apm/h/c;->e:J

    new-instance v0, Lcom/perfsight/apm/h/a;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/h/a;-><init>(Lcom/perfsight/apm/h/c;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/h/c;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/perfsight/apm/h/b;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/h/b;-><init>(Lcom/perfsight/apm/h/c;)V

    iput-object v0, p0, Lcom/perfsight/apm/h/c;->h:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/perfsight/apm/h/c;->c:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/perfsight/apm/h/c;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getWifiScanInterval()I

    move-result p1

    iput p1, p0, Lcom/perfsight/apm/h/c;->f:I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfsight/apm/h/c;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/h/c;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/h/c;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/h/c;->a:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/h/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/perfsight/apm/h/c;->h:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregister error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
