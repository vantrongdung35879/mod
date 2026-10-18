.class public Lcom/perfsight/apm/apm/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/os/PowerManager$OnThermalStatusChangedListener;

.field private d:Landroid/os/PowerManager;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/t;->e:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/t;->a:Z

    iput-object p1, p0, Lcom/perfsight/apm/apm/t;->b:Landroid/content/Context;

    const-string p1, "THERMAL_STATUS_CHANGE"

    invoke-virtual {p2, p1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perfsight/apm/apm/t;->e:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/perfsight/apm/apm/t;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perfsight/apm/apm/t;->b:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/perfsight/apm/apm/t;->d:Landroid/os/PowerManager;

    if-nez p1, :cond_0

    const-string p1, "PowerManager get fail"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/perfsight/apm/apm/s;

    invoke-direct {p1, p0}, Lcom/perfsight/apm/apm/s;-><init>(Lcom/perfsight/apm/apm/t;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/t;->c:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    iget-object p2, p0, Lcom/perfsight/apm/apm/t;->d:Landroid/os/PowerManager;

    invoke-static {p2, p1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/apm/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfsight/apm/apm/t;->a:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/t;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/t;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/t;->a:Z

    invoke-virtual {p0}, Lcom/perfsight/apm/apm/t;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/t;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/apm/t;->d:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;)I

    move-result v0

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postThermalStatus(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/apm/t;->c:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/perfsight/apm/apm/t;->d:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    const-string v0, "PowerManager get fail"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/PowerManager;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    :cond_1
    return-void
.end method
