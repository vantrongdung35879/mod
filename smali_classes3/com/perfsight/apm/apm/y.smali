.class public Lcom/perfsight/apm/apm/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/apm/y$a;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/hardware/display/DisplayManager;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/apm/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v0, p0, Lcom/perfsight/apm/apm/y;->d:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/y;->e:Z

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/y;->b:Z

    iput-object p1, p0, Lcom/perfsight/apm/apm/y;->c:Landroid/content/Context;

    const-string p1, "DISPLAY_LISTENER"

    invoke-virtual {p2, p1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perfsight/apm/apm/y;->e:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lcom/perfsight/apm/apm/x;

    invoke-direct {p1, p0}, Lcom/perfsight/apm/apm/x;-><init>(Lcom/perfsight/apm/apm/y;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p1, p0, Lcom/perfsight/apm/apm/y;->c:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "display"

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/perfsight/apm/apm/y;->d:Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/perfsight/apm/apm/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/apm/y;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfsight/apm/apm/y;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/perfsight/apm/apm/y;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/apm/y;->d:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/y;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/y;->b:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/apm/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/perfsight/apm/apm/y;->d:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method
