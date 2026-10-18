.class public Lcom/perfsight/apm/apm/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/perfsight/apm/apm/a;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:J


# instance fields
.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private volatile f:Z

.field private volatile g:Z

.field private h:Ljava/util/concurrent/Semaphore;

.field private i:Ljava/util/concurrent/Semaphore;

.field private j:Ljava/util/concurrent/Semaphore;

.field private volatile k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private volatile u:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/perfsight/apm/apm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perfsight/apm/apm/q;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/perfsight/apm/apm/q;->b:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perfsight/apm/apm/q;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->g:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->q:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->r:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->s:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->t:I

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->u:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/perfsight/apm/apm/q;->v:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getPssIntervals()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->l:I

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getBatteryIntervals()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->m:I

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getNetTrafficIntervals()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->n:I

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getOomMemFactorIntervals()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->o:I

    invoke-virtual {p2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->getFreshRateIntervals()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/apm/q;->p:I

    const-string v1, "QUALCOMM_GFX"

    invoke-virtual {p2, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/q;->u:Z

    const-string v1, "BATTERY_ENERGY"

    invoke-virtual {p2, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/q;->s:Z

    const-string v1, "BATTERY_SAVE_MODE"

    invoke-virtual {p2, v1}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perfsight/apm/apm/q;->q:Z

    iput-object p1, p0, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/perfsight/apm/apm/t;

    iget-object v2, p0, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/perfsight/apm/apm/t;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V

    iput-object v1, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    :cond_0
    iput-object p3, p0, Lcom/perfsight/apm/apm/q;->v:Ljava/lang/String;

    iget p3, p0, Lcom/perfsight/apm/apm/q;->l:I

    if-nez p3, :cond_1

    iget p3, p0, Lcom/perfsight/apm/apm/q;->m:I

    if-eqz p3, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->d:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->f:Z

    iput v0, p0, Lcom/perfsight/apm/apm/q;->k:I

    new-instance p3, Ljava/util/concurrent/Semaphore;

    invoke-direct {p3, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p3, p0, Lcom/perfsight/apm/apm/q;->h:Ljava/util/concurrent/Semaphore;

    new-instance p3, Ljava/util/concurrent/Semaphore;

    invoke-direct {p3, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p3, p0, Lcom/perfsight/apm/apm/q;->i:Ljava/util/concurrent/Semaphore;

    new-instance p3, Ljava/util/concurrent/Semaphore;

    invoke-direct {p3, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p3, p0, Lcom/perfsight/apm/apm/q;->j:Ljava/util/concurrent/Semaphore;

    :cond_2
    const-string p3, "LOCAL_SETTLE"

    invoke-virtual {p2, p3}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/perfsight/apm/apm/q;->r:Z

    if-eqz p2, :cond_3

    const-string p2, "local settlement enabled"

    goto :goto_0

    :cond_3
    const-string p2, "local settlement disabled"

    :goto_0
    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/perfsight/apm/apm/q;->t:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "failed to get Uid"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/q;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/perfsight/apm/apm/q;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfsight/apm/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postBatterySaveMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/t;->c()V

    :cond_1
    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/perfsight/apm/apm/p;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postNetworkState(IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->d:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/t;->a()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/perfsight/apm/apm/q;->u:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/q;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->d:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/q;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/perfsight/apm/apm/q;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfsight/apm/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postBatterySaveMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/t;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->f:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->g:Z

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->f:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/q;->g:Z

    return-void
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lcom/perfsight/apm/apm/q;->l:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/perfsight/apm/apm/q;->m:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/perfsight/apm/apm/q;->n:I

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "APM-Routine"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/q;->w:Lcom/perfsight/apm/apm/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/t;->onDestroy()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput v0, v1, Lcom/perfsight/apm/apm/q;->k:I

    new-instance v2, Lcom/perfsight/apm/apm/o$a;

    invoke-direct {v2}, Lcom/perfsight/apm/apm/o$a;-><init>()V

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v0, v1, Lcom/perfsight/apm/apm/q;->r:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getNativeFrames()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget v7, Lcom/perfsight/apm/apm/q;->b:I

    if-eqz v7, :cond_0

    if-le v0, v7, :cond_0

    sget-wide v8, Lcom/perfsight/apm/apm/q;->c:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    cmp-long v10, v5, v8

    if-lez v10, :cond_0

    sub-int v7, v0, v7

    int-to-float v7, v7

    sub-long v8, v5, v8

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    sget-object v8, Lcom/perfsight/apm/apm/q;->a:Ljava/util/List;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lcom/perfsight/apm/apm/q;->a:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_1
    sput v0, Lcom/perfsight/apm/apm/q;->b:I

    sput-wide v5, Lcom/perfsight/apm/apm/q;->c:J

    :cond_1
    :goto_2
    iget-boolean v0, v1, Lcom/perfsight/apm/apm/q;->f:Z

    if-nez v0, :cond_2

    const-string v0, "level is not mark, wait"

    :try_start_1
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "level is marked, wakeup"

    :try_start_2
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_2
    :goto_3
    iget-boolean v0, v1, Lcom/perfsight/apm/apm/q;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "Routine current state is background, wait"

    :try_start_3
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v0, "Routine current state wakwup"

    :try_start_4
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "acquire mFbSem "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_4
    iget-boolean v0, v1, Lcom/perfsight/apm/apm/q;->g:Z

    if-eqz v0, :cond_4

    const-string v0, "level is pause, wait"

    :try_start_5
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v0, "level is continue, wakeup"

    :try_start_6
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/perfsight/apm/apm/q;->h()V

    :cond_5
    iget v0, v1, Lcom/perfsight/apm/apm/q;->l:I

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/e;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/perfsight/apm/apm/q;->l:I

    rem-int v0, v2, v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    iget-boolean v4, v1, Lcom/perfsight/apm/apm/q;->u:Z

    invoke-static {v0, v4}, Lcom/perfsight/apm/apm/o;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/o$a;

    move-result-object v0

    iget v4, v0, Lcom/perfsight/apm/apm/o$a;->a:I

    iget v5, v0, Lcom/perfsight/apm/apm/o$a;->b:I

    iget v6, v0, Lcom/perfsight/apm/apm/o$a;->c:I

    iget v7, v0, Lcom/perfsight/apm/apm/o$a;->d:I

    invoke-static {v4, v5, v6, v7}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postPssValue(IIII)V

    iget v4, v0, Lcom/perfsight/apm/apm/o$a;->a:I

    iget v5, v1, Lcom/perfsight/apm/apm/q;->k:I

    if-le v4, v5, :cond_6

    iget v4, v0, Lcom/perfsight/apm/apm/o$a;->a:I

    iput v4, v1, Lcom/perfsight/apm/apm/q;->k:I

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PSS SZ: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/perfsight/apm/apm/o$a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_5

    :cond_7
    iget v0, v4, Lcom/perfsight/apm/apm/o$a;->a:I

    iget v5, v4, Lcom/perfsight/apm/apm/o$a;->b:I

    iget v6, v4, Lcom/perfsight/apm/apm/o$a;->c:I

    iget v7, v4, Lcom/perfsight/apm/apm/o$a;->d:I

    invoke-static {v0, v5, v6, v7}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postPssValue(IIII)V

    :cond_8
    :goto_5
    iget v0, v1, Lcom/perfsight/apm/apm/q;->m:I

    if-eqz v0, :cond_9

    rem-int v0, v2, v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/e;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;

    iget-boolean v5, v1, Lcom/perfsight/apm/apm/q;->s:Z

    invoke-static {v0, v5}, Lcom/perfsight/apm/d/a;->a(Landroid/content/Context;Z)V

    :cond_9
    iget v0, v1, Lcom/perfsight/apm/apm/q;->n:I

    if-eqz v0, :cond_b

    rem-int v0, v2, v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/e;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v0, v5, :cond_a

    iget v0, v1, Lcom/perfsight/apm/apm/q;->t:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    iget v0, v1, Lcom/perfsight/apm/apm/q;->t:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v9

    iget v0, v1, Lcom/perfsight/apm/apm/q;->t:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    iget v0, v1, Lcom/perfsight/apm/apm/q;->t:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v13

    const/4 v6, 0x1

    invoke-static/range {v6 .. v14}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postNetTraffic(IJJJJ)V

    :cond_a
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v16

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v18

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v20

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v22

    const/4 v15, 0x2

    invoke-static/range {v15 .. v23}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postNetTraffic(IJJJJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    const-string v0, "System error while get traffic stats"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_b
    :goto_6
    iget v0, v1, Lcom/perfsight/apm/apm/q;->o:I

    if-eqz v0, :cond_c

    rem-int v0, v2, v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/perfsight/apm/apm/o;->a()I

    move-result v0

    invoke-static {v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postOomMemFactor(I)V

    :cond_c
    iget v0, v1, Lcom/perfsight/apm/apm/q;->p:I

    if-eqz v0, :cond_e

    rem-int v0, v2, v0

    if-nez v0, :cond_d

    :try_start_8
    iget-object v0, v1, Lcom/perfsight/apm/apm/q;->e:Landroid/content/Context;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const-string/jumbo v5, "window"

    :try_start_9
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    float-to-int v3, v0

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_d
    :goto_7
    invoke-static {v3}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postFreshRate(I)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v5, 0x3e8

    :try_start_a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    nop

    goto/16 :goto_0
.end method
