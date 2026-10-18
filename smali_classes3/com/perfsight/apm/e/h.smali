.class public Lcom/perfsight/apm/e/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfsight/apm/e/g;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/e/g;-><init>(Lcom/perfsight/apm/e/h;)V

    iput-object v0, p0, Lcom/perfsight/apm/e/h;->a:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 2

    const-string v0, "process alive monitor msg"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v0, "PROCESS_ALIVE_MONITOR"

    invoke-virtual {p2, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "process alive monitor enabled"

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string p2, "enabled process alive monitor"

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/perfsight/apm/e/c;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/perfsight/apm/e/h;->a:Landroid/content/ServiceConnection;

    const/16 v1, 0x41

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/perfsight/apm/e/f;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/perfsight/apm/e/h;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p1, "end process alive monitor init"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "disabled process alive monitor"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
