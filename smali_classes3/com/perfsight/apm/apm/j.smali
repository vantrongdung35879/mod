.class public Lcom/perfsight/apm/apm/j;
.super Lcom/perfsight/apm/template/a;
.source ""


# static fields
.field private static l:J

.field private static m:Ljava/util/concurrent/Semaphore;

.field private static n:Z


# instance fields
.field private A:Lcom/perfsight/apm/d/c;

.field private B:Lcom/perfsight/apm/apm/v;

.field private C:Lcom/perfsight/apm/g/a;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:J

.field private H:J

.field private I:Lcom/perfsight/apm/e/h;

.field private J:J

.field private K:I

.field private L:Lcom/perfsight/apm/h/c;

.field private M:Lcom/perfsight/apm/apm/y;

.field private N:Ljava/lang/String;

.field private O:J

.field private P:Lcom/perfsight/apm/apm/a/a;

.field private Q:Z

.field private R:Lcom/perfsight/apm/apm/r;

.field private S:Lcom/perfsight/apm/apm/l;

.field private o:Ljava/lang/String;

.field private p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/perfsight/apm/c/i;

.field private x:Z

.field private y:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/perfsight/apm/apm/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/perfsight/apm/apm/j;->m:Ljava/util/concurrent/Semaphore;

    sput-boolean v1, Lcom/perfsight/apm/apm/j;->n:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfsight/apm/template/CCStrategyTemplate;Lcom/perfsight/apm/reporter/e;Lcom/perfsight/apm/portal/a;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/perfsight/apm/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfsight/apm/template/CCStrategyTemplate;Lcom/perfsight/apm/reporter/e;Lcom/perfsight/apm/portal/a;Lcom/perfsight/apm/utils/d;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const/16 p2, 0x7530

    iput p2, p0, Lcom/perfsight/apm/apm/j;->q:I

    iput p2, p0, Lcom/perfsight/apm/apm/j;->r:I

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->t:Z

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->u:Z

    iput p2, p0, Lcom/perfsight/apm/apm/j;->v:I

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->x:Z

    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->A:Lcom/perfsight/apm/d/c;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->B:Lcom/perfsight/apm/apm/v;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->D:Z

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->E:Z

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->F:Z

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/perfsight/apm/apm/j;->G:J

    iput-wide p3, p0, Lcom/perfsight/apm/apm/j;->H:J

    new-instance p5, Lcom/perfsight/apm/e/h;

    invoke-direct {p5}, Lcom/perfsight/apm/e/h;-><init>()V

    iput-object p5, p0, Lcom/perfsight/apm/apm/j;->I:Lcom/perfsight/apm/e/h;

    iput-wide p3, p0, Lcom/perfsight/apm/apm/j;->J:J

    iput p2, p0, Lcom/perfsight/apm/apm/j;->K:I

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->L:Lcom/perfsight/apm/h/c;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->M:Lcom/perfsight/apm/apm/y;

    const-string p5, ""

    iput-object p5, p0, Lcom/perfsight/apm/apm/j;->N:Ljava/lang/String;

    iput-wide p3, p0, Lcom/perfsight/apm/apm/j;->O:J

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->P:Lcom/perfsight/apm/apm/a/a;

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->R:Lcom/perfsight/apm/apm/r;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->S:Lcom/perfsight/apm/apm/l;

    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/apm/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/perfsight/apm/apm/j;)Lcom/perfsight/apm/portal/a;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    return-object p0
.end method

.method static synthetic c(Lcom/perfsight/apm/apm/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/apm/j;->N:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/perfsight/apm/apm/j;)Lcom/perfsight/apm/portal/a;
    .locals 0

    iget-object p0, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v1, "funcname: "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cc is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-boolean v3, p0, Lcom/perfsight/apm/apm/j;->D:Z

    if-nez v3, :cond_1

    const-string p1, "APM module inited failed"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0, p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " disabled by qcc"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/e;->d()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "APM module stop"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic m()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/apm/j;->m:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic n()J
    .locals 2

    sget-wide v0, Lcom/perfsight/apm/apm/j;->l:J

    return-wide v0
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Lcom/perfsight/apm/apm/j;->n:Z

    return v0
.end method

.method public static p()V
    .locals 5

    sget-wide v0, Lcom/perfsight/apm/apm/j;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/perfsight/apm/apm/j;->l:J

    new-instance v0, Lcom/perfsight/apm/apm/i;

    invoke-direct {v0}, Lcom/perfsight/apm/apm/i;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "APM-startUpFinishThread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perfsight/apm/utils/r;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/apm/j;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->SetCsDeviceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private r()Z
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "FEATURE_NETWORKING_MIN"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private s()V
    .locals 9

    const-string v0, " "

    const-string v1, "ExitReason "

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v3, "FEATURE_EXIT_INFO"

    invoke-virtual {v2, v3}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "activity"

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    iget-object v3, v3, Lcom/perfsight/apm/utils/d;->i:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/ApplicationExitInfo;)I

    move-result v4

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/perfsight/apm/apm/j;->F:Z

    if-nez v1, :cond_2

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "b563002ef4"

    const-string v2, "N/A"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8.3.9.2.3.3"

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/j;->F:Z

    :cond_2
    return-void
.end method

.method private u()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    iget-object v1, v1, Lcom/perfsight/apm/utils/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    iget v1, v1, Lcom/perfsight/apm/utils/d;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "apm_cfg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v2, "N/A"

    const-string v3, "apm_version_check"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    move-object v1, v2

    move v2, v4

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentVersion :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return v2
.end method

.method private v()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    const-string v1, "apm_user_name"

    const/4 v2, 0x0

    const-string v3, "apm_cfg"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "APM_HN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrive last login name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setOpenId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "tri_init"

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "perfsight"

    invoke-static {v0, v1}, Lcom/perfsight/apm/utils/e;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "checkDCLSByQcc"

    const-string v1, "DEF_DCLS"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/perfsight/apm/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "checkDCLSByString"

    const-string v1, "DEF_DCLS"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/perfsight/apm/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    iget-boolean p2, p0, Lcom/perfsight/apm/apm/j;->E:Z

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->t()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->E:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/perfsight/apm/c/i;

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/perfsight/apm/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V

    iput-object v0, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    :cond_1
    iget-object p1, p0, Lcom/perfsight/apm/template/a;->a:Lcom/perfsight/apm/template/CCStrategyTemplate;

    instance-of v0, p1, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/perfsight/apm/apm/j;->d()V

    :cond_3
    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->v()V

    iget-object p1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    invoke-static {p1, p3, v0, v1}, Lcom/perfsight/apm/reporter/RequestImp;->initOnce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V

    iget-object p1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/perfsight/apm/reporter/RequestCosImp;->initOnce(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/perfsight/apm/apm/f;

    invoke-direct {p3, p0}, Lcom/perfsight/apm/apm/f;-><init>(Lcom/perfsight/apm/apm/j;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->w()V

    iget-object p1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->nativeSetGfxInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NativeSetGfxInfo Error"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/perfsight/apm/utils/d;->e()Z

    move-result p1

    const/16 p3, 0x2713

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v0, "X86_OPEN_COLLECT"

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "x86 collection disabled by cc"

    :goto_1
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return p3

    :cond_5
    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->q()V

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v0, "LAUNCH_MSG"

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/perfsight/apm/apm/g;

    invoke-direct {p1, p0}, Lcom/perfsight/apm/apm/g;-><init>(Lcom/perfsight/apm/apm/j;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "APM-startupThread"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-virtual {p1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->checkModuleEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "disabled by CC Strategy, init failed"

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v0, "INIT"

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "init disabled by CC strategy, init failed"

    goto :goto_1

    :cond_8
    const-string p1, "APM SDK VERSION: 839"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfsight/apm/apm/j;->O:J

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->A:Lcom/perfsight/apm/d/c;

    if-nez p1, :cond_9

    new-instance p1, Lcom/perfsight/apm/d/c;

    invoke-direct {p1}, Lcom/perfsight/apm/d/c;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->A:Lcom/perfsight/apm/d/c;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/perfsight/apm/d/c;->a(Landroid/content/Context;)V

    :cond_9
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    if-nez p1, :cond_a

    new-instance p1, Lcom/perfsight/apm/apm/q;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->f:Lcom/perfsight/apm/utils/d;

    iget-object v1, v1, Lcom/perfsight/apm/utils/d;->f:Ljava/lang/String;

    invoke-direct {p1, p3, v0, v1}, Lcom/perfsight/apm/apm/q;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    :cond_a
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->B:Lcom/perfsight/apm/apm/v;

    if-nez p1, :cond_b

    new-instance p1, Lcom/perfsight/apm/apm/v;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-direct {p1, p3, v0}, Lcom/perfsight/apm/apm/v;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->B:Lcom/perfsight/apm/apm/v;

    :cond_b
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->L:Lcom/perfsight/apm/h/c;

    if-nez p1, :cond_c

    new-instance p1, Lcom/perfsight/apm/h/c;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-direct {p1, p3, v0}, Lcom/perfsight/apm/h/c;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->L:Lcom/perfsight/apm/h/c;

    :cond_c
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->M:Lcom/perfsight/apm/apm/y;

    if-nez p1, :cond_d

    new-instance p1, Lcom/perfsight/apm/apm/y;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-direct {p1, p3, v0}, Lcom/perfsight/apm/apm/y;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->M:Lcom/perfsight/apm/apm/y;

    :cond_d
    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->S:Lcom/perfsight/apm/apm/l;

    if-nez p1, :cond_e

    new-instance p1, Lcom/perfsight/apm/apm/l;

    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-direct {p1, p3, v0}, Lcom/perfsight/apm/apm/l;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->S:Lcom/perfsight/apm/apm/l;

    :cond_e
    invoke-static {}, Lcom/perfsight/apm/utils/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setGameActivity(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->A:Lcom/perfsight/apm/d/c;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->B:Lcom/perfsight/apm/apm/v;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->L:Lcom/perfsight/apm/h/c;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->M:Lcom/perfsight/apm/apm/y;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->S:Lcom/perfsight/apm/apm/l;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v0, "FEATURE_SCREEN_BRIGHTNESS"

    invoke-virtual {p3, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lcom/perfsight/apm/apm/r;

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/perfsight/apm/apm/r;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/perfsight/apm/apm/j;->R:Lcom/perfsight/apm/apm/r;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object p3, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/perfsight/apm/apm/n;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/q;->g()V

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->startNativeMonitoring()V

    const-string p1, "PerfSight INIT SUCCESSED"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/j;->D:Z

    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->u()Z

    move-result p1

    sput-boolean p1, Lcom/perfsight/apm/apm/j;->n:Z

    sget-object p1, Lcom/perfsight/apm/apm/j;->m:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->I:Lcom/perfsight/apm/e/h;

    iget-object p2, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    invoke-virtual {p1, p2, p3}, Lcom/perfsight/apm/e/h;->a(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->s()V

    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "MarkLevelLoad, Same scene name"

    return-object p1

    :pswitch_1
    const-string p1, "MarkLevelLoad, CC disabled"

    return-object p1

    :pswitch_2
    const-string p1, "MarkLevelLoad, SceneName is null"

    return-object p1

    :pswitch_3
    const-string p1, "MarkLevelLoad, context is null"

    return-object p1

    :pswitch_4
    const-string p1, "MarkLevelLoad, AppId is null"

    return-object p1

    :pswitch_5
    const-string p1, "MarkLevelloadCompleted, current level is loaded"

    return-object p1

    :pswitch_6
    const-string p1, "MarkLevelloadCompleted, no scene set"

    return-object p1

    :pswitch_7
    const-string p1, "MarkLevelLoadCompleted, apm disabled"

    return-object p1

    :pswitch_8
    const-string p1, "MarkLevelLoadCompleted, AppId is null"

    return-object p1

    :pswitch_9
    const-string p1, "MarkLevelFin, context is null"

    return-object p1

    :pswitch_a
    const-string p1, "MarkLevelFin, no scene set"

    return-object p1

    :pswitch_b
    const-string p1, "MarkLevelFin, apm disabled"

    return-object p1

    :pswitch_c
    const-string p1, "MarkLevelFin, appid is null"

    return-object p1

    :pswitch_d
    const-string p1, "InitContext, exception occurred"

    return-object p1

    :pswitch_e
    const-string p1, "InitContext, CC disabled"

    return-object p1

    :pswitch_f
    const-string p1, "InitContext, context is null"

    return-object p1

    :pswitch_10
    const-string p1, "InitContext, init more than once"

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x78
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x82
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(FFFFFF)V
    .locals 2

    const-string v0, "postCoordinates"

    const-string v1, "POST_TRACK_STATE"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postCoordinates(FFFFFF)V

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/perfsight/apm/apm/j;->v:I

    invoke-static {p1, p2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setQuality(II)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    const-string v0, "postDyeingEvent"

    const-string v1, "POST_EVENT"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    invoke-static {p1, p2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postEvent(ILjava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/perfsight/apm/apm/j;->G:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/perfsight/apm/apm/j;->H:J

    iget-wide v0, p0, Lcom/perfsight/apm/apm/j;->G:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->syncServerTime(JJI)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->D:Z

    if-nez v0, :cond_0

    const-string p1, "APM module inited failed"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->traceRoute(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "postStepEvent"

    const-string v2, "POST_STEP_EVENT"

    invoke-direct {p0, v1, v2}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/perfsight/apm/g/a;

    iget-object v2, v0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    invoke-direct {v1, v2, v3}, Lcom/perfsight/apm/g/a;-><init>(Landroid/content/Context;Lcom/perfsight/apm/portal/a;)V

    iput-object v1, v0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    :cond_1
    iget-object v4, v0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/perfsight/apm/g/a;->a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perfsight/apm/apm/j;->j()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "checkDCLSByQccSync"

    const-string v1, "DEF_DCLS"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->w:Lcom/perfsight/apm/c/i;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/perfsight/apm/c/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->L:Lcom/perfsight/apm/h/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfsight/apm/h/c;->c()V

    :cond_0
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

.method public c(I)V
    .locals 0

    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setDeviceClass(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "beginExtTag"

    const-string v1, "EXT_TAG_FUNC"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "beginExtTag error, there\'s no scene been marked"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_2

    const-string p1, "beginExtTag ERROR, scene is suspended"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "AddTag ERROR, TagName is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/perfsight/apm/apm/j;->r:I

    const/4 v1, 0x0

    const-string v2, ""

    const/16 v3, 0xf

    invoke-static {v0, v3, v1, p1, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beginExtTag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in Level "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {}, Lcom/perfsight/apm/utils/p;->a()V

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->enableDebugMode()V

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setTargetFramerate(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "beginTag"

    const-string v1, "TAG_FUNC"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    const-string p1, "AddTag ERROR, no current scene marked"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "beginTagError, no scene marked"

    invoke-static {v1, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_3

    const-string p1, "beginTag ERROR, scene is suspended"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "AddTag ERROR, TagName is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_6

    const-string p1, "AddTag ERROR, reaches max limit 8, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "AddTag ERROR, reaches max limit 8"

    invoke-static {v1, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AddTag ERROR, equals the last TagName : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/perfsight/apm/apm/j;->r:I

    const/16 v1, 0xb

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, p1, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeginTag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in Level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->D:Z

    if-nez v0, :cond_0

    const-string v0, "APM module inited failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->enableApmStepEvent()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "endExtTag"

    const-string v1, "EXT_TAG_FUNC"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "endExtTag error, there\'s no scene been marked"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_2

    const-string p1, "endExtTag ERROR, scene is suspended"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "endExtTag ERROR, TagName is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/perfsight/apm/apm/j;->r:I

    const/16 v1, 0x10

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, p1, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "endTag"

    invoke-static {v3, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public f()V
    .locals 6

    const-string v0, "TAG_FUNC"

    const-string v1, "endTag"

    invoke-direct {p0, v1, v0}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EndTag ERROR, there\'s no tag marked"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_3

    const-string v0, "EndTag ERROR, scene is suspended"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/perfsight/apm/apm/j;->r:I

    const/16 v3, 0xd

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v0, v4}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5, v1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "linkStepEventSession"

    const-string v1, "POST_STEP_EVENT"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/perfsight/apm/g/a;

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    invoke-direct {v0, v1, v2}, Lcom/perfsight/apm/g/a;-><init>(Landroid/content/Context;Lcom/perfsight/apm/portal/a;)V

    iput-object v0, p0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    :cond_1
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->C:Lcom/perfsight/apm/g/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/perfsight/apm/g/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "linkStepEventSession error, portal is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 8

    const-string v0, "markLevelLoad"

    const-string v1, "MARK_LEVEL_LOAD"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perfsight/apm/template/a;->e:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/portal/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perfsight/apm/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->q()V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->y:Ljava/util/Stack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    :cond_1
    iget-boolean v1, p0, Lcom/perfsight/apm/apm/j;->x:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/perfsight/apm/jni/TApmNativeHelper;->nativeSetGfxInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v1

    const-string v5, "qualcomm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->resetEnabledQualcommGfx(Z)V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    iget-object v4, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    const-string v5, "QUALCOMM_GFX"

    invoke-virtual {v4, v5}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/perfsight/apm/apm/q;->a(Z)V

    iput-boolean v2, p0, Lcom/perfsight/apm/apm/j;->x:Z

    :cond_3
    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/perfsight/apm/apm/j;->u:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarkLevelLoad: scene name is the same, sceneName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markLevelLoad repeated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", filtered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/perfsight/apm/apm/j;->O:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x66ff300

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    invoke-direct {p0}, Lcom/perfsight/apm/apm/j;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perfsight/apm/apm/j;->O:J

    const-string v1, "re-connect server info"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/perfsight/apm/apm/h;

    invoke-direct {v4, p0}, Lcom/perfsight/apm/apm/h;-><init>(Lcom/perfsight/apm/apm/j;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/perfsight/apm/apm/j;->j()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "markLevelLoad without markLevelFin: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , auto markLevelFin"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_6
    iput-boolean v3, p0, Lcom/perfsight/apm/apm/j;->u:Z

    iput-boolean v3, p0, Lcom/perfsight/apm/apm/j;->t:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    const-string p1, "A_DEF_NULL_"

    :cond_7
    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    iget v1, p0, Lcom/perfsight/apm/apm/j;->q:I

    iput v1, p0, Lcom/perfsight/apm/apm/j;->r:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/perfsight/apm/apm/j;->q:I

    invoke-static {}, Lcom/perfsight/apm/utils/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " main activity :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setGameActivity(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfsight/apm/apm/j;->r:I

    iget v4, p0, Lcom/perfsight/apm/apm/j;->v:I

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v4, p1, v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->p:Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    if-eqz v0, :cond_8

    const-string v1, "LOW_MEM_STATE_REPORT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->readLowMemInfoMmap()V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarkLevelLoad, Level : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/q;->c()V

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfsight/apm/apm/j;->J:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markLevelLoad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "markLevelContinue"

    const-string v1, "TAG_FUNC"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "markLevelContinue ERROR, no current scene marked"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/q;->d()V

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postPause(I)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/template/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "apm_cfg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->o:Ljava/lang/String;

    const-string v3, "apm_user_name"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setOpenId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public j()V
    .locals 5

    const-string v0, "markLevelFin"

    const-string v1, "MARK_LEVEL_FIN"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "markLevelFin, no scene marked"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/perfsight/apm/apm/j;->i()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/j;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/j;->t:Z

    iget v1, p0, Lcom/perfsight/apm/apm/j;->r:I

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, ""

    invoke-static {v1, v3, v0, v2, v4}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "markLevelFin, Level : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/perfsight/apm/apm/q;->e()V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markLevelFin, sceneName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "VersionName is NULL or is empty"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setRevisedVersion(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 5

    const-string v0, "markLevelLoadCompleted"

    const-string v1, "MARK_LEVEL_LOAD_COMPLETED"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_1

    const-string v0, "markLevelLoadCompleted ERROR, scene is suspended"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    const-string v0, "MarkLevelloadCompleted:  no current scene marked"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/perfsight/apm/apm/j;->t:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MarkLevelloadCompleted:  the current level is loaded, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/j;->t:Z

    iget v1, p0, Lcom/perfsight/apm/apm/j;->r:I

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lcom/perfsight/apm/jni/TApmNativeHelper;->levelControl(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perfsight/apm/apm/j;->J:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/perfsight/apm/apm/j;->K:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scene loaded time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perfsight/apm/apm/j;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarkLevelloadCompleted:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "markLevelPause"

    const-string v1, "TAG_FUNC"

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/apm/j;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/j;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "markLevelPause ERROR, no current scene marked"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/j;->Q:Z

    iget-object v1, p0, Lcom/perfsight/apm/apm/j;->z:Lcom/perfsight/apm/apm/q;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/q;->f()V

    :cond_3
    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postPause(I)V

    return-void
.end method
