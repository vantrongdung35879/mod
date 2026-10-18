.class public Lcom/perfsight/apm/apm/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ComponentCallbacks2;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/apm/v;->b:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfsight/apm/apm/v;->d:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfsight/apm/apm/v;->a:Z

    const-string p1, "LOW_MEM_STATE_REPORT"

    invoke-virtual {p2, p1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/perfsight/apm/apm/u;

    invoke-direct {p1, p0}, Lcom/perfsight/apm/apm/u;-><init>(Lcom/perfsight/apm/apm/v;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/v;->c:Landroid/content/ComponentCallbacks2;

    iget-object p2, p0, Lcom/perfsight/apm/apm/v;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/apm/v;J)J
    .locals 0

    iput-wide p1, p0, Lcom/perfsight/apm/apm/v;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/perfsight/apm/apm/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfsight/apm/apm/v;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/perfsight/apm/apm/v;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfsight/apm/apm/v;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/v;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/v;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/v;->a:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/apm/v;->c:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/perfsight/apm/apm/v;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method
