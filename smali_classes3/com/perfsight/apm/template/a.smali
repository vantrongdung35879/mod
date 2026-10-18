.class public abstract Lcom/perfsight/apm/template/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lcom/perfsight/apm/template/CCStrategyTemplate;

.field protected b:Lcom/perfsight/apm/reporter/e;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/perfsight/apm/portal/a;

.field protected f:Lcom/perfsight/apm/utils/d;

.field protected g:Lcom/perfsight/apm/b/b;

.field protected h:Lcom/perfsight/apm/b/b;

.field protected i:Lcom/perfsight/apm/b/b;

.field protected j:Lcom/perfsight/apm/b/b;

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfsight/apm/template/CCStrategyTemplate;Lcom/perfsight/apm/reporter/e;Lcom/perfsight/apm/portal/a;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfsight/apm/template/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfsight/apm/template/a;->a:Lcom/perfsight/apm/template/CCStrategyTemplate;

    iput-object p4, p0, Lcom/perfsight/apm/template/a;->b:Lcom/perfsight/apm/reporter/e;

    iput-object p5, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    iput-object p6, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    new-instance p1, Lcom/perfsight/apm/b/a;

    const-string p2, "TApmOnMarkLevelLoad"

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/perfsight/apm/b/a;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->g:Lcom/perfsight/apm/b/b;

    new-instance p1, Lcom/perfsight/apm/b/a;

    const-string p2, "TApmOnSetQuality"

    invoke-direct {p1, p2, p3}, Lcom/perfsight/apm/b/a;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->h:Lcom/perfsight/apm/b/b;

    new-instance p1, Lcom/perfsight/apm/b/a;

    const-string p2, "TApmOnLog"

    invoke-direct {p1, p2, p3}, Lcom/perfsight/apm/b/a;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->i:Lcom/perfsight/apm/b/b;

    new-instance p1, Lcom/perfsight/apm/b/a;

    const-string p2, "TApmOnFpsNotify"

    invoke-direct {p1, p2, p3}, Lcom/perfsight/apm/b/a;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->j:Lcom/perfsight/apm/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(FFFFFF)V
    .locals 0

    return-void
.end method

.method public a(FIIIIIIIIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract d()V
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g()Lcom/perfsight/apm/template/CCStrategyTemplate;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->a:Lcom/perfsight/apm/template/CCStrategyTemplate;

    return-object v0
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public abstract i(Ljava/lang/String;)V
.end method

.method public abstract j()V
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method
