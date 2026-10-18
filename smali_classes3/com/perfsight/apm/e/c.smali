.class public Lcom/perfsight/apm/e/c;
.super Landroid/app/Service;
.source ""


# instance fields
.field a:Lcom/perfsight/apm/e/d$a;

.field private final b:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/perfsight/apm/e/a;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/e/a;-><init>(Lcom/perfsight/apm/e/c;)V

    iput-object v0, p0, Lcom/perfsight/apm/e/c;->a:Lcom/perfsight/apm/e/d$a;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/e/c;->b:Ljava/util/Random;

    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/e/c;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/e/c;->b:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "DaemonService -> onBind"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/e/c;->a:Lcom/perfsight/apm/e/d$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DaemonService -> onCreate, Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/perfsight/apm/e/b;

    invoke-direct {v0, p0, p0}, Lcom/perfsight/apm/e/b;-><init>(Lcom/perfsight/apm/e/c;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "DaemonService -> onDestroy"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const-string p1, "DaemonService -> onUnbind"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
