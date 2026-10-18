.class public Lcom/perfsight/apm/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/d/c;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/d/c;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/d/c;->c:Landroid/content/Context;

    new-instance v0, Lcom/perfsight/apm/d/b;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/d/b;-><init>(Lcom/perfsight/apm/d/c;)V

    iput-object v0, p0, Lcom/perfsight/apm/d/c;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/d/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfsight/apm/d/c;->b:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/d/c;->b:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/perfsight/apm/d/c;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/perfsight/apm/d/c;->c:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/perfsight/apm/d/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfsight/apm/d/c;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "register receiver"

    :try_start_3
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    const-string p1, "receiver already registered"

    :try_start_4
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register status receiver failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/d/c;->b:Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/d/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfsight/apm/d/c;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/perfsight/apm/d/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfsight/apm/d/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/perfsight/apm/d/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/d/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/d/c;->d:Landroid/content/BroadcastReceiver;
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

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfsight/apm/d/c;->c()V

    return-void
.end method
